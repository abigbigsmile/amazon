package com.smile.amazon.queryVO;

import com.smile.amazon.model.Comment;

public class CommentQueryVO extends Comment{

    private String userName;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
