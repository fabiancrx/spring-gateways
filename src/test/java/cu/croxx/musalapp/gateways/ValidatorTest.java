package cu.croxx.musalapp.gateways;

import cu.croxx.musalapp.gateway.validators.Ipv4AddressValidator;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

public class ValidatorTest {



    private final Ipv4AddressValidator ipv4AddressValidator = new Ipv4AddressValidator();

    // Thorough validation is not required as all the heavy lifting and edge cases are covered by a 3rd party library
    // We are just checking they are wired up correctly
    @ParameterizedTest
    @CsvSource({
            "10.0.0.1,true",
            "+44700000000088878, false",
            "26.5, false",
            "2001:0db8:85a3:0000:0000:8a2e:0370:7334, false",
            "127.0.0.1, true",
            "256.256.2, false"
    })
    void itShouldValidatePhoneNumber(String phoneNumber, boolean expected) {
        // When
        boolean isValid = ipv4AddressValidator.isValid(phoneNumber,null);

        // Then

        Assertions.assertEquals(isValid, expected);
    }


}
