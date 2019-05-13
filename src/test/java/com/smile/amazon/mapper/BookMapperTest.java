package com.smile.amazon.mapper;

import com.smile.amazon.dto.BookDetailDTO;
import com.smile.amazon.dto.BookReviewDTO;
import com.smile.amazon.model.Book;
import com.smile.amazon.model.Comment;
import com.smile.amazon.queryVO.CommentQueryVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/applicationContext-dao.xml"})
public class BookMapperTest {

    @Autowired
    private BookMapper bookMapper;

    @Autowired
    private CommentMapper commentMapper;

    @Test
    public void testSave(){
        for(int i=0; i<40; i++){
            Book book = new Book();
            book.setName("book_"+i);
            book.setAuthor("Smile_"+i);
            book.setCoverImage("img/3675.jpg");
            book.setType("科幻");
            book.setPublish("莞工");
            book.setPublishTime(new Date());
            book.setTranslator("translator_"+i);
            book.setIsbn(String.valueOf(3455+i*12));
            book.setPrice(2.88+i*1.3);
            book.setContentValidity("《海街日记》算是一部镰仓版的《小森林》，四姐妹守着镰仓的老房子，一起经历四季流转，在一个个食物场景下揉和进了生活中的温情瞬间。");
            book.setAuthorValidity("彼得·约翰·法拉利是一名美国男导演、编剧和制片人。他和弟弟巴比合称为法拉利兄弟，并时常制作古怪、略有冒犯性的喜剧及爱情喜剧电影；较著名的如《阿呆与阿瓜》、《我为玛丽狂》、《一个头两个大》、《庸人哈尔》与《七日之痒》。");
            bookMapper.insertSelective(book);
        }
    }

    @Test
    public void testBookList(){
        List<Book> bookList = bookMapper.bookList();
        System.out.println();
    }

    @Test
    public void testBookDetailDTO(){
        BookDetailDTO bookDetailDTO = bookMapper.bookDetailDTO(1);
        System.out.println();
    }

    @Test
    public void testBookReviewDTO(){
        BookReviewDTO bookReviewDTO = bookMapper.bookReviewDTO(9);
        System.out.println();
    }

    @Test
    public void testBookComment(){
        Comment comment = commentMapper.selectByPrimaryKey(11);
        System.out.println();
    }


}