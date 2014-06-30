<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%
	Collection list = (Collection) request.getAttribute("list");
	Object obj[] = list.toArray();
	GoodsBean agb = null;
%> --%>

<html>
<head>
<title>쇼핑몰</title>
<script type="text/javascript">
function goodsdelete(goods_num){
	document.goodsform.action="./GoodsDelete.ag?goods_num="+goods_num;
	document.goodsform.submit();	
}
function goodsmodify(goods_num){
	document.goodsform.action="./GoodsModify.ag?goods_num="+goods_num;
	document.goodsform.submit();	
}
</script>
</head>
<body>
<table width="960" cellspacing="0" cellpadding="0" border="0"
	color="gray" align="center">
	<tr>
		<td colspan=2>
		<!-- 상품 목록 -->
		<table border="0" width="80%">
			<tr>
				<td height="22" bgcolor="#6699FF">
					<p align="center">
						<font size=2>상품목록</font>
					</p>
				</td>
			</tr>
			<tr>
				<td>
				<p align="right">
					<font size=2>
						<a href="./GoodsAdd.ag">상품등록</a>
					</font>
				</p>
				</td>
			</tr>
			<tr>
			<td>
			<form name=goodsform method="post">
			<table border="1">
			<tr>
				<td width="50">
				<p align="center"><font size=2>번호</font></p>
				</td>
				<td width="141">
				<p align="center"><font size=2>카테고리</font></p>
				</td>
				<td width="100">
				<p align="center"><font size=2>사진</font></p>
				</td>
				<td width="141">
				<p align="center"><font size=2>상품명</font></p>
				</td>
				<td width="141">
				<p align="center"><font size=2>단가</font></p>
				</td>
				<td width="80">
				<p align="center"><font size=2>수량</font></p>
				</td>
				<td width="141">
				<p align="center"><font size=2>등록일자</font></p>
				</td>
				<td width="100">
				<p align="center"><font size=2>&nbsp;</font></p>
				</td>
			</tr>
			<c:if test="${!empty list}">
			<c:forEach var="g" items="${list}">
			
			
			</c:forEach>
			
<%-- 			<%
					for (int i = 0; i < list.size(); i++) {
					agb = (GoodsBean) obj[i];
			%> --%>
			<tr>
			
			
			<td>
			<p align="center">
				<%-- <font size=2><%=agb.getGOODS_NUM()%></font>--%>
				${g.goods_num}
			</p>
			</td>
			<td>
			<p align="center">
				<font size=2>
				${g.goods_category}
				</font>
			</p>
			</td>
			<td>
			<p align="center"><img src="./upload/${g.goods_image.split(",")[0]" width="50" height="50" border="0"></p>
			</td>
			<td>
			<p align="center">
			   ${g.goods_name}
			</p>
			</td>
			<td>
			<p align="center">
				${g.goods_price}
			</p>
			</td>
			<td>
			<p align="center">
			   ${g.goods_amount}
			</p>
			</td>
			<td>
			<p align="center">
				<font size=2>
				${g.goods_date}
				</font>
			</p>
			</td>
			<td>
			<p align="center">
			<a href="javascript:goodsmodify(${g.goods_num});">
				<font size=2>수정</font>
			</a>/
			<a href="javascript:goodsdelete(${g.goods_num});">
				<font size=2>삭제</font>
			</a>
			</p>
			</td>
			</tr>

				}
			</table>
			</td>
			</tr>
			</c:if>
			</form>
		</table>
		<!-- 상품 목록 -->
		</td>
	</tr>
</table>
</body>
</html>