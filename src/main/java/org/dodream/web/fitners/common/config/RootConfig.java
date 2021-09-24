package org.dodream.web.fitners.common.config;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.dodream.web.fitners.auction.config.AuctionRootConfig;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.TransactionManager;
import javax.sql.DataSource;

@Configuration
@Import(AuctionRootConfig.class)
public class RootConfig {

    @Bean

    public SqlSessionFactory sqlSessionFactory() throws Exception {
        SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
        sqlSessionFactoryBean.setDataSource(dataSource());

        return sqlSessionFactoryBean.getObject();
    }

    @Bean
    public DataSource dataSource() {
        HikariConfig config = new HikariConfig();
        config.setDriverClassName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
        config.setJdbcUrl("jdbc:log4jdbc:mysql://106.241.252.51:1524/dodream");
        config.setUsername("dodream");
        config.setPassword("dodream1");

        HikariDataSource dataSource = new HikariDataSource(config);

        return dataSource;
    }

    @Bean
    public TransactionManager transactionManager() {
        return new DataSourceTransactionManager(dataSource());
    }


}
