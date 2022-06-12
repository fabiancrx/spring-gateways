package cu.croxx.musalapp.gateway;


import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Configuration
@Profile("dev")
public class GatewayConfig {
    @Bean
    CommandLineRunner commandLineRunner(GatewayRepository repository) {
        return args -> {
            var huawei = new Gateway(
                    "1234",
                    "Huawei P-S80",
                    "10.0.0.48"
            );
            repository.save(huawei);
        };

    }
}

