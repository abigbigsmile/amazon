package com.smile.amazon.model;

import org.springframework.stereotype.Repository;

import java.util.Date;

@Repository
public class Book {
    private Integer bookId;

    private String name;

    private String author;

    private String coverImage;

    private String type;

    private String publish;

    private Date publishTime;

    private String translator;

    private String isbn;

    private Double price;

    private String contentValidity;

    private String authorValidity;

    public Integer getBookId() {
        return bookId;
    }

    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getCoverImage() {
        return coverImage;
    }

    public void setCoverImage(String coverImage) {
        this.coverImage = coverImage == null ? null : coverImage.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getPublish() {
        return publish;
    }

    public void setPublish(String publish) {
        this.publish = publish == null ? null : publish.trim();
    }

    public Date getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    public String getTranslator() {
        return translator;
    }

    public void setTranslator(String translator) {
        this.translator = translator == null ? null : translator.trim();
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn == null ? null : isbn.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

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