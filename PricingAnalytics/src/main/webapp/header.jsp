<%-- 
    Document   : header
    Created on : May 21, 2015, 3:28:11 PM
    Author     : lo.zert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
    
    <!-- popup login-->
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.pack.js"></script>


    
    </head>
    <body>
        <div id="header">
		<div id="headercontain">
			<!-- Logo -->
			<div id="logo">
				<a href="index.jsp"><img src="images/logo.png" /></a>
			</div>
			<!--Khung Search-->
		<!--<div id="find">
			<form>
				<input type="text" name="tfind"  placeholder="Khung tìm kiếm" />
				<input type="submit" name="find" value="Search" />
			</form>
        </div> 
		-->
                <div id="search">
                        <script>
                                (function() {
                                var cx = '011043942123399578564:g1c8onrmk8q';
                                var gcse = document.createElement('script');
                                gcse.type = 'text/javascript';
                                gcse.async = true;
                                gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                                '//cse.google.com/cse.js?cx=' + cx;
                                var s = document.getElementsByTagName('script')[0];
                                s.parentNode.insertBefore(gcse, s);
                        })();
                        </script>
                        <gcse:search></gcse:search>
                </div>
		<!-- end search-->
		</div>
		<div id="menu">
            <div id="menucontain">
                    <!-- Dropdown mennu-->
                    <div id="dropmenu">
                        <ul>
                            <li class="danhmuc">Danh mục sản phẩm</li>
                            <li>Sản Phẩm</li>
                            <li>Portfolio
                                    <ul>
                                            <li>Web Design</li>
                                            <li>Web Development</li>
                                            <li>Illustrations</li>
                                    </ul>
                            </li>
                            <li>Nhà cung cấp</li>
                            <li>Quản lý</li>
                        </ul>
                    </div>
                            <!--Khung Account-->
                    <div id="account_box">
                        <div id="account_box1">
                            <%
                                String user_name =  (String)session.getAttribute("user_name"); 
                              String user_id = (String) session.getAttribute("user_id");
                                if(user_name=="1"){
                                    session.setAttribute("user_name",null);
                                }
                                if(user_name!=null && user_name!="1")
                                {
                                     %><b><a href='usercp.jsp'>${sessionScope['user_name']}</a></b><%
                                }
                                else
                                {
                                    %> <b><a href='login.jsp'>Đăng nhập</a></b><%
                                }
                            %>                  
                        </div>
                        <div id="account_box2">
                              <%
                                    if(user_name!=null && user_name!="1")
                                    {
                                        %><b><a href="logout.jsp">Đăng xuất</a></b><%
                                    }
                                  else
                                    {
                                       %> <b><a href='register.jsp'>Đăng ký</a></b><%
                                    }
                                %>
                        </div>                                    
                    </div>
                        
                        
                        

                        
        <!--Script hien thi danh mục -->
            <script type="text/javascript">
                $(document).ready(function(){
                    $(".danhmucsanpham").hide();
                    $('.danhmuc').click(function(){
                        $(".danhmucsanpham").slideToggle();
                    });
                });
            </script>   
                    
            <div class="danhmucsanpham" id="danhmucsanpham">
            <div id="danhmuc1">
                <ul>
                    <li><span>Điện lạnh</span></li>
                    <li >- <a href="http://www.sosanhgia.com/t8-may-giat.html" title="Giá Máy giặt">Máy giặt</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t10-tu-lanh.html" title="Giá Tủ lạnh">Tủ lạnh</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t19-may-lanh-dieu-hoa.html" title="Giá Máy lạnh">Máy lạnh / Điều hoà</a></li>
                    <li>- <a href="http://www.sosanhgia.com/t22-may-nuoc-nong.html" title="Giá Máy nước nóng">Máy nước nóng</a></li>
                </ul >
            </div>
            <div id="danhmuc2">
                <ul>
                    <li><span>Điện lạnh</span></li>
                    <li >- <a href="http://www.sosanhgia.com/t8-may-giat.html" title="Giá Máy giặt">Máy giặt</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t10-tu-lanh.html" title="Giá Tủ lạnh">Tủ lạnh</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t19-may-lanh-dieu-hoa.html" title="Giá Máy lạnh">Máy lạnh / Điều hoà</a></li>
                    <li>- <a href="http://www.sosanhgia.com/t22-may-nuoc-nong.html" title="Giá Máy nước nóng">Máy nước nóng</a></li>
                </ul>
            </div>
            <div id="danhmuc3">
                <ul>
                    <li><span>Điện lạnh</span></li>
                    <li >- <a href="http://www.sosanhgia.com/t8-may-giat.html" title="Giá Máy giặt">Máy giặt</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t10-tu-lanh.html" title="Giá Tủ lạnh">Tủ lạnh</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t19-may-lanh-dieu-hoa.html" title="Giá Máy lạnh">Máy lạnh / Điều hoà</a></li>
                    <li>- <a href="http://www.sosanhgia.com/t22-may-nuoc-nong.html" title="Giá Máy nước nóng">Máy nước nóng</a></li>
                </ul>
            </div>
            <div id="danhmuc4">
                <ul>
                    <li><span>Điện lạnh</span></li>
                    <li >- <a href="http://www.sosanhgia.com/t8-may-giat.html" title="Giá Máy giặt">Máy giặt</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t10-tu-lanh.html" title="Giá Tủ lạnh">Tủ lạnh</a></li>
                    <li >- <a href="http://www.sosanhgia.com/t19-may-lanh-dieu-hoa.html" title="Giá Máy lạnh">Máy lạnh / Điều hoà</a></li>
                    <li>- <a href="http://www.sosanhgia.com/t22-may-nuoc-nong.html" title="Giá Máy nước nóng">Máy nước nóng</a></li>
                </ul>
            </div>
                
                
            </div>    
                    
                    
         </div>
                        
           
                        
                        
            </div>
	</div>
    </body>
</html>
