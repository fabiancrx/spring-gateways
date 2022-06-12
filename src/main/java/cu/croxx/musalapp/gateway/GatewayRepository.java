package cu.croxx.musalapp.gateway;

import cu.croxx.musalapp.gateway.models.Gateway;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface GatewayRepository extends JpaRepository<Gateway, Long> {
    Optional<Gateway> findGatewayBySerialNumber(String serialNumber);
}
