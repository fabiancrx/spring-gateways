package cu.croxx.musalapp.gateway;

import cu.croxx.musalapp.exceptions.NotFoundException;
import cu.croxx.musalapp.exceptions.TooManyPeripheralsException;
import cu.croxx.musalapp.gateway.models.Peripheral;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class PeripheralService {
    public static final int maxNumberOfDevicesPerGateway = 10;
    private final PeripheralRepository peripheralRepository;
    private final GatewayRepository gatewayRepository;

    public Peripheral addPeripheralToGateway(long gatewayId, Peripheral peripheral) {

        var _gateway = gatewayRepository.findById(gatewayId);

        if (_gateway.isEmpty()) {
            throw new NotFoundException("Gateway with id " + gatewayId + " not found");
        }
        var gateway = _gateway.get();
        var currentPeripherals = gatewayRepository.countPeripherals(gatewayId);
        if (currentPeripherals >= maxNumberOfDevicesPerGateway) {
            throw new TooManyPeripheralsException("The Gateway '" + gateway.getName() + "' has the maximum amount of peripherals " + maxNumberOfDevicesPerGateway);
        }
        peripheral.setGateway(gateway);

        return peripheralRepository.save(peripheral);
    }

    public void delete(long peripheralId) {
        peripheralRepository.deleteById(peripheralId);
    }

    public void edit(long id, Peripheral peripheral) {
        var exists = peripheralRepository.existsById(id);
        if (!exists) throw new NotFoundException("Peripheral not found");
        peripheral.setId(id);
        peripheralRepository.save(peripheral);
    }

}
