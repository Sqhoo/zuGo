<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.zugo.domain.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Single</title>
    <%@ include file="menu.txt"%>
	<style type="text/css">
		.carousel-inner img{
			width: 100%;

		}
		.carousel-indicators li .active{
			background-color: white;
		}
	</style>
</head>
<body>

<!---banner--->
		<div class="banner-section">
			<div class="container">
				<h2>详细信息</h2>
			</div>
		</div>
		<!---banner--->
		<div class="content">
			<div class="blog-section">
				<div class="container">
					<div class="blog-grids">
						<div class="col-md-9 blog-grid">
							<div class="blog">
								<h3>${house.house_name}</h3>
								<p>${house.publish_time} / <a href="#">${house.user_id}</a> / ${house.house_area}m<sup>2</sup> / ￥${house.house_rent} per month</p>
								<a href="single.jsp"><img src="/zugo/housepic/${housePics[0].pic_path}" class="img-responsive" alt=""/></a>
								<p>这座房子位于 ${house.house_province} ${house.house_city} ${house.house_detailaddr},${house.house_desc}</p>
							</div>
							<div class="history">
								<h4>More pictures</h4>
								<br><br>


								<div id="myCarousel" class="carousel slide" data-ride="carousel">
									<!-- 轮播（Carousel）指标 -->
									<ol class="carousel-indicators">
										<c:forEach varStatus="h" items="${housePics}" var="housepic">
											<li data-target="#myCarousel" data-slide-to="${h.index}"></li>
										</c:forEach>
									</ol>
									<!-- 轮播（Carousel）项目 -->
									<div class="carousel-inner">
										<c:forEach varStatus="h" items="${housePics}" var="housepic">
											<div class="item">
												<img src="/zugo/housepic/${housepic.pic_path}">
											</div>
										</c:forEach>
									</div>
									<!-- 轮播（Carousel）导航 -->
									<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
										<span class="icon-prev" aria-hidden="true"></span>
										<span class="sr-only">Previous</span>
									</a>
									<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
										<span class="icon-next" aria-hidden="true"></span>
										<span class="sr-only">Next</span>
									</a>
								</div>


							</div>
							<div class="clearfix"></div>
							<!---RESPONSES--->
							<div class="coment-form">
								<div class="container">
									<h3>Like this?</h3>

									<form style="width:720px;text-align: center" method="post" action="${pageContext.request.contextPath}/front/addrent">
										<%--<input type="text" value="Name " onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" required="">
										<input type="email" value="Email (will not be published)*" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email (will not be published)*';}" required="">
										<input type="text" value="Website" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Website';}" required="">
										<textarea type="text"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Comment...';}" required="">Your Comment...</textarea>--%>
										<input type="hidden" name="house_id" value="${house.house_id}">
										<label ><input type="checkbox" value="Consent Agreement" id="checkbox" onchange="check()">please agree Agreement</label><br><br>
										<input style="width: 170px" type="submit" value="Submit Comment" id="submit" onclick="return con()" disabled="disabled">
									</form>
								</div>
							</div>
						</div>
						<div class="col-md-3 blog-grid1">
							<%--<div class="categ">
							<h3>Categories</h3>
							<ul>
							<li><a href="#">Lorem ipsum dolor sit amet</a></li>
		  						<li><a href="#">Duis aute irure dolor in culpa</a></li>
		  						<li><a href="#">Sunt in culpa qui illum</a></li>
		  						<li><a href="#">vel illum qui dolorem man</a></li>
		  						<li><a href="#">The wise man therefore culpa</a></li>
		  						<li><a href="#">Sunt in culpa qui officia</a></li>
		  						<li><a href="#">Lorem ipsum dolor sit qui</a></li>
		  						<li><a href="#">Duis aute irure dolor</a></li>
		  						<li><a href="#">Sunt in culpa qui officia</a></li>

							</ul>
							</div>
							<div class="tags">
								<h4>Tags</h4>
								<ul>
									<li><a href="blog.html">Lorem</a></li>
									<li><a href="blog.html">consectetur</a></li>
									<li><a href="blog.html">dolore</a></li>
									<li><a href="blog.html">aliqua</a></li>
									<li><a href="blog.html">sit amet</a></li>
									<li><a href="blog.html">ipsum</a></li>
									<li><a href="blog.html">Lorem</a></li>
									<li><a href="blog.html">consectetur</a></li>
									<li><a href="blog.html">dolore</a></li>
									<li><a href="blog.html">aliqua</a></li>
									<li><a href="blog.html">sit amet</a></li>
									<li><a href="blog.html">ipsum</a></li>
								</ul>
							</div>--%>
							<div class="feature" style="position: relative;top:-55px">
								<h4>Featured Properties</h4>
								<c:forEach items="${housesWithPic}" var="houseWithPic">
									<div class="feature-top">
									<img src="/zugo/housepic/${houseWithPic.value[0].pic_path}" class="img-responsive" alt="/">
											<h5>${houseWithPic.key.house_name}</h5>
											<p>这座房子位于 ${houseWithPic.key.house_province} ${houseWithPic.key.house_city} ${houseWithPic.key.house_detailaddr},${houseWithPic.key.house_desc}
												<a href="${pageContext.request.contextPath}/front/token?houseId=${houseWithPic.key.house_id}">Know More</a></p>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
			<%@ include file="footer.txt"%>

</body>
<script type="text/javascript">
	$(function () {
		$("ol li:first").addClass('active');
		$(".carousel-inner div:first").addClass('active');
    });
    function check() {
		var check=document.getElementById("checkbox");
		if (check.checked){
            document.getElementById("submit").removeAttribute("disabled");
		}else {
            document.getElementById("submit").setAttribute("disabled","disabled");
		}
    }
    function con() {
        if(document.getElementById("show_name").innerHTML!==""){
            if(!confirm("确定要租这套房子吗？")){
                return false;
            }
        }else {
            document.getElementById("login").click();
            return false;
        }

    }
</script>
</html>
