package cu.croxx.musalapp.gateway.validators;

import org.apache.commons.validator.routines.InetAddressValidator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class Ipv4AddressValidator implements ConstraintValidator<Ipv4Address, String> {

    @Override
    public boolean isValid(String value, ConstraintValidatorContext context) {

        return InetAddressValidator.getInstance().isValidInet4Address(value);
    }
}