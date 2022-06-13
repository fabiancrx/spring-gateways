package cu.croxx.musalapp.gateways;


import com.fasterxml.jackson.databind.ObjectMapper;
import cu.croxx.musalapp.exceptions.NotFoundException;
import cu.croxx.musalapp.gateway.GatewayController;
import cu.croxx.musalapp.gateway.GatewayService;
import cu.croxx.musalapp.gateway.models.Gateway;
import cu.croxx.musalapp.gateway.models.Peripheral;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.mockito.ArgumentCaptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpHeaders;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

import static org.hamcrest.Matchers.hasSize;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(controllers = GatewayController.class)
@ActiveProfiles("dev")
//@ContextConfiguration(classes = GatewayConfig.class)
public class GatewayControllerTest {
    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    private MockMvc mvc;
    @SuppressWarnings("SpringJavaInjectionPointsAutowiringInspection")
    @Autowired
    private ObjectMapper objectMapper;
    @MockBean
    private GatewayService gatewayService;


    @Test
    void evaluatesPageableParameter() throws Exception {
        mvc.perform(get("/gateways")
                        .param("page", "5")
                        .param("size", "10")
                ).andDo(print())
                .andExpect(status().isOk());

        ArgumentCaptor<Pageable> pageableCaptor =
                ArgumentCaptor.forClass(Pageable.class);
        verify(gatewayService).browse(pageableCaptor.capture());
        PageRequest pageable = (PageRequest) pageableCaptor.getValue();

        Assertions.assertEquals(5, pageable.getPageNumber());
        Assertions.assertEquals(10, pageable.getPageSize());
    }

    @Test
    void browseReturnsListWithOneItem() throws Exception {
        List<Gateway> gateways = List.of(new Gateway());
        var pagedResponse = new PageImpl<>(gateways);
        when(gatewayService.browse(any())).thenReturn(pagedResponse);


        mvc.perform(get("/gateways")
                        .contentType("application/json"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(MockMvcResultMatchers.jsonPath("$.content[*]").isArray())
                .andExpect(MockMvcResultMatchers.jsonPath("$.content[*]", hasSize(1)));
    }


    @Test
    void read() throws Exception {
        when(gatewayService.read(2)).thenReturn(Optional.empty());
        when(gatewayService.read(1)).thenReturn(Optional.of(new Gateway()));

        mvc.perform(get("/gateways/1")
                        .contentType("application/json"))
                .andDo(print())
                .andExpect(status().isOk());

        mvc.perform(get("/gateways/2")
                        .contentType("application/json"))
                .andDo(print())
                .andExpect(status().isNotFound());
    }

    @Test
    void editReturnsNotFound() throws Exception {
        doThrow(new NotFoundException("")).when(gatewayService).edit(anyLong(), any(Gateway.class));

        mvc.perform(get("/gateways/2")
                        .contentType("application/json"))
                .andDo(print())
                .andExpect(status().isNotFound());
    }

    @Test
    void addReturnsCreated() throws Exception {
        var gateway = new Gateway(7, "123", "mockName", "2.22.2.22");
        when(gatewayService.add(any(Gateway.class))).thenReturn(gateway);


        var mvcResult = mvc.perform(post("/gateways")
                        .contentType("application/json")
                        .content(objectMapper.writeValueAsString(gateway))
                )
                .andDo(print())
                .andExpect(status().isCreated()).andReturn();

        Assertions.assertTrue(Objects.requireNonNull(mvcResult.getResponse().getHeader(HttpHeaders.LOCATION))
                .contains("gateways/" + gateway.getId()));
    }

    @Test
    void deleteGatewayReturnsNotFound() throws Exception {
        doThrow(new NotFoundException("")).when(gatewayService).delete(anyLong());


        mvc.perform(delete("/gateways/7")
                        .contentType("application/json"))
                .andDo(print())
                .andExpect(status().isNotFound()).andReturn();


    }

    @Test
    void showsAssociatedPeripheralsOfAGateway() throws Exception {
        var gateway = new Gateway("123", "mockName", "2.22.2.22", List.of(new Peripheral(), new Peripheral()));
        when(gatewayService.read(anyLong())).thenReturn(Optional.of(gateway));


        mvc.perform(get("/gateways/7/peripherals")
                        .contentType("application/json"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(MockMvcResultMatchers.jsonPath("$[*]").isArray())
                .andExpect(MockMvcResultMatchers.jsonPath("$[*]", hasSize(2)));


    }

}



