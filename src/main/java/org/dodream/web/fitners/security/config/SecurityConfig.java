package org.dodream.web.fitners.security.config;

import lombok.extern.log4j.Log4j2;
import org.dodream.web.fitners.security.handler.CustomAccessDenidedHandler;
import org.dodream.web.fitners.security.handler.CustomAuthenticationEntryPoint;
import org.dodream.web.fitners.security.handler.CustomLoginSuccessHandler;
import org.dodream.web.fitners.security.service.CustomUserDetailsService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.JdbcTokenRepositoryImpl;
import org.springframework.security.web.authentication.rememberme.PersistentTokenRepository;

import javax.sql.DataSource;

@Configuration
@EnableWebSecurity
@Log4j2
@MapperScan(basePackages = "org.dodream.web.fitners.security.mapper")
@ComponentScan(basePackages = "org.dodream.web.fitners.security.service")
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private CustomUserDetailsService customUserDetailsService;

    @Autowired
    private DataSource dataSource;

    //암호화
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    //토큰지속
    @Bean
    public PersistentTokenRepository persistentTokenRepository() {
        JdbcTokenRepositoryImpl repository = new JdbcTokenRepositoryImpl();
        repository.setDataSource(dataSource);
        return repository;
    }

    //접근불가시
    @Bean
    public CustomAccessDenidedHandler customAccessDenidedHandler() {
        return new CustomAccessDenidedHandler();
    }

    //권한점검
    @Bean
    public CustomAuthenticationEntryPoint customAuthenticationEntryPoint(){
        return new CustomAuthenticationEntryPoint();
    }

    //로그인성공시
    @Bean
    public CustomLoginSuccessHandler customLoginSuccessHandler() {
        return new CustomLoginSuccessHandler();
    }

    //customLogin접근코드
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/customLogin")
                .loginProcessingUrl("/login");

        http.csrf().disable();
        http.rememberMe().tokenRepository(persistentTokenRepository())
                .key("zerock").tokenValiditySeconds(60*60*24*30);

        http.exceptionHandling().authenticationEntryPoint(customAuthenticationEntryPoint());
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(customUserDetailsService);
    }
}
