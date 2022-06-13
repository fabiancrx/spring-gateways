package cu.croxx.musalapp.gateways;

import cu.croxx.musalapp.exceptions.InvalidArgumentsException;
import cu.croxx.musalapp.exceptions.NotFoundException;
import cu.croxx.musalapp.gateway.GatewayService;
import cu.croxx.musalapp.gateway.models.Gateway;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.annotation.DirtiesContext;

@DirtiesContext(classMode = DirtiesContext.ClassMode.BEFORE_EACH_TEST_METHOD)
@SpringBootTest
public class GatewayServiceTests {

    @Autowired
    GatewayService service;


    @Test
    @DisplayName("Does not creates a new gateway if its serial number already exists")
    public void doesNotCreateGatewaysWithDuplicateSerialNumber() {
//       Given
        var sampleGateway = new Gateway("sample", "TestName", "10.0.0.1");
        service.add(sampleGateway);

//        When
        InvalidArgumentsException thrown = Assertions.assertThrows(InvalidArgumentsException.class,
                () -> service.add(sampleGateway), "InvalidArgumentsException");

//        Then
        Assertions.assertTrue(thrown.getMessage().contains("Serial number already exists"));
    }

    @Test
    @DisplayName("Does not edit gateway if it can't be found by id")
    public void doesNotEditGatewaysWithMissingId() {
//       Given
        var sampleGateway =
                service.add(new Gateway("sample", "TestName", "10.0.0.1"));
//        When
        NotFoundException thrown = Assertions.assertThrows(NotFoundException.class,
                () -> service.edit(sampleGateway.getId() + 1, new Gateway()), "NotFoundException");
//        Then
        Assertions.assertTrue(thrown.getMessage().contains("Gateway not found"));
    }

    @Test
    public void editsExistingGateway() {
//       Given
        var sampleGateway =
                service.add(new Gateway("sample", "TestName", "10.0.0.1"));
//        When
        var edited = new Gateway("sample-edited", "TestName-edited", "10.0.0.2");
        service.edit(sampleGateway.getId(), edited);

//        Then

        var gatewayOnDb = service.read(sampleGateway.getId());
        Assertions.assertTrue(service.read(sampleGateway.getId()).isPresent());

        //noinspection OptionalGetWithoutIsPresent
        Assertions.assertEquals(gatewayOnDb.get().getSerialNumber(), edited.getSerialNumber());
        Assertions.assertEquals(gatewayOnDb.get().getName(), edited.getName());
        Assertions.assertEquals(gatewayOnDb.get().getIpv4(), edited.getIpv4());
    }

    @Test
    public void doesNotDeleteGatewaysWithMissingId() {
        //       Given
        var sampleGateway =
                service.add(new Gateway("sample", "TestName", "10.0.0.1"));
//        When
        NotFoundException thrown = Assertions.assertThrows(NotFoundException.class,
                () -> service.delete(sampleGateway.getId() + 1), "NotFoundException");
//        Then
        Assertions.assertTrue(thrown.getMessage().contains("Gateway not found"));

    }

    @Test
    public void DeletesGatewaysThatExists() {
        //       Given
        var sampleGateway =
                service.add(new Gateway("sample", "TestName", "10.0.0.1"));
//        When
        service.delete(sampleGateway.getId());
//        Then
        Assertions.assertTrue(service.read(sampleGateway.getId()).isEmpty());

    }

}
