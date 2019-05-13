package com.smile.amazon.mapper;

import com.smile.amazon.dto.TestBookReview;
import com.smile.amazon.model.Review;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/applicationContext-dao.xml"})
public class ReviewMapperTest {

    @Autowired
    private ReviewMapper reviewMapper;

    @Test
    public void testSelectReview(){
        Review review = reviewMapper.selectByPrimaryKey(7);
        System.out.println();
    }

    @Test
    public void testBookReview(){
        TestBookReview testBookReview = reviewMapper.getBookReview(1);
        System.out.println();
    }


}