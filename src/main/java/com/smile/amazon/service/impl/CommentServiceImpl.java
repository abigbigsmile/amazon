package com.smile.amazon.service.impl;

import com.smile.amazon.mapper.CommentMapper;
import com.smile.amazon.model.Comment;
import com.smile.amazon.service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service(value = "commentService")
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public void insert(Comment comment) {
        commentMapper.insert(comment);
    }
}
