package cu.croxx.musalapp.gateway.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import cu.croxx.musalapp.gateway.models.Gateway;
import cu.croxx.musalapp.gateway.models.Status;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.Date;

@Entity
@Table
@Getter
@Setter
public class Peripheral {
    @Id

    @SequenceGenerator(name = "peripheral_seq", sequenceName = "peripheral_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "peripheral_seq")
    private long id;
    @NotBlank
    private String vendor;
    @Enumerated(EnumType.STRING)
    @Column(length = 32, columnDefinition = "varchar(16) default 'OFFLINE'", nullable = false)
    private Status status = Status.OFFLINE;
    @Column(nullable = false, updatable = false)
    @CreationTimestamp
    private Date created;
    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    private Gateway gateway;

    public Peripheral(long uid, String vendor, Date created, Gateway gateway) {
        this.id = uid;
        this.vendor = vendor;
        this.created = created;
        this.gateway = gateway;
    }

    public Peripheral(String vendor, Status status) {
        this.vendor = vendor;
        this.status = status;
    }

    public Peripheral(String vendor) {
        this.vendor = vendor;
    }

    public Peripheral() {
    }


}


