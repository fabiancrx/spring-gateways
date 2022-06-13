package cu.croxx.musalapp.exceptions;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
public class AppExceptionResponse<T> {
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "dd-MM-yyyy hh:mm:ss")
    private final Date timestamp;
    private final String type;
    private final String details;
    private final T exception;

    public AppExceptionResponse(String type, String details, T exception) {
        this.timestamp= new Date();
        this.type = type;
        this.details = details;
        this.exception = exception;
    }
    public AppExceptionResponse(String type, String details) {
        this.timestamp= new Date();
        this.type = type;
        this.details = details;
        this.exception = null;
    }

}
