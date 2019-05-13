package com.smile.amazon.mapper;


import com.smile.amazon.dto.ShoppingcartDTO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/applicationContext-dao.xml"})
public class ShoppingcartMapperTest {

    @Autowired
    private ShoppingcartMapper shoppingcartMapper;

    @Test
    public void testSelectShoppingcartDTOByUserId(){
        ShoppingcartDTO shoppingcartDTO = shoppingcartMapper.selectShoppingcartDTOByUserId(0);
        System.out.println();
    }

}