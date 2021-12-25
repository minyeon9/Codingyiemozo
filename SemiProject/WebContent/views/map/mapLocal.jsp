<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<jsp:include page="/views/common/header.jsp" />


<div class="container">
  <div class="contents">
    <h2 class="page-tit">${ localName }</h2>
    
    
	<div class="thumb-list">
        <h3>여행지</h3>
        <ul>
    		<c:forEach var="spot" items="${ spotList }" begin="0" end="4">
		       <li>
		         <a href="${ pageContext.request.contextPath }/spot/spotDetail">
		           <div class="img-thumb">
		             <img src="${ pageContext.request.contextPath }${ spot.imgPath }${ spot.no }.png" alt="">
		           </div>
		           <strong>${ spot.title }</strong>
		           <p>${ spot.content }</p>
		         </a>
		       </li>
      		</c:forEach>
   		</ul>
    </div>

    <div class="thumb-list">
            <h3>숙박</h3>
            <ul>
		      	<c:forEach var="stay" items="${ stayList }" begin="0" end="4">
			        <li>
			          <a href="">
			            <div class="img-thumb">
			              <img src="${ pageContext.request.contextPath }${ stay.imgPath }${ stay.no }.png" alt="">
			            </div>
			            <strong>${ stay.name }</strong>
			            <p>${ stay.content }</p>
			          </a>
			        </li>
		        </c:forEach>
      		</ul>
        </div>

        <div class="thumb-list">
            <h3>맛집</h3>
            <ul>
		      	<c:forEach var="rest" items="${ restList }" begin="0" end="4">
			        <li>
			          <a href="">
			            <div class="img-thumb">
			              <img src="${ pageContext.request.contextPath }${ rest.imgPath }${ rest.no }.png" alt="">
			            </div>
			            <strong>${ rest.name }</strong>
			            <p>${ rest.content }</p>
			          </a>
			        </li>
		        </c:forEach>
      		</ul>
        </div>

    <div class="thumb-list">
      <h3>여행 후기</h3>
      <ul>
        <li>
          <a href="#">
            <div class="img-thumb">
              <img src="${ pageContext.request.contextPath }/resources/images/spot/spot01.png" alt="">
            </div>
            <strong>닭머르 해안에서 일몰 즐기기</strong>
            <p>닭머르 해안은 어쩌고 저쩌고 시간에 가면 일몰을 볼 수 있어요. 블라블라.닭머르 해안은 어쩌고 저쩌고 시간에 가면 일몰을 볼 수 있어요. 블라블라.</p>
          </a>
        </li>
        <li>
          <a href="#">
            <div class="img-thumb">
              <img src="${ pageContext.request.contextPath }/resources/images/spot/spot01.png" alt="">
            </div>
            <strong>닭머르 해안에서 일몰 즐기기 닭머르 해안에서 일몰 즐기기</strong>
            <p>닭머르 해안은 어쩌고 저쩌고 시간에 가면 일몰을 볼 수 있어요. 블라블라.</p>
          </a>
        </li>
        <li>
          <a href="#">
            <div class="img-thumb">
              <img src="${ pageContext.request.contextPath }/resources/images/spot/spot01.png" alt="">
            </div>
            <strong>닭머르 해안에서 일몰 즐기기</strong>
            <p>닭머르 해안은 어쩌고 저쩌고 시간에 가면 일몰을 볼 수 있어요. 블라블라.</p>
          </a>
        </li>
        <li>
          <a href="#">
            <div class="img-thumb">
              <img src="${ pageContext.request.contextPath }/resources/images/spot/spot01.png" alt="">
            </div>
            <strong>닭머르 해안에서 일몰 즐기기</strong>
            <p>닭머르 해안은 어쩌고 저쩌고 시간에 가면 일몰을 볼 수 있어요. 블라블라.</p>
          </a>
        </li>
        <li>
          <a href="#">
            <div class="img-thumb">
              <img src="${ pageContext.request.contextPath }/resources/images/spot/spot01.png" alt="">
            </div>
            <strong>닭머르 해안에서 일몰 즐기기</strong>
            <p>닭머르 해안은 어쩌고 저쩌고 시간에 가면 일몰을 볼 수 있어요. 블라블라.</p>
          </a>
        </li>
      </ul>
      <button type="button" class="btn-more">더보기</button>
    </div>

  </div>
</div>


<jsp:include page="/views/common/footer.jsp" />