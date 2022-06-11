package cu.croxx.musalapp.gateway;

import cu.croxx.musalapp.exceptions.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class GatewayService {
    private final GatewayRepository gatewayRepository;

    @Autowired
    public GatewayService(GatewayRepository gatewayRepository) {
        this.gatewayRepository = gatewayRepository;
    }


    public List<Gateway> browse() {
        return gatewayRepository.findAll();
    }


    public Optional<Gateway> read(long id) {
        return gatewayRepository.findById(id);
    }

    @Transactional
    public void edit(long id, Gateway gateway) {
        var exists = gatewayRepository.existsById(id);

        if (!exists) throw new NotFoundException("Gateway not found");

        gateway.setId(id);

        gatewayRepository.save(gateway);

    }


    public Gateway add(Gateway gateway) {

        var hasSerialNumber = doesSerialNumberExists(gateway.getSerialNumber());

        if (hasSerialNumber) {
            throw new NotFoundException("Serial number already exists; please use a different serial number");
        }

        return gatewayRepository.save(gateway);
    }

    public void delete(long id) {
        gatewayRepository.deleteById(id);
    }

    private boolean doesSerialNumberExists(String serialNumber) {
        return gatewayRepository.findGatewayBySerialNumber(serialNumber).isPresent();

    }
}
