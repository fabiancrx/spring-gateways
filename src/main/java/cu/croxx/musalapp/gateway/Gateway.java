package cu.croxx.musalapp.gateway;


import cu.croxx.musalapp.gateway.validators.Ipv4Address;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Getter
@Setter

@Entity
@Table
public class Gateway {

    @Id
    @SequenceGenerator(name = "gateway_seq", sequenceName = "gateway_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "gateway_seq")
    private long id;
    @NotBlank
    private String serialNumber;
    @NotBlank
    private String name;
    @Ipv4Address
    private String ipv4;
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



}

