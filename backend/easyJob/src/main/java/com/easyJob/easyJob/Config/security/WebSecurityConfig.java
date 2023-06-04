package com.easyJob.easyJob.Config.security;

import com.easyJob.easyJob.service.ALunoLogin;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

    private final ALunoLogin aLunoLogin;

    public WebSecurityConfig(ALunoLogin aLunoLogin) {
        this.aLunoLogin = aLunoLogin;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .httpBasic()
                .and()
                .authorizeHttpRequests()
//                .antMatchers(HttpMethod.GET, "/parking-spot/**").permitAll()
//                .antMatchers(HttpMethod.POST, "/parking-spot").hasRole("ALUNO")
//                .antMatchers(HttpMethod.DELETE, "/parking-spot/**").hasRole("ADMIN")
                .anyRequest().authenticated()
                .and()
                .csrf().disable();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(aLunoLogin)
                .passwordEncoder(passwordEncoder());

    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

}