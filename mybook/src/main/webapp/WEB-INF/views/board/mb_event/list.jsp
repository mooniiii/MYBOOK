<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	<!--  jstl -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	<!-- date -->

<%@ include file="/WEB-INF/views/includes/header.jsp" %>
<link rel="stylesheet" href="/resources/css/list.css" type="text/css">

    <div class="board">
                <h2><a href="/board/mb_event/list">EVENT</a></h2>
                <input type="hidden" name="board_name" value="ev">
                    
				<c:choose>
					<c:when test="${aaaa.id==null}">
	                </c:when>
	                <c:otherwise>
						<div class="registerBtn">
                        	<button><a href="/board/mb_event/register">글쓰기</a></button>
                    	</div>
					</c:otherwise>
				</c:choose>

                    <div class="boardList">
                        <div class="boardListIn">
                            <h3>No.</h3>
                            <h3>제목</h3>
                            <h3>작성자</h3>
                            <h3>작성일</h3>
                            <h3>조회수</h3>
                        </div> <!--.boardListIn-->
                        <ul>
                        	<c:forEach var="boardlist" items="${list}">
	                            <li>
	                                <p class="bno">${boardlist.bno}</p>
	                                <p class="title"><a href="/board/mb_event/read?bno=${boardlist.bno}">${boardlist.title}</a>[${boardlist.replyCnt}]</p>
	                                <p class="writer"><a href="#">${boardlist.id}</a></p>
	                                <p class="date"><fmt:formatDate value="${boardlist.regdate}" pattern="yyyy/MM/dd"/></p>
	                                <p class="hit">${boardlist.hit}</p>
	                                <input type="hidden" value="${boardlist.content}">
	                            </li>
                            </c:forEach>
                        </ul>
                    </div> <!--.boardList-->
                    
                    <div class="search">
						<div class="searchIn">
							<form id="searchForm" action="/board/mb_event/list" method="get">
								<select name="type">						<!-- jsp의 name과 Criteria의 병수명이 일치하면 알아서 정보를 수집한다. -->
									<option value="" <c:out value="${pageMaker.cri.type==null?'selected':''}" />>--</option>
									<option value="T" <c:out value="${pageMaker.cri.type=='T'?'selected':''}" />>제목</option>
									<option value="C" <c:out value="${pageMaker.cri.type=='C'?'selected':''}" />>내용</option>
									<option value="W" <c:out value="${pageMaker.cri.type=='W'?'selected':''}" />>작성자</option>
									<%-- <option value="TC" <c:out value="${pageMaker.cri.type=='TC'?'selected':''}" />>제목+내용</option>
									<option value="TW" <c:out value="${pageMaker.cri.type=='TW'?'selected':''}" />>제목+작성자</option>
									<option value="TWC" <c:out value="${pageMaker.cri.type=='TWC'?'selected':''}" />>제목+작성자+내용</option> --%>
								</select>
								<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
								<input type="hidden" name="amount" value="${pageMaker.cri.amount}">	
								<input type="text" name="keyword" value="${pageMaker.cri.keyword}" class="keyword">		<!-- input type="button"은 form의 action을 실행함 -->
								<button class="btn btn-primary">검색</button>		<!-- button은 form의 action을 실행하지 않음 -> 자바스크립트 써야 함 -->
								<!-- <input type="submit"> -->
							</form> <!-- #searchForm -->
						</div> <!-- .searchIn -->
					</div> <!-- .search -->
                    
                    <div class="pager">
                            <ul>
                            	<c:if test="${pageMaker.prev}">
                            		<li><a href="/board/mb_event/list?pageNum=${pageMaker.startPage - 1}&amount=${pageMaker.cri.amount}" class="prev"></a></li>
                            	</c:if>
                            	<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	                                <li class="${pageMaker.cri.pageNum==num?'active':''}">
	                                	<a href="/board/mb_event/list?pageNum=${num}&amount=${pageMaker.cri.amount}">${num}</a>
	                                </li>
                                </c:forEach>
                                <c:if test="${pageMaker.next}">
                                	<li><a href="/board/mb_event/list?pageNum=${pageMaker.endPage + 1}&amount=${pageMaker.cri.amount}" class="next"></a></li>
                                </c:if>
                            </ul>
                    </div> <!--.Pager-->
            </div> <!--.board-->
        </div><!-- #container -->
    
	<%@ include file="/WEB-INF/views/includes/footer.jsp" %>