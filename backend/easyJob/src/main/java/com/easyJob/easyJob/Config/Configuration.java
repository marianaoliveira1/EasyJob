package com.easyJob.easyJob.Config;


import org.modelmapper.ModelMapper;
import org.springframework.context.annotation.Bean;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

@org.springframework.context.annotation.Configuration
//@EnableWebMvc
class Configuration {

    @Bean
    public Docket greetingApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .select()
                .apis(RequestHandlerSelectors.any())
                .paths(PathSelectors.any())
                .build();

    }

//    @Bean
//    @Primary
//
//    public ObjectMapper objectMapper(){
//        JavaTimeModule module = new JavaTimeModule();
//        module.addSerializer(LOCAL_DATETIME_SERILAIZER);
//        return new ObjectMapper().registerModule(module);
//    }

    @Bean
    public ModelMapper modelMapper() {
        ModelMapper modelMapper = new ModelMapper();
        return modelMapper;
    }
}

