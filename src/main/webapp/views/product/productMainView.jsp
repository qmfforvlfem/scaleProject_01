<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<style>
        div{
            box-sizing: border-box;
        }
        div *{
            list-style-type:none;
        }
        .wrap{
            width:1200px; 
            height:1000px;
            margin:auto;
        }
        .wrap>div{width:100%;}
        .header{height:25%;}
        .banner{height:10%;}
        .content{height:60%;}
        .footer{height:5%;}
        .header>div, .content>div{
            width:100%;
            float:left;
        }
        .header-1{height:30%;}
        .header-2{height:10%;}
        .header-3{height:60%;}
        
        .content > .filterbox{
            float: left;  margin:auto;
        }
        .content > .listbox > * {
            width: 100%; float: left; margin:auto;
        }

        .img-box > img {
            width:100px;
            display:block;
        }
        .row::after {
            content:"";
            display:block;
            clear:both;
        }
        .cell {
            float:left;
            box-sizing:border-box
        }
        .cell {
            width:20%;
            padding:0 10px;
            margin-top:20px;
            cursor:pointer;
        }
        .listbox .row {
            margin:0 -10px;
        }
        .listbox.cell > .prod-name, .list-box-1 .cell > .prod-price {
            text-align:center;
            font-weight:bold;
            margin-top:5px;
        }
        
  </style>
</head>
<body>
	  <div class="wrap">
        <div class="header">
            <div class="header-1" align="center">
                <h1>SHOP</h1>
            </div>
            <div class="search-box" align="right">
            <input class="searchbox" type="text" placeholder="Search">
            </div>
            <br>
            <div class="header-2">
                <button type="button" class="btn btn-secondary" id="topBtn">신발</button>
                <button type="button" class="btn btn-secondary" id="topBtn1">지갑</button>
                <button type="button" class="btn btn-secondary" id="topBtn2">테크</button>
            </div>
            <br>
            <div class="header-3">
                    <div class="thumbnail-1">	
                        <img src="" width="70" height="77">
                        <p>Nike</p>
                    </div>
            </div>
        </div>

        <!--배너이미지-->
        
        <div class="banner">
            <img src="">
        </div>
       

        <!-- 필터 : 사이드바 -->
        <div class="content">
            <div class="filterbox" id="filterbox">
                <div class="filter">
                    <span><h3>필터</h3></span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <span id="eraser"><u>모두지우기</u></span>
                </div>
                <div class="category-box">
                    <li class="cate" style="cursor:pointer">
                        카테고리
                        <ul class="sub" style="display:none">
                            <li><input type="checkbox" id="ckb">신발</li>
                            <li><input type="checkbox" id="ckb1">지갑</li>
                            <li><input type="checkbox" id="ckb2">테크</li>
                        </ul>
                    </li>
                    <li class="brand" style="cursor:pointer">
                        브랜드
                        <ul class="sub1" style="display:none">
                            <div id="b-box" style="overflow:auto; width:120px; height:100px">
                            <li><input type="checkbox">apple</li>
                            <li><input type="checkbox">z</li>
                            <li><input type="checkbox">apple</li>
                            <li><input type="checkbox">apple</li>
                            </div>
                        </ul>
                    </li>
                    <li  class="size" style="cursor:pointer">
                        사이즈
                        <ul class="sub2" style="display:none">
                            <li><button>220</button><button>225</button><button>230</button></li>
                            <li><button>235</button><button>240</button><button>245</button></li>
                            <li><button>250</button><button>255</button><button>260</button></li>
                            <li><button>265</button><button>270</button><button>275</button></li>
                            <li><button>280</button><button>285</button><button>290</button></li>
                            <li><button>295</button><button>300</button></li>
                        </ul>
                    </li>
                    <li class="price" style="cursor:pointer">
                        가격
                        <ul class="sub3" style="display:none">
                            <li><input type="checkbox">10만원이하</li>
                            <li><input type="checkbox">10만원~30만원이하</li>
                            <li><input type="checkbox">30만원~50만원이하</li>
                            <li><input type="checkbox">50만원이상</li>
                        </ul>
                    </li>
                </div>

                <!-- 필터바 -->
                <script>
                    $(".cate").click(function(){
                        if($(".sub").is(":visible")){
                            $(".sub").slideUp();
                        }else{
                            $(".sub").slideDown();
                        }
                    })
                    $(".brand").click(function(){
                        if($(".sub1").is(":visible")){
                            $(".sub1").slideUp();
                        }else{
                            $(".sub1").slideDown();
                        }
                    })
                    $(".size").click(function(){
                        if($(".sub2").is(":visible")){
                            $(".sub2").slideUp();
                        }else{
                            $(".sub2").slideDown();
                        }
                    })
                    $(".price").click(function(){
                        if($(".sub3").is(":visible")){
                            $(".sub3").slideUp();
                        }else{
                            $(".sub3").slideDown();
                        }
                    })
                </script>

                <!-- 탑버튼 -->
                <script>
                    $(function(){
                        $("#topBtn").click(function(){
                            let check = $("ckb").is(":checked");
                            $("#ckb").attr("checked", "checked");
                        });
                        $("#topBtn1").click(function(){
                            let check = $("ckb1").is(":checked");
                            $("#ckb1").attr("checked", "checked");
                        });
                        $("#topBtn2").click(function(){
                            let check = $("ckb2").is(":checked");
                            $("#ckb2").attr("checked", "checked");
                        });
                    });
                </script>

                <!-- 모두 지우기(체크박스 해제) -->
                


            
            <div class="listbox" id="listbox">
                <div id="psort">
                    <span class="btnBox" id="btnBox">
                        <button>버튼</button>
                    </span>
                    <div class="sortbar" align="right"> 
                        <select name="sort" id="sort">
                            <option value="popular">인기순</option>
                            <option value="newest">최신순</option>
                        </select>
                    </div>
                </div>
                    <div id="plist">
                        <ul class="row">
                            <li class="cell">
                                <div class="img-box">
                                    <img src="resources/s_sample.jpg">
                                </div>
                                <div class="brand-name">Jordan</div>
                                <div class="product-name">Joradn Air 2022 </div>
                                <div class="product-price">즉시구매가</div>
                                <div class="p-like">♡</div>
                            </li>
                            <li class="cell">
                                <div class="img-box">
                                    <img src="resources/s_sample.jpg" alt="" >
                                </div>
                                <div class="brand-name">Jordan</div>
                                <div class="product-name">Joradn Air 2022 </div>
                                <div class="product-price">즉시구매가</div>
                                <div class="p-like">♡</div>
                            </li>
                            <li class="cell">
                                <div class="img-box">
                                    <img src="resources/s_sample.jpg" alt="">
                                </div>
                                <div class="brand-name">Jordan</div>
                                <div class="product-name">Joradn Air 2022 </div>
                                <div class="product-price">즉시구매가</div>
                                <div class="p-like">♡</div>
                            </li>
                            <li class="cell">
                                <div class="img-box">
                                    <img src="resources/s_sample.jpg" alt="">
                                </div>
                                <div class="brand-name">Jordan</div>
                                <div class="product-name">Joradn Air 2022 </div>
                                <div class="product-price">즉시구매가</div>
                                <div class="p-like">♡</div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            footer
        </div>
    </div>
</body>
</html>