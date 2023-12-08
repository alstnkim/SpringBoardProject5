package com.example.board;

public class BoardVO {
    private int seq;
    private String title;
    private String writer;
    private String content;
    private String category;

    public String getContent() { return content; }

    public String getCategory() { return category; }

    public int getSeq() {
        return seq;
    }

    public String getTitle() {
        return title;
    }

    public String getWriter() {
        return writer;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public void setContent(String content) { this.content = content; }

    public void setCategory(String category) { this.category = category; }
}
