<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <title><decorator:title default="Master-layout"></decorator:title></title>
    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600,700" rel="stylesheet">

    <link rel="stylesheet" href="<c:url value='/assets/user/libs/bootstrap/css/bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/user/libs/font-awesome/css/font-awesome.min.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/user/libs/font-material/css/material-design-iconic-font.min.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/user/libs/nivo-slider/css/nivo-slider.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/user/libs/nivo-slider/css/animate.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/user/libs/nivo-slider/css/style.css' />">
    <link rel="stylesheet" href="<c:url value='/assets/user/libs/owl-carousel//assets/owl.carousel.min.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/user/css/style.css' />">
    <link rel="stylesheet" type="text/css" href="<c:url value='/assets/user/css/reponsive.css' />">
    <!-- <style>
        html{
            font-family: 'Roboto', sans-serif;
        }
    </style> -->
</head>

<body id="home">

	<%@ include file="/WEB-INF/views/layouts/user/header.jsp"%>
	<decorator:body></decorator:body>
	<%@ include file="/WEB-INF/views/layouts/user/footer.jsp"%>
	
    <div class="back-to-top">
        <a href="#">
            <i class="fa fa-long-arrow-up"></i>
        </a>
    </div>

    <!-- menu mobie left -->
    <div class="mobile-top-menu d-md-none">
        <button type="button" class="close" aria-label="Close">
            <i class="zmdi zmdi-close"></i>
        </button>
        <div class="tiva-verticalmenu block" data-count_showmore="17">
            <div class="box-content block-content">
                <div class="verticalmenu" role="navigation">
                    <ul class="menu level1">
                        <li class="item  parent">
                            <a href="#" class="hasicon" title="SIDE TABLE">
                                Đồng hồ</a>


                        </li>
                        <li class="item  parent">
                            <a href="#" class="hasicon" title="SIDE TABLE">
                                Tủ gỗ</a>
                        </li>
                        <li class="item  parent">
                            <a href="#" class="hasicon" title="SIDE TABLE">
                                Ghế</a>
                        </li>
                        <li class="item  parent">
                            <a href="#" class="hasicon" title="SIDE TABLE">
                                Bàn ăn</a>
                        </li>
                        <li class="item  parent">
                            <a href="#" class="hasicon" title="SIDE TABLE">
                                Giường</a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>



    <!-- Vendor JS -->
    <script src="<c:url value='/assets/user/libs/jquery/jquery.min.js' />"></script>
    <script src="<c:url value='/assets/user/libs/popper/popper.min.js' />"></script>
    <script src="<c:url value='/assets/user/libs/bootstrap/js/bootstrap.min.js' />"></script>
    <script src="<c:url value='/assets/user/libs/nivo-slider/js/jquery.nivo.slider.js' />"></script>
    <script src="<c:url value='/assets/user/libs/owl-carousel/owl.carousel.min.js' />"></script>

    <!-- Template JS -->
    <script src="<c:url value='/assets/user/js/theme.js' />"></script>

    <!-- back top top -->
    <script>
        function incrementValue(e) {
            e.preventDefault();
            var fieldName = $(e.target).data('field');
            var parent = $(e.target).closest('div');
            var currentVal = parseInt(parent.find('input[name=' + fieldName + ']').val(), 10);

            if (!isNaN(currentVal)) {
                parent.find('input[name=' + fieldName + ']').val(currentVal + 1);
            } else {
                parent.find('input[name=' + fieldName + ']').val(1);
            }
        }

        function decrementValue(e) {
            e.preventDefault();
            var fieldName = $(e.target).data('field');
            var parent = $(e.target).closest('div');
            var currentVal = parseInt(parent.find('input[name=' + fieldName + ']').val(), 10);

            if (!isNaN(currentVal) && currentVal > 1) {
                parent.find('input[name=' + fieldName + ']').val(currentVal - 1);
            } else {
                parent.find('input[name=' + fieldName + ']').val(1);
            }
        }

        $('.input-group').on('click', '.button-plus', function (e) {
            incrementValue(e);

        });

        $('.input-group').on('click', '.button-minus', function (e) {
            decrementValue(e);
        });
        jQuery(document).ready(function () {
            $(".logoutLink").on("click", function (e) {
                e.preventDefault();
                document.logoutForm.submit();
            });
        });
        
        
        
    </script>
    
    <decorator:getProperty property="page.script"></decorator:getProperty>
</body>

</html>