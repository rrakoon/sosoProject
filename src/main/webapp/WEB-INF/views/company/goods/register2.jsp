<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<html>
<head>
<title>kubg company</title>

<script src="/resources/jquery/jquery-3.3.1.min.js"></script>

<link rel="stylesheet" href="/resources/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
   href="/resources/bootstrap/bootstrap-theme.min.css">

<link rel="stylesheet" href="/resources/css/company/c_main.css">
<script src="/resources/bootstrap/bootstrap.min.js"></script>

<script src="/resources/ckeditor/ckeditor.js"></script>
<script src="/resources/js/company/scroll.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<script src="/resources/js/company/menu_fixed.js"></script>
	<link rel="stylesheet" href="/resources/css/main/header-footer.css">
<script>


   $(document)
         .ready(
               function() {
         
                  $(".category2")
                        .on('change',
                              function() {
                           
                                 var category = $(
                                       ".category2 option:selected")
                                       .val();
                                 
                                 switch (category) {
                                 case "101":
                                    
                                    $(".cate").on('click', function(){
                                       
                                       $(".areacontain")
                                       .load(
                                             "/company/goods/details/weddinghalldetail");
                                 $('#container_box').css('height','auto');
                                 $(".cate").off('click');
                                    
                                    });
                                    
                                    break;
                                    
                                 case "102":
                                    
                                    $(".cate").on('click', function(){
                                       
                                       $(".areacontain")
                                       .load(
                                             "/company/goods/details/dressdetail");
                                 $('#container_box').css('height','auto');
                                 
                                 $(".cate").off('click');
                                    });
                                    
                                    
                                    break;
                                 case "103":
                                    $(".cate").on('click', function(){
                                    $(".areacontain")
                                          .load(
                                                "/company/goods/details/hair_makeup_detail");
                                    $('#container_box').css('height','auto');
                                    $(".cate").off('click');
                                    });
                                    break;
                                 case "104":
                                    $(".cate").on('click', function(){
                                    $(".areacontain")
                                          .load(
                                                "/company/goods/details/studiodetail");
                                    $('#container_box').css('height','auto');
                                    $(".cate").off('click');
                                    });
                                    break;
                                 case "105":
                                    $(".cate").on('click', function(){
                                    $(".areacontain")
                                          .load(
                                                "/company/goods/details/snapshot_dvd_detail");
                                    $('#container_box').css('height','auto');
                                    $(".cate").off('click');
                                    });
                                    break;
                                 case "106":
                                    $(".cate").on('click', function(){
                                    $(".areacontain")
                                          .load(
                                                "/company/goods/details/mendressdetail");
                                    $('#container_box').css('height','auto');
                                    $(".cate").off('click');
                                 });
                                    break;
                                 case "107":
                                    $(".cate").on('click', function(){
                                    $(".areacontain")
                                          .load(
                                                "/company/goods/details/hanbokdetail");
                                    $('#container_box').css('height','auto');
                                    $(".cate").off('click');
                        });
                                    break;
                                 case "108":
                                    $(".cate").on('click', function(){
                                    $(".areacontain")
                                          .load(
                                                "/company/goods/details/bouquetdetail");
                                    $('#container_box').css('height','auto');
                                    $(".cate").off('click');
               });
                                    break;
                                 case "109":
                                    $(".cate").on('click', function(){
                                    $(".areacontain")
                                          .load(
                                                "/company/goods/details/invitdetail");
                                    $('#container_box').css('height','auto');
                                    $(".cate").off('click');
                                 });
                                    break;
                                 default:
                                    alert("다시 선택해주시기 바랍니다");
                                 }
                                 
                                 
                              });
                  
                     
                  });
                  
                  
                  
               
   

</script>
<style>
body{
padding-top:0;
}
.h_mb{
margin-bottom:0;
border-bottom:1.5px solid #333;
}

/*테이블 높이값*/
.th_he{
height:70px;
}

#container_box2 table { width:100%; } 
#container_box2 table th { font-size:20px; font-weight:bold;
                     text-align:center; padding:10px; border-bottom:2px solid #333; }
#container_box2 table tr:hover { background:#eee; }
#container_box2 table td { padding:10px; text-align:center; }
#container_box2 table img { width:150px; height:auto; }
</style>

<script src="/resources/jquery/jquery-3.3.1.min.js"></script>
</head>
<body>
   <div id="root">
      <header id="header">
         <div id="header_box">
            <%@ include file="../include/header.jsp"%>
         </div>
      </header>

      <nav id="nav">
         <div id="nav_box">
            <%@ include file="../include/nav.jsp"%>
         </div>
      </nav>

      <section id="container">
         <aside>
            <%@ include file="../include/aside.jsp"%>
         </aside>
         <div id="container_all">
         <div id="container_box">
            <h3 class="goods_text_2">상품 등록</h3>
            <div class="table_title">카테고리 연결</div>
