package cu.croxx.musalapp.gateway;

import cu.croxx.musalapp.gateway.models.Peripheral;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PeripheralRepository extends JpaRepository<Peripheral, Long> {
}
