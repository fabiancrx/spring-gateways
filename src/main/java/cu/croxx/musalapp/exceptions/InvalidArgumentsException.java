package cu.croxx.musalapp.exceptions;


import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

import java.util.Arrays;

@ResponseStatus(value = HttpStatus.BAD_REQUEST, reason = "Invalid argument")
public class InvalidArgumentsException extends RuntimeException {

    public InvalidArgumentsException(String... args) {


        super("Invalid argument(s): [" +
                Arrays.stream(args).map((e) -> e + "\n").reduce("", String::concat) +
                "]");
    }
}






