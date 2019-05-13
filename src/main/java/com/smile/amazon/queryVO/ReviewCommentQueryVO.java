package com.smile.amazon.queryVO;

import com.smile.amazon.model.ReviewComment;

public class ReviewCommentQueryVO extends ReviewComment {

    private String userName;

    private String image;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
