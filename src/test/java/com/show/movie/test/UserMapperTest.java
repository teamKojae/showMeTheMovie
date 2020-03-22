package com.show.movie.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.show.movie.dao.UserDao;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class UserMapperTest {
		
	@Setter(onMethod_ = @Autowired)
	private UserDao userMapper;
	
	@Test
	public void testGet() {
		log.info(userMapper.getClass().getName());
		//log.info(userMapper.getUser());
	}
	
}
