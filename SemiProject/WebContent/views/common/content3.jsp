<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#content_3 {
	  position: fixed;
 	  left: 1440px;
	}
</style>
</head>
<body>
	<div id="content_3" align="center">
        <a href="/KGG/list.qo?kpage=1">
            <div id="content_3_1">
                <div class="content_3_title">Q&A</div>
                <div class="content_3_imgArea">
                    <img src="/KGG/resources/images/Phone-icon.png" alt="" class="content_3_img">
                </div>
            </div>
        </a>
       
        <a href="">
            <div id="content_3_2" class="top">
                <div class="content_3_title">사진</div>
                <div class="content_3_imgArea">
                    <img src="/KGG/resources/images/헤드셋.png" alt="" class="content_3_img">
                </div>
            </div>
        </a>
        <a href="javascript:scrollTab('content_3');" od>
            <div id="content_3_3">
                <div class="content_3_title">TOP</div>
                <div class="content_3_imgArea">
                    <img id="img05" src="" alt="사진넣을거임">
                </div>
            </div>
        </a>
	</div>
	<script>
	$('.top').click(function() {
		$('html, body').animate({scrollTop : 0}, 500);
		return false;
	});
	</script>
</body>
</html>