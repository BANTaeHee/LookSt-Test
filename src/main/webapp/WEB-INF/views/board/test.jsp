<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
<style>
@import url(board.css) srceen;

* {
  padding: 0;
}


/* html {
  font-size: 10px;
} */

ul,
li {
  list-style: none;
}

a {
  text-decoration: none !important;
  color: inherit;
}

.board_wrap {
  width: 100%;
  margin: 100px auto 0;
}

.board_title {
  margin-bottom: 30px;
}

.board_title strong {
  font-size: 2.0rem;
}

.board_title p {
  margin-top: 5px;
  font-size: 1.0rem;
}

.bt_wrap {
  margin-top: 222px;
  text-align: center;
  font-size: 0;
}

.bt_wrap a {
  display: inline-block;
  min-width: 80px;
  margin-left: 10px;
  padding: 10px;
  border: 1px solid #000;
  border-radius: 2px;
  font-size: 1.0rem;
}

.bt_wrap a:first-child {
  margin-left: 0;
}

.bt_wrap a.on {
  background: #000;
  color: #fff;
}

.board_list {
  width: 100%;
  border-top: 2px solid #000;
}

.board_list>div {
  border-bottom: 1px solid #ddd;
  font-size: 0;
}

.board_list>div.top {
  border-bottom: 1px solid #999;
}

.board_list>div:last-child {
  border-bottom: 1px solid #000;
}

.board_list>div>div {
  display: inline-block;
  padding: 15px 0;
  text-align: center;
  font-size: 1.0rem;
}

.board_list>div.top>div {
  font-weight: 600;
}

.board_list .num {
  width: 10%;
}

.board_list .title {
  width: 60%;
  text-align: left;
}

.board_list .top .title {
  text-align: center;
}

.board_list .writer {
  width: 10%;
}

.board_list .date {
  width: 10%;
}

.board_list .count {
  width: 10%;
}


.board_page {
  display: flex;
  justify-content: center;
  letter-spacing: 25px;
}

.board_view {
  width: 100%;
  border-top: 2px solid #000;
}

.board_view .title {
  padding: 20px 15px;
  border-bottom: 1px dashed #ddd;
  font-size: 1rem;
}

.board_view .info {
  padding: 15px;
  border-bottom: 1px solid #999;
  font-size: 0;
}

.board_view .info dl {
  position: relative;
  display: inline-block;
  padding: 0 20px;
}

.board_view .info dl:first-child {
  padding-left: 0;
}

.board_view .info dl::before {
  content: "";
  /* position: absolute; */
  top: 1px;
  left: 0;
  display: block;
  width: 1px;
  height: 13px;
  background: #ddd;
}

.board_view .info dl:first-child::before {
  display: none;
}

.board_view .info dl dt,
.board_view .info dl dd {
  display: inline-block;
  font-size: 1.0rem;
}



.board_view .info dl dd {
  margin-left: 10px;
  color: #777;
}

.board_view .cont {
  padding: 15px;
  border-bottom: 1px solid #000;
  line-height: 160%;
  font-size: 1.0rem;
}

.board_write {
  border-top: 2px solid #000;
}

.board_write .title,
.board_write .info {
  padding: 15px;
}

.board_write .info {
  border-top: 1px dashed #ddd;
  border-bottom: 1px solid #000;
  font-size: 0;
}

.board_write .title dl {
  font-size: 0;
}

.board_write .info dl {
  display: inline-block;
  width: 50%;
  vertical-align: middle;
}

.board_write .title dt,
.board_write .title dd,
.board_write .info dt,
.board_write .info dd {
  display: inline-block;
  vertical-align: middle;
  font-size: 1.0rem;
}

.board_write .title dt,
.board_write .info dt {
  width: 100px;
}

.board_write .title dd {
  width: calc(100% - 100px);
}

.board_write .title input[type="text"],
.board_write .info input[type="text"],
.board_write .info input[type="password"] {
  padding: 10px;
  box-sizing: border-box;
}

.board_write .title input[type="text"] {
  width: 80%;
}

.board_write .cont {
  border-bottom: 1px solid #000;
}

.board_write .cont textarea {
  display: block;
  width: 100%;
  height: 300px;
  padding: 15px;
  box-sizing: border-box;
  border: 0;
  resize: vertical;
}

.board_write .cont_tag textarea {
  display: block;
  width: 100%;
  height: 50px;
  padding: 15px;
  box-sizing: border-box;
  border: 0;
  resize: vertical;
}



.page {
  display: flex;
  font-size: 1rem;
  color: #aaa;
  justify-content: center;
  --swiper-theme-color: #007aff;
  --swiper-navigation-size: 44px;
  font-family: 'Noto Sans KR', serif;
  line-height: 1rem;
  letter-spacing: 0.1px;
}

.page p {
  margin: 0 12px;
  padding: 0 8px;
  line-height: 2rem;
  cursor: pointer;
}

.checkpage {
  font-size: 26px;
  font-weight: 700;
  color: #222;
  border-bottom: 4px solid #e6002d;
}


section {
  margin-bottom: 10px;
  padding-bottom: 10px;
}

.notice1 {
  text-align: end;
  font-size: 22px;
  font-weight: 700;
}


.list_tab[data-v-ff5858e8] {
  position: relative;
  margin-top: -10px;
  z-index: 1;
}


/* 아코디언 css 시작 */


