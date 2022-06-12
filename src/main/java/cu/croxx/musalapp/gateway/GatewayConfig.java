package cu.croxx.musalapp.gateway;


import cu.croxx.musalapp.gateway.models.Gateway;
import cu.croxx.musalapp.gateway.models.Peripheral;
import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.data.web.config.EnableSpringDataWebSupport;

@Configuration
@Profile("dev")
@EnableSpringDataWebSupport
public class GatewayConfig {
    @Bean
    CommandLineRunner commandLineRunner(GatewayService service,PeripheralService ps) {
        return args -> {
            var huawei = new Gateway(
                    "1234",
                    "Huawei P-S80",
                    "10.0.0.48"
            );
            var gw=service.add(huawei);
            ps.addPeripheralToGateway(gw.getId(),new Peripheral("Microsoft"));
            ps.addPeripheralToGateway(gw.getId(),new Peripheral("Apple"));

        };

    }
}

