<%@ page language="java" contentType="text/html; charset=gb2312"
    pageEncoding="gb2312"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui-1.8.16.custom.min.js"></script>
<script>
	$(function() {
		$( "#datepicker" ).datepicker();
		$( "#format" ).change(function() {
			$( "#datepicker" ).datepicker( "option", "dateFormat", $( this ).val() );
		});
	});
	</script>
</head>
<body>
<h5>查询ID</h5>
<Input type="text" name="userid" maxlength=8 style="width: 150">



<meta charset="utf-8">
	
	
	
	
	
	
	
	



<div class="demo">

<p>Date: <input type="text" id="datepicker" size="30"/></p>

<p>Format options:<br />
	<select id="format">
		<option value="mm/dd/yy">Default - mm/dd/yy</option>
		<option value="yy-mm-dd">ISO 8601 - yy-mm-dd</option>
		<option value="d M, y">Short - d M, y</option>
		<option value="d MM, y">Medium - d MM, y</option>
		<option value="DD, d MM, yy">Full - DD, d MM, yy</option>
		<option value="'day' d 'of' MM 'in the year' yy">With text - 'day' d 'of' MM 'in the year' yy</option>
	</select>
</p>

</div><!-- End demo -->



<div class="demo-description">
<p>Display date feedback in a variety of ways.  Choose a date format from the dropdown, then click on the input and select a date to see it in that format.</p>
</div><!-- End demo-description -->


</body>
</html>