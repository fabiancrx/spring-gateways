package cu.croxx.musalapp.gateway;

import cu.croxx.musalapp.exceptions.InvalidArgumentsException;
import cu.croxx.musalapp.exceptions.NotFoundException;
import cu.croxx.musalapp.gateway.models.Gateway;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Optional;

@Service
public class GatewayService {
    private final GatewayRepository gatewayRepository;

    @Autowired
    public GatewayService(GatewayRepository gatewayRepository) {
        this.gatewayRepository = gatewayRepository;
    }


    public Slice<Gateway> browse(Pageable pageable) {

        return gatewayRepository.findAll(pageable);
    }


    public Optional<Gateway> read(long id) {
        return gatewayRepository.findById(id);
    }

    @Transactional
    public void edit(long id, Gateway gateway) {
        var exists = gatewayRepository.existsById(id);

        if (!exists) throw new NotFoundException("Gateway not found");
        var hasSerialNumber = doesSerialNumberExists(gateway.getSerialNumber());

        if (hasSerialNumber) {
            throw new InvalidArgumentsException("Serial number already exists; please use a different serial number");
        }
        gateway.setId(id);

        gatewayRepository.save(gateway);

    }


    public Gateway add(Gateway gateway) {

        var hasSerialNumber = doesSerialNumberExists(gateway.getSerialNumber());

        if (hasSerialNumber) {
            throw new InvalidArgumentsException("Serial number already exists; please use a different serial number");
        }

        return gatewayRepository.save(gateway);
    }

    public void delete(long id) {
        try {
            gatewayRepository.deleteById(id);
        } catch (EmptyResultDataAccessException e) {

            throw new NotFoundException("Gateway not found");

        }
    }

    private boolean doesSerialNumberExists(String serialNumber) {
        return gatewayRepository.findGatewayBySerialNumber(serialNumber).isPresent();

    }
}
