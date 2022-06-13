package cu.croxx.musalapp.gateways;

import cu.croxx.musalapp.exceptions.NotFoundException;
import cu.croxx.musalapp.exceptions.TooManyPeripheralsException;
import cu.croxx.musalapp.gateway.GatewayRepository;
import cu.croxx.musalapp.gateway.GatewayService;
import cu.croxx.musalapp.gateway.PeripheralService;
import cu.croxx.musalapp.gateway.models.Gateway;
import cu.croxx.musalapp.gateway.models.Peripheral;
import cu.croxx.musalapp.gateway.models.Status;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Profile;
import org.springframework.test.annotation.DirtiesContext;

import javax.transaction.Transactional;

import static cu.croxx.musalapp.gateway.PeripheralService.maxNumberOfDevicesPerGateway;

@DirtiesContext(classMode = DirtiesContext.ClassMode.BEFORE_EACH_TEST_METHOD)
@SpringBootTest
@Profile("default")
public class PeripheralServiceTest {

    @Autowired
    GatewayRepository gatewayRepo;
    @Autowired
    GatewayService gatewayService;
    @Autowired
    PeripheralService peripheralService;


    @Test
    @Transactional
    public void addsPeripheralToGateway() {
//       Given
        var samplePeripheral = new Peripheral("Microsoft", Status.ONLINE);

//        When
        var insertedPeripheral = peripheralService.addPeripheralToGateway(1, samplePeripheral);

//        Then
        Assertions.assertEquals(1, insertedPeripheral.getGateway().getId());
    }

    @Test
    @Transactional
    public void errorWhenTryingToAddMorePeripheralsThanAllowed() {
//       Given
        var sampleGateway = new Gateway("sample", "TestName", "10.0.0.1");
        var insertedGateway = gatewayService.add(sampleGateway);
        for (int i = 0; i < 10; i++) {
            peripheralService.addPeripheralToGateway(insertedGateway.getId(), new Peripheral("Microsoft " + i, Status.ONLINE));
        }
//        When
        TooManyPeripheralsException thrown = Assertions.assertThrows(TooManyPeripheralsException.class,
                () -> peripheralService.addPeripheralToGateway(insertedGateway.getId(), new Peripheral("Apple", Status.OFFLINE)), "TooManyPeripheralsException");
//        Then
        Assertions.assertTrue(thrown.getMessage().contains(maxNumberOfDevicesPerGateway + ""));
    }

    @Test

    public void doesNotEditPeripheralWithMissingId() {
//       Given
        var peripheral =
                peripheralService.addPeripheralToGateway(1, new Peripheral("TestName"));
//        When
        NotFoundException thrown = Assertions.assertThrows(NotFoundException.class,
                () -> peripheralService.edit(peripheral.getId() + 1, new Peripheral()), "NotFoundException");
//        Then
        Assertions.assertTrue(thrown.getMessage().contains("Peripheral not found"));
    }

}
