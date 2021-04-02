<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../myMenu/myinfo_main.jsp" %>
<script>
	const msg = '${msg}';
	if (msg == '수정') {
		alert('수정이 완료 되었습니다.');
	}else{
		alert('수정이 되지 않았습니다.');
	}
	location.replace('${cpath}/myMenu/myinfo');
</script>


 </div>
</div>
<%@ include file="../layout/footer.jsp" %>