package cu.croxx.musalapp.gateway.models;

import com.fasterxml.jackson.annotation.JsonInclude;
import cu.croxx.musalapp.gateway.validators.Ipv4Address;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.List;

@Getter
@Setter

@Entity
@Table
@Schema(description = "Master devices that control multiple peripheral devices")
public class Gateway {

    @Id
//    @GeneratedValue
    @SequenceGenerator(name = "gateway_seq", sequenceName = "gateway_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "gateway_seq")
    private long id;
    @NotBlank
    private String serialNumber;
    @NotBlank
    private String name;
    @Ipv4Address
    @Schema(description = "Must be a valid IPv4 address")
    private String ipv4;
    @Size(max = 10)
    @JsonInclude(JsonInclude.Include.NON_NULL)
    @OneToMany(mappedBy = "gateway", cascade = CascadeType.ALL, orphanRemoval = true, fetch = FetchType.LAZY)
    private List<Peripheral> peripherals;


    public Gateway() {
    }

    public Gateway(String serialNumber, String name, String ipv4) {
        this.serialNumber = serialNumber;
        this.name = name;
        this.ipv4 = ipv4;
    }

    public Gateway(long id, String serialNumber, String name, String ipv4) {
        this.id = id;
        this.serialNumber = serialNumber;
        this.name = name;
        this.ipv4 = ipv4;
    }

    public Gateway(String serialNumber, String name, String ipv4, List<Peripheral> peripherals) {

        this.serialNumber = serialNumber;
        this.name = name;
        this.ipv4 = ipv4;
        this.peripherals = peripherals;
    }

}


