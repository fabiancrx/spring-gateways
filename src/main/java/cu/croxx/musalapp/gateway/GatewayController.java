package cu.croxx.musalapp.gateway;

import cu.croxx.musalapp.exceptions.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.util.List;

@RestController
@RequestMapping("/gateways")

public class GatewayController {
    private final GatewayService gatewayService;


    @Autowired
    public GatewayController(GatewayService gatewayService) {
        this.gatewayService = gatewayService;
    }

    @GetMapping
    public List<Gateway> browse() {
        return gatewayService.browse();
    }


    @GetMapping("/{id}")
    public Gateway read(@PathVariable Long id) {

        var gateway = gatewayService.read(id);
        if (gateway.isPresent()) return gateway.get();
        throw new NotFoundException("Gateway with id " + id + " not found");
    }

    @PutMapping("/{id}")
    public ResponseEntity<Object> edit(@RequestBody Gateway gateway, @PathVariable Long id) {

        gatewayService.edit(id, gateway);

        return ResponseEntity.ok().build();
    }

    @PostMapping
    public ResponseEntity<Object> add(@Validated @RequestBody Gateway gateway) {
        var addedGateway = gatewayService.add(gateway);

        var createdURI = ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}").buildAndExpand(addedGateway.getId()).toUri();
        return ResponseEntity.created(createdURI).build();
    }


    @DeleteMapping("/{id}")
    public void delete(@PathVariable long id) {
        gatewayService.delete(id);
    }




}


