package cu.croxx.musalapp.gateway.validators;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

@Target({FIELD})
@Retention(RUNTIME)
@Constraint(validatedBy = Ipv4AddressValidator.class)
@Documented
public @interface Ipv4Address {

    String message() default "{Ipv4Address.invalid}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}


