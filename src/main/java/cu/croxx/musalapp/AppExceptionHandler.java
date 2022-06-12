package cu.croxx.musalapp;

import cu.croxx.musalapp.exceptions.AppExceptionResponse;
import cu.croxx.musalapp.exceptions.InvalidArgumentsException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
@RestController
public class AppExceptionHandler extends ResponseEntityExceptionHandler {


    @ExceptionHandler(EmptyResultDataAccessException.class)
    public ResponseEntity<Object> handle(EmptyResultDataAccessException ex,
                                         WebRequest request) {

        var exceptionResponse = new AppExceptionResponse(ex.getClass().getSimpleName() + " - " + ex.getMessage(), request.getDescription(false), ex.getMessage());


        return new ResponseEntity<>(exceptionResponse, HttpStatus.BAD_REQUEST);
    }

    @ExceptionHandler(InvalidArgumentsException.class)
    public final ResponseEntity<AppExceptionResponse> handleInvalidArguments(InvalidArgumentsException ex, WebRequest request) {

        var exceptionResponse = new AppExceptionResponse(ex.getClass().getSimpleName(), request.getDescription(false), ex.getMessage());

        return new ResponseEntity<>(exceptionResponse, HttpStatus.NOT_ACCEPTABLE);
    }

    @Override
    protected ResponseEntity<Object> handleMethodArgumentNotValid(
            MethodArgumentNotValidException ex, HttpHeaders headers, HttpStatus status, WebRequest request) {
        var exceptionResponse = new AppExceptionResponse(ex.getClass().getSimpleName(), ex.getBindingResult().toString(), "Validation failed");

        return new ResponseEntity<>(exceptionResponse, HttpStatus.BAD_REQUEST);
    }
}