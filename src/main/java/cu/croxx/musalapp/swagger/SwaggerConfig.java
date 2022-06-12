package cu.croxx.musalapp.swagger;

import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Configuration
@Profile("dev,prod")
public class SwaggerConfig {
    @Bean
    public OpenAPI springShopOpenAPI() {
        return new OpenAPI().info(new Info()
                .title("Gateways API")
                .description("Demo gateway")
                .version("v0.0.1")
                .contact(new Contact().name("Fabian Quintanar").email("croxx5d@proton.me")));
    }


}