<form role="form" method="post" autocomplete="off"
                           enctype="multipart/form-data" name="register2"
                           action="/company/goods/register2">
            <table class="table_box tb_mb">
               <colgroup>
                  <col width="22%">
                  <col width="*">
                  <col width="20%">
               </colgroup>
               <tbody>
                  <tr>
                     <th>카테고리 선택</th>

                     <td class="td_sec">
                        
                           <div class="inputArea">
                              <label class="la_ta">1차 분류</label> <select class="category1">
                                 <option value="">전체</option>
                              </select> <label class="pl">2차 분류</label> <select class="category2"
                                 name="cateCode">
                                 <option value="">전체</option>
                              </select>
                           </div>
                           
                        
                     </td>
                     <td class="bt_lt"><input type="button" value="선택"
                        class="btn btn-black cate" id="btn_category_select">
                        </td>
                  </tr>
               </tbody>
            </table>
            <div class="areacontain"></div>
            </form>
         </div>
         </div>
      </section>



      <footer id="footer">
         <div id="footer_box">
            <%@ include file="../include/footer.jsp"%>
         </div>
      </footer>

   </div>

   <script>
      // 컨트롤러에서 데이터 받기
      var jsonData = JSON.parse('${category}');

      // 필요한 배열과 오브젝트 변수 생성
      var cate1Arr = new Array();
      var cate1Obj = new Object();

      // 1차 분류 셀렉트 박스에 삽입할 데이터 준비
      for (var i = 0; i < jsonData.length; i++) {

         if (jsonData[i].level == "1") { // 레벨이 1인 데이터가 있다면 
            cate1Obj = new Object(); // 초기화

            // cate1Obj에 cateCode와 cateName를 저장
            cate1Obj.cateCode = jsonData[i].cateCode;
            cate1Obj.cateName = jsonData[i].cateName;

            // cate1Obj에 저장된 값을 cate1Arr 배열에 저장
            cate1Arr.push(cate1Obj);
         }
      }

      // 1차 분류 셀렉트 박스에 데이터 삽입
      var cate1Select = $("select.category1")

      var result = "result"
      for (var i = 0; i < cate1Arr.length; i++) {

         // cate1Arr에 저장된 값을 cate1Select에 추가
         cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>"
               + cate1Arr[i].cateName + "</option>");
      }

      // 클래스가 category1인 select변수의 값이 바뀌었을 때 실행
      $(document)
            .on(
                  "change",
                  "select.category1",
                  function() {

                     // 필요한 배열과 오브젝트 변수를 생성
                     var cate2Arr = new Array();
                     var cate2Obj = new Object();

                     // 2차 분류 셀렉트 박스에 삽입할 데이터 준비
                     for (var i = 0; i < jsonData.length; i++) {

                        if (jsonData[i].level == "2") { // 레빌이 2인 데이터가 있다면
                           cate2Obj = new Object(); // 초기화

                           // cate2Obj에 cateCode, cateName, cateCodeRef를 저장
                           cate2Obj.cateCode = jsonData[i].cateCode;
                           cate2Obj.cateName = jsonData[i].cateName;
                           cate2Obj.cateCodeRef = jsonData[i].cateCodeRef;

                           // cate2Obj에 저장된 값을 cate2Arr 배열에 저장
                           cate2Arr.push(cate2Obj);
                        }
                     }

                     var cate2Select = $("select.category2");

                     /*
                     for(var i = 0; i < cate2Arr.length; i++) {
                           cate2Select.append("<option value='" + cate2Arr[i].cateCode + "'>"
                                          + cate2Arr[i].cateName + "</option>");
                     }
                      */

                     // cate2Select의 값을 제거함(초기화)
                     cate2Select.children().remove();

                     // cate1Select에서 선택한 값을 기준으로 cate2Select의 값을 조정
                     $("option:selected", this)
                           .each(
                                 function() {

                                    var selectVal = $(this).val(); // 현재 선택한 cate1Select의 값을 저장

                                    cate2Select
                                          .append("<option value='" + selectVal + "'>전체</option>"); // cate2Select의 '전체'에 현재 선택한 cate1Select와 같은 값 부여

                                    // cate2Arr의 데이터를 cate2Select에 추가
                                    for (var i = 0; i < cate2Arr.length; i++) {

                                       // 현재 선택한 cate1Select의 값과 일치하는 cate2Arr의 데이터를 가져옴
                                       if (selectVal == cate2Arr[i].cateCodeRef) {
                                          cate2Select
                                                .append("<option value='" + cate2Arr[i].cateCode + "'>"
                                                      + cate2Arr[i].cateName
                                                      + "</option>");
                                       }
                                    }
                                 });

                  });
   </script>

   
</body>
</html>