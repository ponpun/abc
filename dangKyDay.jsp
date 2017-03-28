<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css" />

<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>

<link href="css/shop-homepage.css" rel="stylesheet">

<link rel="stylesheet" href="css/style.css" />
<style type="text/css">
td {
	border: 2px solid;
	padding-left: 30px;
	height: 15px;
	width: 200px;
}
.dpimage {
	background-position: right;
	background-repeat: no-repeat;
	position: relative;
	top: 5px;
	left: -20px;
}
.format1{
width: 30px;
}
</style>
</head>
<body>

<div><script type="text/javascript" src="js/dangkyhoc.js">
</script>
<script type="text/javascript">
function dangKy() {
var daChon=($('.sang1:checked').size());
if($('.sang1:checked').size()==0){
	alert("Chưa chọn thứ cho thời gian từ "
			+document.getElementById("select1").options[document.getElementById("select1").selectedIndex ].text +
			" giờ đến "
			+document.getElementById("select2").options[document.getElementById("select2").selectedIndex ].text +
			" giờ");
}else {
	var url = "/dangKyDay";
		window.location.href = url;
}
}
</script>
<html:form action="/dangKyDay" method="post">

	<div class="container"><!-- Navigation -->
	<h1>Trung Tâm Gia Sư LightTing</h1>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid"><!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
	<button type="button" class="navbar-toggle collapsed"
		data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
		aria-expanded="false"><span class="sr-only">Toggle
	navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span>
	<span class="icon-bar"></span></button>
	<a class="navbar-brand" href="#">
	<h4>Trang Chủ</h4>
	</a></div>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"
		style="margin-right: -10px; margin-top: 3px">
	<ul class="nav navbar-nav">
		<li><a href="#">
		<h4>Giới Thiệu</h4>
		</a></li>
		<li><a href="#">
		<h4>Gia sư</h4>
		</a></li>
		<li><a href="#">
		<h4>Khóa học</h4>
		</a></li>
		<li><a href="#">
		<h4>Liên hệ</h4>
		</a></li>
		<li><a href="#">
		<h4>Tìm kiếm gia sư</h4>
		</a></li>
	</ul>
	<ul class="nav navbar-nav navbar-right">
		<li>
		<div class="navbar-form navbar-left">
		<div class="form-group"><input type="text" class="form-control"
			placeholder="Search"></div>
		<button type="submit" class="btn btn-default">Tìm</button>
		</div>
		</li>
		<li>
		<button type="button" class="btn btn-default navbar-btn">Đăng Ký</button>
		</li>
		<li>
		<button type="button" class="btn btn-default navbar-btn">Đăng Nhập</button>
		</li>
	</ul>
	</div>
	<!-- /.navbar-collapse --></div>
	<!-- /.container-fluid --> </nav> <!-- Page Content -->
	<div class="container">
	<div class="row">
	  <div class="col-md-3">
             <div class="list-group">
            <a href="#" class="list-group-item active"> Giảng dạy  </a>
            <a href="#" class="list-group-item">Giáo viên</a>
            <a href="#" class="list-group-item">Thông tin cá nhân</a>
            <html:link action="/dangKyDay" styleClass="list-group-item">Đăng ký học kèm</html:link> 
            <a href="#" class="list-group-item">Các xuất đang dạy
            </a>
            <a href="#" class="list-group-item">Thời khóa biểu
            </a>    
          </div>
            </div>
	<div class="col-md-9">
	<button class="btn btn-primary" onclick="history.go(-1);"
		style="margin-left: 750px; margin-top: 0px">Quay lại</button>
	<h3 style="margin-left: 200px; font-size: 25px; color: green">ĐĂNG KÝ DẠY KÈM</h3>
