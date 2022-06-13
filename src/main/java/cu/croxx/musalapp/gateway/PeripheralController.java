package cu.croxx.musalapp.gateway;

import cu.croxx.musalapp.gateway.models.Peripheral;
import cu.croxx.musalapp.gateway.models.PeripheralUpdateModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

@RestController
@RequestMapping("/peripherals")
public class PeripheralController {
    private final PeripheralService peripheralService;


    @Autowired
    public PeripheralController(PeripheralService peripheralService) {
        this.peripheralService = peripheralService;

    }

    @PostMapping()
    public ResponseEntity<Object> add(@Validated @RequestBody PeripheralUpdateModel peripheral) {
        var addedPeripheral = peripheralService.addPeripheralToGateway(peripheral.getGatewayId(), peripheral);

        var createdURI = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(addedPeripheral.getId()).toUri();
        return ResponseEntity.created(createdURI).build();
    }

    @PutMapping("{id}")
    public ResponseEntity<Object> edit(@PathVariable Long id, @Validated @RequestBody Peripheral peripheral) {
        peripheralService.edit(id, peripheral);

        return ResponseEntity.ok().build();
    }

    @DeleteMapping("{id}")
    public ResponseEntity<Object> deletePeripheral(@PathVariable Long id) {
        peripheralService.delete(id);

        return ResponseEntity.ok().build();
    }
}
