<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <!-- /.website title -->
        <title>VTC Theme | Register Page</title>
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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#next").click(function(){
		check();
		$("#frm").submit();
	});//click
	$("#find_addr").click(function(){
		new daum.Postcode({
		    oncomplete: function(data) {
		    	 var addr = ''; // ?????? ??????
	                var extraAddr = ''; // ???????????? ??????

	                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
	                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
	                    addr = data.roadAddress;
	                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
	                    addr = data.jibunAddress;
	                }

	                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
	                if(data.userSelectedType === 'R'){
	                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
	                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
	                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // ???????????? ??????, ??????????????? ?????? ????????????.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // ????????? ??????????????? ?????? ????????? ?????????.
	                    document.getElementById("address1").value = extraAddr;
	                
	                } else {
	                    document.getElementById("address1").value = '';
	                }

	                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
	                document.getElementById('address1').value = data.zonecode;
	                document.getElementById("address1").value = addr;
	                // ????????? ???????????? ????????? ????????????.
	                document.getElementById("address2").focus();
		    }
		}).open();
	});
	
	$("#idCheck").click(function(){
		window.open("emailCheck.jsp","emailCheck","width=500px, height=300px ");
	});
});
function check() {
	var check=["userId","password",'password2','name','address1','address2'];
	var name=["?????????","????????????","????????????","??????","??????","??????"];
for(var i=0; i<check.length;i++){
	if($("#"+check[i]).val() ==""){
		alert(name[i]+"???/??? ??????????????????");
		return;
	}//end if 
}//end for
if($("#password").val() != $("#password2").val()){
	alert("??????????????? ????????????.");
	return;
}//end if
	//location.href="registerSucess.jsp";
	//?????? ?????? ??????????????? location???????????? 
	 $("#pFrm").submit();//submit?????? ???????????????.
}//end check

</script>

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
                            ????????????
                        </h2>

                    </div>
                </div> 
            </div> 
        </div>
        
        
             <!-- NAVIGATION -->
        <div id="menu">
               <div class="container""> 
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
<div id="sign-in" style="margin-left: 30%">
            <div class="container">
      
                <div class="col-sm-6"  >
                    <div class="text-center">
                        <h2 class="wow fadeInLeft">Register</h2>
                        <div class="title-line wow fadeInRight"></div>
                    </div>
                    <div class="row register">
						
                        <form action="http://localhost/sist/user/register.do" method="post" name="pFrm"  id="pFrm">
                            <div class="form-group">
                                <label for="email-login">?????????</label>
                                <input class="form-control" id="userId" type="text" name="userId"   value="">
                                <input type="button" id="checkmail" class="btn btn-warning btn-block btn-lg" value="????????????">
                             	<font id="checkId" size="2"></font>
                            </div>
                         
                            <div class="form-group">
                                <label for="password-login">????????????</label>
                                <input class="form-control" id="password" type="password" name="password" value="">
                            </div>
                            <div class="form-group">
                                <label for="password-login">???????????? ??????</label>
                                <input class="form-control" id="password2" type="password" value="" name="password2">
                                <div id="output" style="height: 50px; width: 500px"></div>
                            </div>
                            <div class="form-group">
                                <label for="name-login">??????</label>
                                <input class="form-control" id="name" type="text" name="name" value="">
                            </div>
                            <div class="form-group">
                                <label for="name-login">????????????</label>
                                <input class="form-control" id="tel" type="text" name="tel" value="">
                            </div>
                            <div class="form-group">
                                <label for="addr-login">??????</label>
                                <input class="form-control" id="address1" type="text" name="address1" value=""/>
                                <input class="form-control" id="address2" type="text" name="address2" value=""><br/>
                            <a href="#void"><input type="button" id="find_addr" class="btn btn-warning btn-block btn-lg" value="???????????? ??????"></a> 
                            </div>
                            <div class="text-center">
                            <div class="form-group">
                                <label for="name-login">????????????</label>
                                <input class="form-control" id="zipcode" type="text" name="zipcode" value="">
                            </div>
                                <input type="button" id="next" class="btn btn-warning btn-block btn-lg" value="??????">
                            </div>
                        </form>
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
		/* $("#checkmail").click(function(){
			let userId =$("#id").val();
			
			$.ajax({
				url : "emailCheck.jsp",
				type : "post",
				data: {userId:userId},
				dataType : 'json',
				success : function( data ){
			
					if(data.resultFlag==0){
						$("#checkId").html("????????????????????????.");
						$("#checkId").attr('color','red');
					}else{
						$("#checkId").html("????????? ??? ?????? ??????????????????.");
						$("#checkId").attr('color','green');
					}
				},
				error :function( xhr ){
					alert("??????????????????. ????????????????????????");
				}
			})
			
		})//focusout */
		</script>

        <script>
            new WOW().init();

        </script>

    </body>
</html>