<table>

			
			<tr>
			<td>Mã giáo viên:</td>
			<td>
			<div><html:text property="maGV" readonly="true">
			</html:text><html:errors property="maGVError" /></div>
			</td>
		</tr>
		
		<tr>
			<td>Họ và tên:</td>
			<td>
			<div><html:text property="tenGV" readonly="true">
			</html:text><html:errors property="tenGVError" /></div>
			</td>
		</tr>
		<tr>
			<td>Số lượng học viên:</td>
			<td>
			<div><html:text property="soLuongHocVienToiDa" value="soLuongHocVienToiDa"></html:text> <html:errors property="soLuongHocVienToiDaError" /></div>
			</td>
		</tr>
		</table>
			<br>
		<table>
		<tr>
			<td>Khu vực:</td>
			
			<logic:iterate id="khuVucBean" name="dangKyDayForm" property="khuVuc">
				<td class="format1"><html:multibox property="khuVucDaChon" styleId="khuVuc">
					<bean:write name="khuVucBean" />
				</html:multibox><bean:write name="khuVucBean" /></td>
			</logic:iterate>
		
		</table>
		
		<br>
		
		<table>
		<tr>
			<td>Chọn lớp:</td>
			
			<logic:iterate id="chonLop" name="dangKyDayForm" property="chonLop">
				<td class="format1"><html:multibox property="lopDaChon" styleId="lop">
					<bean:write name="chonLop" />
				</html:multibox> <bean:write name="chonLop" /></td>
			</logic:iterate>
		
			</tr>
		<tr>
			<td>Chọn môn:</td>
			<logic:iterate id="chonMon" name="dangKyDayForm" property="chonMon">
				<td class="format1"><html:multibox property="monDaChon" styleId="mon">
					<bean:write name="chonMon" />
				</html:multibox> <bean:write name="chonMon" /></td>
			</logic:iterate>
			</tr>
			</table>
		</div>
	</div>
	<h4 style="margin-left: 500px; color: green">Chọn thời gian dạy</h4>
	<table>
		<tr class="thoigian">
			<td>Buổi</td>
			<td class="thoigian">Giờ bắt đầu</td>
			<td class="thoigian">Giờ kết thúc</td>
			<td class="thoigian">Thứ 2</td>
			<td class="thoigian">Thứ 3</td>
			<td class="thoigian">Thứ 4</td>
			<td class="thoigian">Thứ 5</td>
			<td class="thoigian">Thứ 6</td>
			<td class="thoigian">Thứ 7</td>
			<td class="thoigian">Chủ nhật</td>
		</tr>
		<tr class="thoigian">
			<td rowspan=2>Sáng</td>
			<td class="thoigian"><html:select styleId="select1" property="gioBatDauSang1" value="0">
				<html:option value="0">---</html:option>
				<html:option value="7">7</html:option>
				<html:option value="8">8</html:option>
				<html:option value="9">9</html:option>
			</html:select></td>
			<td class="thoigian"><html:select styleId="select2" property="gioKetThucSang1" value="0" name="thoiGianBatDau" disabled="true">
				<html:option value="0">---</html:option>
				<html:option value="8">8</html:option>
				<html:option value="9">9</html:option>
				<html:option value="10">10</html:option>
			</html:select></td>


			<logic:iterate id="thu" name="dangKyDayForm" property="chonThu">
				<td><html:multibox property="thuDaChonSang1" disabled="true" styleClass="sang1">
					<bean:write name="thu" />
				</html:multibox> <bean:write name="thu" /></td>
			</logic:iterate>
		</tr>
		<tr class="thoigian">
			<td class="thoigian"><html:select styleId="select3"
				property="gioBatDauSang2" value="0" name="thoiGianBatDau">
				<html:option value="0">---</html:option>
				<html:option value="9">9</html:option>
				<html:option value="10">10</html:option>
				<html:option value="11">11</html:option>
			</html:select></td>
			<td class="thoigian"><html:select styleId="select4"
				property="gioKetThucSang2" value="0" name="thoiGianBatDau" disabled="true">
				<html:option value="0">---</html:option>
				<html:option value="10">10</html:option>
				<html:option value="11">11</html:option>
				<html:option value="12">12</html:option>
			</html:select></td>

			<logic:iterate id="thu" name="dangKyDayForm" property="chonThu">
				<td><html:multibox property="thuDaChonSang2" styleClass="sang2" disabled="true">
					<bean:write name="thu" />
				</html:multibox> <bean:write name="thu" /></td>
			</logic:iterate>
		</tr>
		<tr class="thoigian">
			<td rowspan=2>Buổi chiều</td>
			<td class="thoigian"><html:select styleId="select5"
				property="gioBatDauChieu1" value="0" name="thoiGianBatDau">
				<html:option value="0">---</html:option>
				<html:option value="13">13</html:option>
				<html:option value="14">14</html:option>
				<html:option value="15">15</html:option>
			</html:select></td>
			<td class="thoigian"><html:select styleId="select6"
				property="gioKetThucChieu1" value="0" name="thoiGianBatDau" disabled="true">
				<html:option value="0">---</html:option>
				<html:option value="14">14</html:option>
				<html:option value="15">15</html:option>
				<html:option value="16">16</html:option>
			</html:select></td>

			<logic:iterate id="thu" name="dangKyDayForm" property="chonThu">
				<td><html:multibox property="thuDaChonChieu1" styleClass="chieu1" disabled="true">
					<bean:write name="thu" />
				</html:multibox> <bean:write name="thu" /></td>
			</logic:iterate>
		</tr>
		<tr class="thoigian">
			<td class="thoigian"><html:select styleId="select7"
				property="gioBatDauChieu2" value="0" name="thoiGianBatDau">
				<html:option value="0">---</html:option>
				<html:option value="15">15</html:option>
				<html:option value="16">16</html:option>
				<html:option value="17">17</html:option>
			</html:select></td>
			<td class="thoigian"><html:select styleId="select8"
				property="gioKetThucChieu2" value="0" name="thoiGianBatDau" disabled="true">
				<html:option value="0">---</html:option>
				<html:option value="16">16</html:option>
				<html:option value="17">17</html:option>
				<html:option value="18">18</html:option>
			</html:select></td>
			<logic:iterate id="thu" name="dangKyDayForm" property="chonThu">
				<td><html:multibox property="thuDaChonChieu2" styleClass="chieu2" disabled="true">
					<bean:write name="thu" />
				</html:multibox> <bean:write name="thu" /></td>
			</logic:iterate>
		</tr>
		<!-- Buoi toi -->
		<tr class="thoigian">
			<td rowspan=2>Buổi tối</td>
			<td class="thoigian"><html:select styleId="select9"
				property="gioBatDauToi1" value="0" name="thoiGianBatDau">
				<html:option value="0">---</html:option>
				<html:option value="17">17</html:option>
				<html:option value="18">18</html:option>
				<html:option value="19">19</html:option>
			</html:select></td>
			<td class="thoigian"><html:select styleId="select10"
				property="gioKetThucToi1" value="0" name="thoiGianBatDau" disabled="true">
				<html:option value="0">---</html:option>
				<html:option value="18">18</html:option>
				<html:option value="19">19</html:option>
				<html:option value="20">20</html:option>
			</html:select></td>
			<logic:iterate id="thu" name="dangKyDayForm" property="chonThu">
				<td><html:multibox property="thuDaChonToi1" styleClass="toi1" disabled="true">
					<bean:write name="thu" />
				</html:multibox> <bean:write name="thu" /></td>
			</logic:iterate>
		</tr>
		<tr class="thoigian">
			<td class="thoigian"><html:select styleId="select11"
				property="gioBatDauToi2" value="0" name="thoiGianBatDau">
				<html:option value="0">---</html:option>
				<html:option value="19">19</html:option>
				<html:option value="20">20</html:option>
				<html:option value="21">21</html:option>
			</html:select></td>
			<td class="thoigian"><html:select styleId="select12"
				property="gioKetThucToi2" value="0" name="thoiGianBatDau" disabled="true">
				<html:option value="0">---</html:option>
				<html:option value="20">20</html:option>
				<html:option value="21">21</html:option>
				<html:option value="22">22</html:option>
			</html:select></td>
			<logic:iterate id="thu" name="dangKyDayForm" property="chonThu">
				<td><html:multibox property="thuDaChonToi2" styleClass="toi2" disabled="true">
					<bean:write name="thu" />
				</html:multibox> <bean:write name="thu" /></td>
			</logic:iterate>
		</tr>
	</table>
	
	<html:submit styleClass="btn btn-primary" property="submit" 
		value="submit" style="margin-left: 500px">Đăng ký</html:submit>
			<button class="btn btn-primary" onclick="dangKy()">Đăng ký</button>
	<button class="btn btn-primary" value="reset">Hủy</button>

	</div>
	</div>
	</html:form> 
	</div>
<!-- /.container --> <!-- Footer --> <footer class="panel-footer">
<div class="row">
<div class="col-lg-12">
<h5>
<p>Gia Sư LightTing - giasulighting@gmail.com</p>
</h5>
</div>
</div>
</footer> <!-- /.container --></div>
</div>


</body>
</html>