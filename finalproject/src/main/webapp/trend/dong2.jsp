<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
    #dong1 {
        /*
         *  화면에 보여야 할 Table의 가로크기를 잡아줍니다.
         */
        width: 1000px;
        table-layout: fixed;
        border: solid 1px;
    }
    
    #dong1Title1{
       height: 50px;
       float: left;
       font-size: 30px;

    }
    #dong1Title2{
       height: 50px;
       float: right;
       font-size: 20px;

    }
    #dong1HeadScroll {
        /*
         *  안의 내용이 790보다 길게 적용이 되므로 overflow-x, overflow-y를 hidden을 걸어줘서 설정한 가로너비만큼만 화면에 보이도록 잡아줍니다.
         */
        width: 100%;
        overflow-x: hidden;
        overflow-y: hidden;
        border-top: 2px solid #d0d0d0;
    }
    #dong1Head {
        /*
         *  Table의 필드명의 너비를 여기에서 지정합니다.
         *  필드명을 보여줄 테이블은 body보다 하나의 td를 더 가지며 마지막 td는 아무것도 입력하지 않고 크기만 잡아줍니다.
         *  이렇게 하는 이유는 데이터를 보여주는 테이블은 세로 스크롤의 가로두께만큼 더 이동하기 때문입니다.
         */
        table-layout: fixed;
        background-color: #efefef;
        padding-top: 5px;
        width:1000px;
        height: 30px;
        border-collapse: collapse;
    }
    #dong1BodyScroll {
        /*
         *  overflow-x, overflow-y는 scroll로 지정하고,
         *  height는 테이블의 데이터가 나올 기본 크기를 잡아줍니다.
         *  세로길이를 잡아주지 않으면 overflow-y가 걸리지 않습니다.
         */
        width: 100%;
        height: 300px;
        overflow-x: hidden;
        overflow-y: scroll;
        border-top: 1px solid #d0d0d0;
    }
    #dong1Body {
        /*
         * tblBody의 데이터는 필요한 열의 수만큼만 만드시고 헤더와 col의 width는 동일해야 합니다.
         */
        width:1000px;
        table-layout: fixed;
        height: 20px;
        border-collapse: collapse;
    }
 
    /* 테이블 스타일용 */
    .title {
        text-align: center;
        font-weight: bold;
    }
    .content {
        border-bottom: 1px solid #efefef;
        padding: 10px 10px 10px 10px;
        text-align: center;               
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
         
    }
    
    {white-space,nowrap}
</style>

</head>
<body>
<table id="dong1" cellspacing="0">
    <tr>
        <td>
        <div id="dong1Title1">
        <strong>코인 시가 총액 </strong>  
        </div>
        <div id="dong1Title2">
        (coinmarketcap.com, 단위: KRW)&nbsp;        
        </div>
            <div id="dong1HeadScroll">
                <table id="dong1Head" border="0" >
                    <colgroup>
                        <col style="width:100px;" />
                        <col style="width:300px;" />
                        <col style="width:200px;" />
                        <col style="width:200px;" />
                        <col style="width:200px;" />
                    </colgroup>
                    <tr>
                        <td class="title">&nbsp;</td>
                        <td class="title">&nbsp;</td>
                        <td class="title"><a href="">시가총액<img src="../images/ico_change.b47e27e.png"></a></td>
                        <td class="title"><a href="">거래대금(24H)<img src="../images/ico_sort.8b2b967.png"></a></td>
                        <td class="title"><a href="">업비트거래<img src="../images/ico_sort.8b2b967.png"></a></td>
                    </tr>
                </table>
                
            </div>
            <div id="dong1BodyScroll">
                <table id="dong1Body" border="0">
                    <colgroup>
                        <col style="width:100px;" class="right_border" />
                        <col style="width:300px;" class="right_border" />
                        <col style="width:200px;" class="right_border" />
                        <col style="width:200px;" class="right_border" />
                        <col style="width:200px;" class="right_border" />
                    </colgroup>
                    <tr>
                        <td class="content right_border" ><strong>1</strong></td>                    
                        <td class="content right_border" ><img src="../logos/BCC.png" width=30px height=30px><a href=""><strong>비트코인</strong></a></td>
                        <td class="content right_border" ><p>1,698,021억원</p></td>
                        <td class="content right_border" ><p>1,698,021억원</p></td>
                        <td class="content right_border" ><input type="button" value="거래하기"></td>
                    </tr>

                </table>
            </div>
        </td>
    </tr>
</table>

</body>
</html>