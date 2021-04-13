<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>
<script>
	const msg = '${msg}';
	alert(msg);
	location.replace('${cpath}'+'${path}');
</script>


 </div>
</div>
<%@ include file="../layout/footer.jsp" %>