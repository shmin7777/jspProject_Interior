<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>스토어 | 리뷰</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet"
	href="//img.echosting.cafe24.com/editors/froala/3.2.2/css/froala_editor.pkgd.min.css">
<link rel="stylesheet"
	href="//img.echosting.cafe24.com/editors/froala/css/themes/ec_froala.css">
<style>
td{
	background-color: white !important;
}

th{
	background-color: white !important;
}

#view_list {
	float:left !important;
}

#write_post {
	float:right !important;
	margin-left: 4px !important;
}

#cancel_post {
	float:right !important;
	margin-left: 2px !important;
}

ul {
	list-style: none !important;
	padding-left: 0px !important;
	margin: 0 0 0 0 !important;
}

ul li {
    padding-left: 0 !important;
}

#view_list {
	float: left !important;
}

write_post {
	float: left !important;
}

cancel_post {
	float: left !important;
}

input[type="radio"] + label {
    color: #8e8e8e !important;
    margin: auto !important;
}

#div_write {
	width: 50% !important;
	height: 50% !important;
	margin: 0 auto !important;
}

#div_table {
	width:100% !important;
	margin:0 auto !important;
}

table {
	margin: 0 0 0 0 !important;
}

#wrapper>* {
	padding: 5em 0 3em 0 !important;
	border-bottom: none !important;
	overflow: hidden !important;
}
.starR1{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat -52px 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR2{
    background: url('http://miuu227.godohosting.com/images/icon/ico_review.png') no-repeat right 0;
    background-size: auto 100%;
    width: 15px;
    height: 30px;
    float:left;
    text-indent: -9999px;
    cursor: pointer;
}
.starR1.on{background-position:0 0;}
.starR2.on{background-position:-15px 0;}
</style>
</head>
<body class="is-preload">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
      	<c:choose>
      		<c:when test="${session_id==null }">
        		 <jsp:include page="/fixed/header.jsp"></jsp:include>
      		</c:when>
      		<c:otherwise>
		         <jsp:include page="/fixed/header_login.jsp"></jsp:include>
      		</c:otherwise>
      	</c:choose>
      </header>

		<!-- Menu -->
		<nav id="menu">
			<jsp:include page="/fixed/menu.jsp"></jsp:include>
		</nav>

		<!-- Wrapper 시작 -->
		<div id="wrapper" style="margin-left: 8%; margin-right: 8%;">
			<h3 style="text-align: center; border-bottom: none; margin: 0;">스토어 리뷰 작성</h3>
			<!-- div_write 시작 -->
			<div id="div_write" style="font-size: 10px;">
				<table id="div_table">
					<tr>
						<td>
							<select id="subject" name="subject" fw-filter="isFill"
								fw-label="제목" fw-msg="" onchange="changeTitle()" style="font-size: 10px;">
									<option selected disabled>종류</option>
									<option value="furniture">가구</option>
									<option value="props">소품</option>
							</select>
						</td>
						<th scope="row"><input id="board_title" name="board_title"
							type="text" placeholder="제목 입력" style="font-size: 10px;"></th>
					</tr>
				</table>
				<table border="1">
					<colgroup>
						<col style="width: 130px;">
						<col style="width: auto;">
					</colgroup>
					<tbody>
						<tr style="border-top: none; border-bottom: none;">
							<td colspan="2" class="clear">

								<textarea style="width: 100%; display: none;" name="content"
									id="content" class="ec-fr-never-be-duplicated"></textarea> <input
								type="hidden" id="content_hidden"
								fw-filter="isSimplexEditorFill" fw-label="내용"
								value="EC_FROALA_INSTANCE"> <script
									type="text/javascript"
									src="//img.echosting.cafe24.com/editors/froala/js/polyfill.min.js"></script>
								<script type="text/javascript"
									src="//img.echosting.cafe24.com/editors/froala/3.2.2/js/froala_editor.pkgd.min.js"></script>
								<script type="text/javascript"
									src="//img.echosting.cafe24.com/editors/froala/js/i18n/ko_KR.js"></script>

								<!-- Run Froala Script --> <script>
									var EC_FROALA_ID = null;
									// isSimplexEditorFill 체크시에 필요함
									var EC_FROALA_INSTANCE = null;
									(function() {
										var d = "";
										try {
											var o = {
												"key" : "DUA2yF3G1E1A5A2A2pZGCTRSAPJWTLPLZHTQQe1JGZxC4B3A3E2B5A1E1E4I1C2==",
												"toolbarSticky" : false,
												"theme" : "ec-froala",
												"attribution" : false,
												"htmlRemoveTags" : [ "script" ],
												"htmlAllowedEmptyTags" : [ "*" ],
												"iframe" : true,
												"iframeStyle" : ".fr-view{font-size: 12px;}",
												"iframeStyleFiles" : [ "\/\/img.echosting.cafe24.com\/editors\/froala\/css\/froala_style.min.css" ],
												"heightMin" : 400,
												"language" : "ko_KR",
												"paragraphFormatSelection" : true,
												"fontFamilySelection" : true,
												"fontSize" : [ "8", "9", "10",
														"12", "14", "16", "18",
														"20", "22", "24", "26",
														"28", "30" ],
												"fontSizeSelection" : true,
												"linkInsertButtons" : [ "linkBack" ],
												"quickInsertButtons" : [ "ul",
														"ol", "hr" ],
												"codeMirror" : false,
												"imageEditButtons" : [
														"imageAlign",
														"imageRemove", "|",
														"imageLink",
														"linkOpen", "linkEdit",
														"linkRemove", "-",
														"imageDisplay",
														"imageStyle",
														"imageAlt", "imageSize" ],
												"tableEditButtons" : [],
												"tableInsertHelper" : false,
												"imageDefaultMargin" : 0,
												"imageDefaultWidth" : 0,
												"imageUpload" : false,
												"imageInsertButtons" : [ "imageUpload" ],
												"imageMaxSize" : 5242880,
												"filesManagerMaxSize" : 5242880,
												"toolbarButtons" : {
													"moreText" : {
														"buttons" : [
																"paragraphFormat",
																"fontFamily",
																"fontSize",
																"bold",
																"italic",
																"underline",
																"strikeThrough",
																"textColor",
																"backgroundColor",
																"subscript",
																"superscript",
																"clearFormatting" ],
														"buttonsVisible" : 5
													},
													"moreParagraph" : {
														"buttons" : [
																"formatOL",
																"formatUL",
																"alignLeft",
																"alignCenter",
																"alignRight",
																"outdent",
																"indent",
																"alignJustify",
																"lineHeight" ],
														"buttonsVisible" : 5
													},
													"moreRich" : {
														"buttons" : [
																"insertTable",
																"insertLink",
																"insertHR",
																"emoticons",
																"specialCharacters" ],
														"buttonsVisible" : 0
													},
													"moreMisc" : {
														"buttons" : [ "undo",
																"redo",
																"fullscreen",
																"html",
																"print",
																"spellChecker",
																"selectAll" ],
														"align" : "right",
														"buttonsVisible" : 2
													}
												},
												"toolbarButtonsSM" : {
													"moreText" : {
														"buttons" : [
																"paragraphFormat",
																"fontFamily",
																"fontSize",
																"bold",
																"italic",
																"underline",
																"strikeThrough",
																"textColor",
																"backgroundColor",
																"subscript",
																"superscript",
																"clearFormatting" ],
														"buttonsVisible" : 4
													},
													"moreParagraph" : {
														"buttons" : [
																"formatOL",
																"formatUL",
																"alignLeft",
																"alignCenter",
																"alignRight",
																"outdent",
																"indent",
																"alignJustify",
																"lineHeight" ],
														"buttonsVisible" : 2
													},
													"moreRich" : {
														"buttons" : [
																"insertTable",
																"insertLink",
																"insertHR",
																"emoticons",
																"specialCharacters" ],
														"buttonsVisible" : 0
													},
													"moreMisc" : {
														"buttons" : [ "undo",
																"redo",
																"fullscreen",
																"html",
																"print",
																"spellChecker",
																"selectAll" ],
														"align" : "right",
														"buttonsVisible" : 2
													}
												},
												"toolbarButtonsXS" : {
													"moreText" : {
														"buttons" : [
																"paragraphFormat",
																"textColor",
																"backgroundColor",
																"bold",
																"italic",
																"underline",
																"strikeThrough" ],
														"buttonsVisible" : 1
													},
													"moreParagraph" : {
														"buttons" : [
																"formatOL",
																"formatUL",
																"alignLeft",
																"alignCenter",
																"alignRight" ],
														"buttonsVisible" : 0
													},
													"moreRich" : {
														"buttons" : [ "insertLink" ]
													},
													"moreMisc" : {
														"buttons" : [ "undo",
																"redo", "html" ],
														"buttonsVisible" : 0,
														"align" : "right"
													}
												},
												"htmlDoNotWrapTags" : [
														"script", "style",
														"meta", "link" ],
												"htmlAllowedStyleProps" : [ ".*" ],
												"htmlAllowedTags" : [ ".*" ],
												"htmlAllowedAttrs" : [ ".*" ],
												"fontFamily" : {
													"Dotum,sans-serif" : "Dotum",
													"Gulim,sans-serif" : "Gulim",
													"Batang,sans-serif" : "Batang",
													"Gungsuh,sans-serif" : "Gungsuh",
													"Arial,Helvetica,sans-serif" : "Arial",
													"Tahoma,Geneva,sans-serif" : "Tahoma",
													"Verdana,Geneva,sans-serif" : "Verdana",
													"Fixedsys,sans-serif" : "Fixedsys",
													"'Times New Roman',Times,serif" : "Times New Roman",
													"helvetica,sans-serif" : "Helvetica",
													"sans-serif" : "Sans-serif",
													"palatino,sans-serif" : "Palatino",
													"'Comic Sans MS',sans-serif" : "Comic Sans MS",
													"sand,sans-serif" : "Sand",
													"'Courier New',sans-serif" : "Courier New",
													"courier,sans-serif" : "Courier",
													"monospace,sans-serif" : "Monospace",
													"Georgia,serif" : "Georgia",
													"SimSun,sans-serif" : "SimSun",
													"SimHei,sans-serif" : "SimHei",
													"'MS PGothic',sans-serif" : "MS PGothic",
													"'MS PMincho',sans-serif" : "MS PMincho",
													"'MS UI PGothic',sans-serif" : "MS UI PGothic",
													"Meiryo,sans-serif" : "Meiryo"
												},
												"colorsText" : [ "#FF0000",
														"#FF6C00", "#FFAA00",
														"#FFEF00", "#A6CF00",
														"#009E25", "#00B0A2",
														"#0075C8", "#3A32C3",
														"#7820B9", "#EF007C",
														"#000000", "#252525",
														"#464646", "#636363",
														"#7D7D7D", "#9A9A9A",
														"#FFE8E8", "#F7E2D2",
														"#F5EDDC", "#F5F4E0",
														"#EDF2C2", "#DEF7E5",
														"#D9EEEC", "#C9E0F0",
														"#D6D4EB", "#E7DBED",
														"#F1E2EA", "#ACACAC",
														"#C2C2C2", "#CCCCCC",
														"#E1E1E1", "#EBEBEB",
														"#FFFFFF", "#E97D81",
														"#E19B73", "#D1B274",
														"#CFCCA2", "#61B977",
														"#53AEA8", "#518FBB",
														"#6A65BB", "#9A54CE",
														"#E573AE", "#5A504B",
														"#767B86", "#951015",
														"#6E391A", "#785C25",
														"#5F5B25", "#4C511F",
														"#1C4827", "#0D514C",
														"#1B496A", "#2B285F",
														"#45245B", "#721947",
														"#352E2C", "#3C3F45" ],
												"colorsBackground" : [
														"#FF0000", "#FF6C00",
														"#FFAA00", "#FFEF00",
														"#A6CF00", "#009E25",
														"#00B0A2", "#0075C8",
														"#3A32C3", "#7820B9",
														"#EF007C", "#000000",
														"#252525", "#464646",
														"#636363", "#7D7D7D",
														"#9A9A9A", "#FFE8E8",
														"#F7E2D2", "#F5EDDC",
														"#F5F4E0", "#EDF2C2",
														"#DEF7E5", "#D9EEEC",
														"#C9E0F0", "#D6D4EB",
														"#E7DBED", "#F1E2EA",
														"#ACACAC", "#C2C2C2",
														"#CCCCCC", "#E1E1E1",
														"#EBEBEB", "#FFFFFF",
														"#E97D81", "#E19B73",
														"#D1B274", "#CFCCA2",
														"#61B977", "#53AEA8",
														"#518FBB", "#6A65BB",
														"#9A54CE", "#E573AE",
														"#5A504B", "#767B86",
														"#951015", "#6E391A",
														"#785C25", "#5F5B25",
														"#4C511F", "#1C4827",
														"#0D514C", "#1B496A",
														"#2B285F", "#45245B",
														"#721947", "#352E2C",
														"#3C3F45" ],
												"docId" : "content"
											};
											// IE tableEditbuttons 이슈
											o["tableEditButtons"] = FroalaEditor.DEFAULTS.tableEditButtons
													.filter(function(
															tableEditButtonName) {
														return tableEditButtonName
																.indexOf("Style") === -1;
													});

											o["events"] = {
												"filesManager.beforeUpload" : function(
														files) {
													this.opts.filesManagerUploadURL = getConvertUrlBeforeUpload(this.opts.filesManagerUploadURL);
												},
												"image.beforeUpload" : function(
														images) {
													this.opts.imageUploadURL = getConvertUrlBeforeUpload(this.opts.imageUploadURL);
												},
												"image.error" : function(error,
														response) {
													if (typeof JSON != "undefined") {
														r = JSON
																.parse(response);
														alert(r["error"]);
													}
												},
												"filesManager.error" : function(
														error, response) {
													if (typeof JSON != "undefined") {
														r = JSON
																.parse(response);
														alert(r["error"]);
													}
												},
												"commands.after" : function(a) {
													if (a === "insertFiles") {
														var enableButton = document
																.querySelector(".fr-trim-button.fr-plugins-enable");
														if (enableButton)
															enableButton
																	.click();
													}

													if (a === "selectAll") {
														this.el.focus();
													}
												},
												"focus" : function() {
													if (this.iframe_document) {
														var iframeHeight = this.iframe_document.body.scrollHeight;
														this.$iframe[0].style.height = iframeHeight
																+ "px";
													}
												},
												"image.loaded" : function($img) {
													// IE에서 이미지 로드 후, 커서 위치 재조정
													if (/(trident).+rv[:\s]([\w\.]{1,9}).+like\sgecko/i
															.test(navigator.userAgent)) {
														var _this = this;
														var _img = $img[0];
														setTimeout(
																function() {
																	_this.selection
																			.setAfter(_img);
																	_this.selection
																			.restore();
																}, 300);
													}
												},
											};

											EC_FROALA_INSTANCE = new FroalaEditor(
													"textarea#content.ec-fr-never-be-duplicated",
													o,
													function() {
														EC_FROALA_ID = this.id;
														if (d != "") {
															this.html
																	.set(this.clean
																			.html(d));
															// 타겟 textarea 태그에 change 트리거링
															this.undo
																	.saveStep();
														}
														var script = document
																.createElement("script");
														script.src = "//img.echosting.cafe24.com/editors/froala/js/polyfill.min.js";
														this.$iframe.get(0).contentWindow.document.head
																.appendChild(script);
													});

											EC_FROALA_INSTANCE.$iframe[0]
													.setAttribute("id",
															"content"
																	+ "_IFRAME");
											EC_FROALA_INSTANCE.$iframe[0].contentWindow.document.body
													.setAttribute("id",
															"content" + "_BODY");

											EC_FROALA_INSTANCE.isEmptyContent = function() {
												var c = getContentFromFroala(this.id);
												// 스페이스바만 입력 저장시, validation을 위해 처리
												var val = c
														.replace(
																/\<br\/?\>|\<\/?p\>|\s|&nbsp;/gi,
																"");
												if ("" == val)
													return true;
												return false;
											};

											EC_FROALA_INSTANCE.getContentFromFroala = function() {
												return getContentFromFroala(this.id);
											};

											EC_FROALA_INSTANCE.applyContentToFroala = function(
													content) {
												return applyContentToFroala(
														content, this.id);
											};

											EC_FROALA_INSTANCE.setValueBeforeSubmit = function(
													sSection) {
												return setValueBeforeSubmit(
														sSection, this.id);
											};

											if (typeof $Editor === "undefined") {
												$Editor = {};
											}
											$Editor["content"] = EC_FROALA_INSTANCE;
										} catch (e) {
											document.getElementById("content").value = d;
											console.error(e);
										} finally {
										}
									})();

									//플로알라 에디터 내용 조회
									function getContentFromFroala(id) {
										try {
											var sFroalaId = (typeof id === "undefined") ? EC_FROALA_ID
													: id;
											var oEditor = FroalaEditor.INSTANCES
													.filter(function(instance) {
														return instance.id === sFroalaId;
													});
											if (oEditor[0].codeView.isActive()) {
												oEditor[0].codeView.toggle();
											}

											return oEditor[0].html.get(true);

										} catch (e) {
											console.error(e);
											return false;
										}
									}

									//플로알라 에디터 내용 적용
									function applyContentToFroala(content, id) {
										try {
											var sFroalaId = (typeof id === "undefined") ? EC_FROALA_ID
													: id;
											var oEditor = FroalaEditor.INSTANCES
													.filter(function(instance) {
														return instance.id === sFroalaId;
													});

											oEditor[0].html
													.set(oEditor[0].clean
															.html(content));

											// textarea 태그에 change 트리거링
											oEditor[0].undo.saveStep();
											return true;
										} catch (e) {
											console.error(e);
											return false;
										}
									}

									// useclasses 옵션 사용시, froala 커스텀 속성값 (fr-draggable) 제거
									function setValueBeforeSubmit(sSection, id) {
										try {
											var sFroalaId = (typeof id === "undefined") ? EC_FROALA_ID
													: id;
											var oEditor = FroalaEditor.INSTANCES
													.filter(function(instance) {
														return instance.id === sFroalaId;
													});

											var contents = oEditor[0].el.innerHTML;
											document.getElementById(sSection).value = contents
													.replace(
															/\sclass=("|')fr-draggable("|')|\s?fr-draggable\s?/gi,
															"");

											return true;
										} catch (e) {
											console.error(e);
											return false;
										}
									}

									//플로알라 front reset CSS 가져오기
									//Deprecated
									function getFroalaResetCSS() {
										return "//img.echosting.cafe24.com/editors/froala/css/froala_editor_reset.css;"
									}

									//플로알라 front style CSS 가져오기
									function getFroalaStyleCSS() {
										return "//img.echosting.cafe24.com/editors/froala/css/froala_style.min.css";
									}

									//플로알라 front style EC CSS 가져오기
									function getFroalaECStyleCSS() {
										return "//img.echosting.cafe24.com/editors/froala/css/froala_style_ec.min.css";
									}

									// 파일 업로드시 랜덤한 파라미터 값 추가
									function getConvertUrlBeforeUpload(
											sUploadUrl) {
										var aSplitUrl = sUploadUrl.split("?");
										var oParam = getParameterUploadUrl(aSplitUrl[1]);

										return decodeURIComponent(aSplitUrl[0]
												+ "?"
												+ "uploadPath="
												+ oParam["uploadPath"]
												+ "&uploadId="
												+ Math
														.floor(
																(Math.random() * 100000))
														.toString());
									}

									function getParameterUploadUrl(sQueryString) {
										var aParam = {};

										if (sQueryString) {
											var aFields = sQueryString
													.split("&");
											var aField = [];
											for (var i = 0; i < aFields.length; i++) {
												aField = aFields[i].split("=");
												aParam[aField[0]] = aField[1];
											}
										}
										return aParam;
									}
								</script>
							</td>
						</tr>
						<tr class="ucc">
							<th scope="row">UCC URL</th>
							<td><input id="ucc" name="ucc" size="35" value=""
								type="text" style="font-size: 10px;"></td>
						</tr>
					</tbody>
					<tbody class="">
						<tr>
							<th scope="row">첨부파일1</th>
							<td><input name="attach_file[]" type="file" style="font-size: 10px;"></td>
						</tr>
						<tr>
							<th scope="row">첨부파일2</th>
							<td><input name="attach_file[]" type="file" style="font-size: 10px;"></td>
						</tr>
						<tr>
							<th scope="row">첨부파일3</th>
							<td><input name="attach_file[]" type="file" style="font-size: 10px;"></td>
						</tr>
						<tr>
							<th scope="row">첨부파일4</th>
							<td><input name="attach_file[]" type="file" style="font-size: 10px;"></td>
						</tr>
						<tr>
							<th scope="row">첨부파일5</th>
							<td><input name="attach_file[]" type="file" style="font-size: 10px;"></td>
						</tr>
					</tbody>
					<tbody>
						<tr>
							<th scope="row">비밀번호</th>
							<td><input id="password" name="password" type="password" style="font-size: 10px;"></td>
						</tr>
						<tr>
							<th scope="row">별점</th>
							<td>
								<div class="starRev" style="font-size: 10px;">
								  <span class="starR1 on">별1_왼쪽</span>
								  <span class="starR2">별1_오른쪽</span>
								  <span class="starR1">별2_왼쪽</span>
								  <span class="starR2">별2_오른쪽</span>
								  <span class="starR1">별3_왼쪽</span>
								  <span class="starR2">별3_오른쪽</span>
								  <span class="starR1">별4_왼쪽</span>
								  <span class="starR2">별4_오른쪽</span>
								  <span class="starR1">별5_왼쪽</span>
								  <span class="starR2">별5_오른쪽</span>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				<ul>
					<li><a id="view_list" href="cs.jsp" class="button">목록</a></li>
					<li><a id="write_post" href="#" class="button">등록</a></li>
					<li><a id="cancel_post" href="cs.jsp" class="button">취소</a></li>
				</ul>
			</div>
			<!-- div_write 끝 -->

		</div>
		<!-- wrapper 끝 -->
		<!-- Footer -->
		<footer id="footer">
			<jsp:include page="/fixed/footer.jsp"></jsp:include>
		</footer>


	</div>
	<!-- Page Wrapper 끝 -->
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script>
	$('.starRev span').click(function(){
		  $(this).parent().children('span').removeClass('on');
		  $(this).addClass('on').prevAll('span').addClass('on');
		  return false;
		});
	</script>
</body>
</html>