<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
    <head>

        <!-- /.website title -->
        <title>VTC Theme | FQA Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

        <meta charset="UTF-8" />
        <!-- CSS Files -->
        <link href="/sist/css/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="/sist/css/font-awesome.min.css" rel="stylesheet">
        <link href="/sist/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="/sist/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="/sist/css/animate.css" rel="stylesheet" media="screen">
        <link href="/sist/css/owl.theme.css" rel="stylesheet">
        <link href="/sist/css/owl.carousel.css" rel="stylesheet">
        <link href="/sist/css/bootstrap-datetimepicker.min.css" rel="stylesheet">

        <!-- Colors -->
        <!-- <link href="css/css-index-blue.css" rel="stylesheet" media="screen"> -->
        <!-- <link href="css/css-index-green.css" rel="stylesheet" media="screen"> -->
        <!-- <link href="css/css-index-purple.css" rel="stylesheet" media="screen"> -->
        <!-- <link href="css/css-index-red.css" rel="stylesheet" media="screen"> -->
        <!-- <link href="css/css-index-orange.css" rel="stylesheet" media="screen"> -->
        <link href="/sist/css/css-index-yellow.css" rel="stylesheet" media="screen"> 

        <!-- Google Fonts -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic" />

    </head>

    <body data-spy="scroll" data-target="#navbar-scroll">

        <!-- /.preloader -->
        <div id="preloader"></div>
        <div id="top"></div>

        <!-- /.parallax full screen background image -->
        <div class="fullscreen landing parallax blog-page" style="background-image:url('images/bg-baner.jpg');" data-img-width="2000" data-img-height="1333" data-diff="100">

            <div class="overlay">
                <div class="container">
                    <div class="col-md-10 col-md-offset-1 text-center">

                        <!-- /.logo -->
                        <div class="logo wow fadeInDown" style="margin-top: 50px"> 
                            <a href="index.jsp">Exhibition</a>
                        </div>

                        <!-- /.main title -->
                        <h2 class="wow fadeInUp" style="margin-bottom: 50px">
                           ?????????
                        </h2>

                    </div>
                </div> 
            </div> 
        </div>
        
        
            <!-- NAVIGATION -->
        <div id="menu">
               <div class="container"> 
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-backyard">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand site-name" href="index.jsp">Exhibition</a>
                    </div>

                    <div id="navbar-scroll" class="collapse navbar-collapse navbar-backyard navbar-right">
                        <ul class="nav navbar-nav">
                            <li><a href="list.jsp">?????? ?????? ??????</a></li>
                            <li><a href="loc.jsp">????????? ?????? ??????</a></li>
                            <li><a href="reservation.jsp">????????????</a></li>
                                    <li><a href="board.jsp">?????????</a></li>
                        
                        </ul>
                    </div>
                 </div>  
        </div>

        <!-- /.Cars section -->
        <div id="sign-in" style="margin-left: 30%">
            <div class="container">
                <div class="col-sm-6">
                    <div class="text-center">
                        <h2 class="wow fadeInLeft">?????????</h2>
                        <div class="title-line wow fadeInRight"></div>
                    </div>
                    <div class="row sign-in">

                        <form action="http://localhost/sist/user/login.do" method="post" >
                            <div class="form-group">
                                <label for="email">?????????</label>
                                <input class="form-control" type="text" id="userId" name="userId" value="">
                            </div>
                            <div class="form-group">
                                <label for="password">????????????</label>
                                <input class="form-control"  type="password" id="password" name="password" value="">
                            </div>
                            <div class="form-label-group">
                            <c:if test="${check==1 }">
                            <label>${message }</label>
                            </c:if>
                            </div>
                            <div class="text-center">
                              <input type="submit"  id="login-button" class="btn btn-warning btn-block btn-lg" value="?????????">  
                            </div>
                          
                           
                           
                            <div class="form-group">
                              
                                
                            </div>
                        </form>
                            <div>
                            	<a href="terms.do">????????????</a> 
                            	<a href="idfind.do" style="margin-left: 30%">????????? ??????</a> 
                            	<a href="passfind.jsp" style="float: right;">???????????? ??????</a>
                            </div>

                    </div>
                </div>
            
</div>
</div>

        
        
        <!-- /.footer -->
        <footer id="footer">
            <div class="footer-top">
                <div class="container">
                    <div class="">
                        <div class="col-md-4 col-sm-6">
                            <h4>?????? ??????</h4>
                            <p><strong>3???</strong>
                                <br>?????? ?????? :081) 123-1234  
                                <br>?????? ?????? ??????: AM 10:00~PM 05:00
                                <br>?????? ?????????: exhibition@naver.com
                            </p>
                            <hr class="hidden-md hidden-lg">
                        </div> 

                        
                        <!-- /.col-md-4 -->
                        
                        <div class="col-md-4 col-sm-6">
                            <h4>????????? ????????????</h4>
                            <div class="newsletter-box">
                                <div class="newsletter">  
                                    <div class="newsletter-content"> 
                                        <p>123-1234-1234</p>
                                    </div> 
                                    
                                    <div class="clear"> </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.col-md-4 -->

                    </div>
                    </div>
                    </div>
                    </footer>


        <!-- /.javascript files -->
        <script src="/sist/js/jquery.js"></script>
        <script src="/sist/js/bootstrap.min.js"></script>
        <script src="/sist/js/bootstrap-datetimepicker.min.js"></script>
        <script src="/sist/js/custom.js"></script>
        <script src="/sist/js/jquery.sticky.js"></script>
        <script src="/sist/js/wow.min.js"></script>
        <script src="/sist/js/owl.carousel.min.js"></script>
            <script src="/sist/js/jquery.validate.min.js"></script> 


<script type="text/javascript">
/* $(function(){
	$("#login-button").click(function(){
		var id=$("#userId").val();
		var pass=$("#password").val();
		
		if(userId==""){
			alert("???????????? ??????????????????.");
			return;
		}else if(pass==""){
			alert("??????????????? ??????????????????.");
			return;	
		}
		location.href="index.jsp";
		$("#frm").submit();
	});
}); */

		
	
		
	
})//click
</script>
        <script>
            new WOW().init();

        </script>

    </body>
</html>