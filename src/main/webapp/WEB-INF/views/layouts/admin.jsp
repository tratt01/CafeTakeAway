<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>

<!DOCTYPE html>
<html>

<head>
<!-- Basic Page Info -->
<title>Cafe Slide Dashboard</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- Site favicon -->
<link rel="apple-touch-icon" sizes="180x180"
	href="<c:url value="/assets/admin/vendors/images/apple-touch-icon.png" />">
<link rel="icon" type="image/png" />
" sizes="32x32" href="
<c:url value="/assets/admin/vendors/images/favicon-32x32.png" />
">
<link rel="icon" type="image/png" />
" sizes="16x16" href="
<c:url value="/assets/admin/vendors/images/favicon-16x16.png" />
">

<!-- Mobile Specific Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&amp;display=swap"
	rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/admin/vendors/styles/core.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/admin/vendors/styles/icon-font.min.css" />">
<%-- <link rel="stylesheet" type="text/css" href="<c:url value="/assets/admin/src/plugins/datatables/css/dataTables.bootstrap4.min.css" />">
	<link rel="stylesheet" type="text/css" href="<c:url value="/assets/admin/src/plugins/datatables/css/responsive.bootstrap4.min.css" />"> --%>
<link rel="stylesheet" type="text/css"
	href="<c:url value="/assets/admin/vendors/styles/style.css" />">

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'UA-119386393-1');
</script>
</head>

<body>

	<div class="mobile-menu-overlay"></div>

	<%@ include file="/WEB-INF/views/layouts/admin/header.jsp"%>
	<%@ include file="/WEB-INF/views/layouts/admin/sidebar.jsp"%>
	<decorator:body ></decorator:body>

	<!-- js -->
	<script src="<c:url value="/assets/admin/vendors/scripts/core.js" />"></script>
	<script
		src="<c:url value="/assets/admin/vendors/scripts/script.min.js" />"></script>
	<script
		src="<c:url value="/assets/admin/vendors/scripts/process.js" />"></script>
	<script
		src="<c:url value="/assets/admin/vendors/scripts/layout-settings.js" />"></script>
	<%-- <script src="<c:url value="/assets/admin/src/plugins/apexcharts/apexcharts.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/jquery.dataTables.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/dataTables.bootstrap4.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/dataTables.responsive.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/responsive.bootstrap4.min.js" />"></script> --%>

	<script
		src="<c:url value="/assets/admin/vendors/scripts/dashboard.js" />"></script>

	<%-- <script src="<c:url value="/assets/admin/src/plugins/datatables/js/dataTables.buttons.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/buttons.bootstrap4.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/buttons.print.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/buttons.html5.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/buttons.flash.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/pdfmake.min.js" />"></script>
	<script src="<c:url value="/assets/admin/src/plugins/datatables/js/vfs_fonts.js" />"></script> --%>
	<!-- Datatable Setting js -->
	<script
		src="<c:url value="/assets/admin/vendors/scripts/datatable-setting.js" />"></script>
	<script>
		var loadFile = function(event) {
			var image = document.getElementById('thumnail');
			image.src = URL.createObjectURL(event.target.files[0]);
		};
		function showPreviewOne(event) {
			if (event.target.files.length > 0) {
				let src = URL.createObjectURL(event.target.files[0]);
				let preview = document.getElementById("thumnail");
				preview.src = src;
				preview.style.display = "block";
			}
		}
		jQuery(document).ready(function() {
			$(".logoutLink").on("click", function(e) {
				e.preventDefault();
				document.logoutForm.submit();
			});
		});
	</script>
	
</body>

</html>