@import url(https://fonts.googleapis.com/css?family=Lato);

@import url(https://fonts.googleapis.com/css?family=Open Sans);

.faq-heading {
  font-family: Lato;
  font-weight: 400;
  font-size: 15px;
  -webkit-transition: text-indent 0.2s;
  text-indent: 20px;
  color: #333;

}

.faq-text {
  font-family: Open Sans;
  font-weight: 400;
  color: #333;
  width: 100%;
  padding: 0 20px;
  margin-bottom: 30px;
  box-sizing: border-box;
  padding: 10px;
}

.faq {
  width: 100%;
  margin: 0 auto;
  background: white;
  border-radius: 4px;
  position: relative;
  border: 1px solid #E1E1E1;
}

.faq label {
  display: block;
  position: relative;
  overflow: hidden;
  cursor: pointer;
  height: 56px;
  padding-top: 1px;
  background-color: #FAFAFA;
  border-bottom: 1px solid #E1E1E1;

}

.faq input[type="checkbox"] {
  display: none;
}

.faq .faq-arrow {
  width: 5px;
  height: 5px;
  transition: -webkit-transform 0.8s;
  transition: transform 0.8s;
  transition: transform 0.8s, -webkit-transform 0.8s;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
  border-top: 2px solid rgba(0, 0, 0, 0.33);
  border-right: 2px solid rgba(0, 0, 0, 0.33);
  float: right;
  position: relative;
  top: -30px;
  right: 27px;
  -webkit-transform: rotate(45deg);
  transform: rotate(45deg);
}

.faq input[type="checkbox"]:checked+label>.faq-arrow {
  transition: -webkit-transform 0.8s;
  transition: transform 0.8s;
  transition: transform 0.8s, -webkit-transform 0.8s;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
  -webkit-transform: rotate(135deg);
  transform: rotate(135deg);
}

.faq input[type="checkbox"]:checked+label {
  display: block;
  background: rgba(255, 255, 255, 255) !important;
  color: #4f7351;
  height: 225px;
  transition: height 0.8s;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

.faq input[type='checkbox']:not(:checked)+label {
  display: block;
  transition: height 0.8s;
  height: 60px;
  -webkit-transition-timing-function: cubic-bezier(0.68, -0.55, 0.265, 1.55);
}

::-webkit-scrollbar {
  display: none;
}

/* 아코디언 끝 */

/* QNA 댓글 */

.comment {
  padding: 50px 0;
}

.list {
  display: flex;
  padding: 20px 0;
  border-bottom: 1px solid #ddd;
}

.list img {
  width: 50px;
}

.list>:nth-child(2) {
  width: 100%;
  padding-left: 15px;
}

.list>:nth-child(3) {
  text-align: right;
}

.list>:nth-child(3) img {
  width: 25px;
}

input,
select {
  height: 40px;
  font-size: 1rem;
  padding-left: 7px;
}

select,
textarea {
  border: 1px solid #bbb;
  border-radius: 5px;
  width: 100%;
}

textarea {
  height: 200px;
  padding: 10px 0 0 7px;
  resize: none;
  font-size: 1rem;
  font-family: 'Noto Sans KR', sans-serif;
}

textarea[name=comment] {
  height: 100px;
  margin: 20px 0;
}

.secret button {
  width: 15%;
  background: #555;
  color: white;
}

.secret {
  display: flex;
  justify-content: space-between;
}

[type=checkbox],
[type=radio] {
  vertical-align: middle;
}




dd {
  margin: 0 0 0 1px;

}

dl {
  display: flex;
}

dt {
  line-height: 2.5;

}


</style>

<script type="text/javascript">
window.addEventListener("load", function() {
	  const tagList = document.querySelectorAll(".page > p");
	  for (let i = 0; i < tagList.length; i++) {
	    tagList[i].addEventListener("click", function() {
	      clearPage();
	      this.classList.add("checkpage");
	    });
	  }

	  function clearPage() {

	    for (let i = 0; i < tagList.length; i++) {
	      tagList[i].classList.remove("checkpage");
	    }
	  }
	});
</script>

<title>Lookst</title>
</head>
<body>
<%@ include file="/WEB-INF/views/fix/header.jsp" %>
 <div class="board_wrap">
    <div class="board_title">
        <strong>공지사항</strong>
        <ul class="notice1">
        <a href="board_list.html">공지사항</a>
        <a href="board_list_FAQ.html">FAQ</a>
        <a href="board_list_QNA.html">1:1 문의</a>
        </ul>
    </div>
    <div class="board_list_wrap">
        <div class="board_list">
            <div>
                <div class="title"><a href="../../html/notice/board_notice_view.html">개인정보 취급방침 변경안내</a></div>
            </div>
            <div>
                <div class="title"><a href="#">[공지] 정산 지연 안내</a></div>
            </div>
            <div>
                <div class="title"><a href="#">[이벤트 발표] LUCKY DRAW - 아이폰 14 프로 128GB</a></div>
            </div>
            <div>
                <div class="title"><a href="#">[이벤트 발표] LUCKY DRAW - 에르메스 주얼리 풀세트</a></div>
            </div>
            <div>
                <div class="title"><a href="#">[공지] 서비스 수수료 안내</a></div>
            </div>
            <div>
              <div class="title"><a href="#">[공지] 10월 거래 혜택 이벤트 안내</a></div>
          </div>
          <div>
            <div class="title"><a href="#">[이벤트 발표] LUCKY DRAW - 소니 플레이스테이션 5 풀세트

            </a></div>
        </div>
        </div>
        <section>
        </section>
        <div class="page">
          <p class="">1</p>
          <p class="">2</p>
          <p class="">3</p>
          <p class="">4</p>
          <p class="">5</p>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/fix/footer.jsp" %>
</body> 
</html>


