package cu.croxx.musalapp.gateways;


import cu.croxx.musalapp.gateway.Gateway;
import cu.croxx.musalapp.gateway.GatewayRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;

import static org.junit.jupiter.api.Assertions.assertEquals;


@DataJpaTest
public class GatewayRepositoryTests {

    @Autowired
    GatewayRepository repo;

    @Test
    public void doesNotFindGatewayBySerialNumberIfItDoesNotExists() {
//       Given
        repo.save(new Gateway("sample1", "TestName 1", "10.0.0.1"));
        repo.save(new Gateway("sample2", "TestName 2", "10.0.0.2"));

//        When
        var isSampleSerialNumberPresent = repo.findGatewayBySerialNumber("sample").isPresent();

//        Then
        Assertions.assertFalse(isSampleSerialNumberPresent);

    }

    @Test
    public void findsGatewayBySerialNumberIfItExists() {
//       Given
        var sampleGateway = new Gateway("sample", "TestName", "10.0.0.1");
        repo.save(sampleGateway);

//        When
        var isSampleSerialNumberPresent = repo.findGatewayBySerialNumber("sample");

//        Then
        Assertions.assertTrue(isSampleSerialNumberPresent.isPresent());
        assertEquals(isSampleSerialNumberPresent.get(), sampleGateway);
    }

}