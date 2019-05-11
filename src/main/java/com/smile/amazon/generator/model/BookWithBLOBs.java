package com.smile.amazon.generator.model;

public class BookWithBLOBs extends Book {
    private String contentValidity;

    private String authorValidity;

    public String getContentValidity() {
        return contentValidity;
    }

    public void setContentValidity(String contentValidity) {
        this.contentValidity = contentValidity == null ? null : contentValidity.trim();
    }

    public String getAuthorValidity() {
        return authorValidity;
    }

    public void setAuthorValidity(String authorValidity) {
        this.authorValidity = authorValidity == null ? null : authorValidity.trim();
    }
}