package cu.croxx.musalapp;

import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@Tag(name = "Status", description = "Check if the API is online")
public class MusalApplication {
	@GetMapping("/status")
	public String status() {
		return "online";
	}
	public static void main(String[] args) {
		SpringApplication.run(MusalApplication.class, args);
	}

}
