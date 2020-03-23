package com.show.movie.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.show.movie.dao.UserDao;
import com.show.movie.model.User;

import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/resources/config/mybatis-contextxml.xml")
@Log4j
public class UserMapperTest {
		
	
	@Autowired(required = false)
	UserDao userDao;
	
	@Test
	public void testGet() {
		log.info("getTime");
		User user = new User();
		log.info("userGet TIME : "+userDao.getUser("49022295"));
		//log.info(userMapper.getUser());
	}
	
}
