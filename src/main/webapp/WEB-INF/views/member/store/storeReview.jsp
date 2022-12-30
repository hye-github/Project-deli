<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="storeReview">
    <%@ include file="/WEB-INF/views/member/store/storeHeader.jsp" %>

    <div class="fieldBox" style="margin-bottom: -10px;">
        <div id="menu"><a onclick="loadCode1();" style="float: left; cursor: pointer;">메뉴</a></div>
        <div id="info"><a onclick="loadCode2();" style="float: left; cursor: pointer;" id="to_info">정보</a></div>
        <div id="review"><a onclick="loadCode3();" style="font-weight: bold; font-size: 1.15em; float: left; cursor: pointer;">리뷰</a></div>
    </div>

    <script>
        function loadCode1() {
            $('.container').load('/store/menu/menu/${storeInfoDTO.store_seq}');
        }

        function loadCode2() {
            $('.container').load('/store/info/${storeInfoDTO.store_seq}');
        }

        function loadCode3() {
            $('.container').load('/store/review/${storeInfoDTO.store_seq}');
        }
    </script>

    <hr style="margin-top: 10px; margin-bottom: 5px;">
    <div class="reviews">
        <c:choose>
            <c:when test="${not empty storeReviewList}">
                <c:forEach var="reviews" items="${storeReviewList}">
                    <div class="review_box">
                        <div class="review_header">
                            <div id="nickname">${reviews.mem_nick} <span class="storeEtc"> <i
                                    class="fa-solid fa-star"></i> ${reviews.rev_star}</span></div>
                                <%--                            <fmt:parseDate value="${reviews.rev_writedate}" var="registered"--%>
                                <%--                                           pattern="yyyy-MM-dd HH:mm:ss"/>--%>
                                <%--                            <fmt:formatDate value="${registered}" pattern="yyyy년 MM월 dd일 a h:mm"/>--%>
                            <div id="writeDate"><%--작성일자 : --%>
                                <fmt:parseDate value="${reviews.rev_writedate}"
                                               var="registered"
                                               pattern="yyyy-MM-dd HH:mm:ss"/>
                                <fmt:formatDate value="${registered}" pattern="yyyy.MM.dd"/></div>
                        </div>
                            <%--<div id="reviewStar">별점 : ${reviews.rev_star}</div>--%>
                            <%--임시--%>
                            <%--                            <img src="/resources/img/review/84eae9ab-6e0d-4172-936c-e8d23c3b84ac_다운로드.jpg" style="width: 250px; height: 150px; margin-left: 20px;">--%>
                            <%--                            <img src="/resources/img/review/1bbefed6-5039-4683-9af7-6bfe7950ead5_ifsp.png" style="width: 250px; height: 150px;">--%>

                        <c:choose>
                            <c:when test="${not empty reviews.rev_sysname}">
                                <c:forEach var="reviewImg" items="${reviews.rev_sysname}">
                                    <div id="reviewImgs" style="width: 15px;">
                                        <img src="/resources/img/review/${reviewImg}"
                                             style="width: 250px; height: 150px; margin-left: 20px;">
                                    </div>
                                </c:forEach>
                            </c:when>
                        </c:choose>
                        <c:choose>
                            <c:when test="${not empty reviews.rev_content}">
                                <div id="r_content">${reviews.rev_content}</div>
                            </c:when>
                        </c:choose>
                    </div>
                    <c:choose>
                        <c:when test="${not empty reviews.menu_list}">
                            <%--                                <c:forEach var="i" items="${reviews.menu_list}">--%>
                            <%--                                    <div>메뉴명 : ${i}</div>--%>
                            <div class="filter_box">
                                <div style="margin: 0 auto" class="d-inline-flex">
                                    <c:forEach var="i" items="${reviews.menu_list}">
                                        <div class="filter" style="margin-right: 7px">${i}</div>
                                        <div class="filter" style="margin-right: 7px">돼지ddddddddddddddd국밥</div>
                                        <div class="filter" style="margin-right: 7px">sdfffffffffff</div>
                                        <div class="filter" style="margin-right: 7px">sdffffffff</div>
                                    </c:forEach>
                                </div>
                            </div>
                            <%--                                </c:forEach>--%>
                        </c:when>
                    </c:choose>
                    <br>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <div style="text-align: center; margin-top: 50px; font-size: 20px;">리뷰가 없어요</div>
            </c:otherwise>
        </c:choose>
        <script src="/resources/js/member/store/storeReview.js"></script>
    </div>
</div>