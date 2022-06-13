package cu.croxx.musalapp.gateway;

import cu.croxx.musalapp.gateway.models.Gateway;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface GatewayRepository extends JpaRepository<Gateway, Long> {
    Optional<Gateway> findGatewayBySerialNumber(String serialNumber);

    @Query("select count(p) from Gateway u join u.peripherals p where u.id = ?1")
    long countPeripherals(long id);

    // select all columns except columnNotToSelect


    @Query("SELECT new cu.croxx.musalapp.gateway.models.Gateway(e.id ,e.serialNumber , e.name ,  e.ipv4) FROM Gateway e")
//    @Query("SELECT e.id ,e.serialNumber , e.name ,  e.ipv4   FROM Gateway e ")
    Page<Gateway> findAllWithoutPeripherals(Pageable page);
}
