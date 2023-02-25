package com.project.final_retoree.bean;

public class SearchVO {

  // 사용자가 선택한 페이지 정보를 담을 변수.
  private int pageNum;
  private int countPerPage;

  // 검색에 필요한 데이터를 변수로 선언.
  private String keyword;
  private String type;

  public SearchVO() {
    this.pageNum = 1;
    this.countPerPage = 10;
  }

  public int getPageNum() {
    return pageNum;
  }

  public void setPageNum(int pageNum) {
    this.pageNum = pageNum;
  }

  public int getCountPerPage() {
    return countPerPage;
  }

  public void setCountPerPage(int countPerPage) {
    this.countPerPage = countPerPage;
  }

  public String getKeyword() {
    return keyword;
  }

  public void setKeyword(String keyword) {
    this.keyword = keyword;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }
}
