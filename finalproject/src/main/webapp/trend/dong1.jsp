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
        background-color: #FFFFFF;

    }
    
    #dong1Title1{
       height: 50px;
       float: left;
       font-size: 25px;

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
        text-align: left;
        line-height: 20px;
        
    }
 
    /* 테이블 스타일용 */
    .title {
        text-align: left;
        font-weight: bold;
    }
/*     .content {
        border-bottom: 1px solid #efefef;
        padding: 10px 10px 10px 10px;
        text-align: center;               
        white-space: nowrap;
        text-overflow: ellipsis;
        overflow: hidden;
        border-color: white;
         
    } */
    .dong1_border {
    border-color: white;
     
    }
    .content dong1_border {
    border-color: white;
    line-height: 30px;
    }
    
    {white-space,nowrap}
</style>

</head>
<body>
<table id="dong1" cellspacing="0">
    <tr>
        <td>
        <div id="dong1Title1">
        <strong>기간별 상승률 상위 코인 </strong>
        </div>
        <div id="dong1Title2">
                   업비트&nbsp;
        </div>
            <div id="dong1HeadScroll">
                <table id="dong1Head" border="0" >
                    <colgroup>
                        <col style="width:250px;" />
                        <col style="width:120px;" />
                        <col style="width:120px;" />
                        <col style="width:120px;" />
                        <col style="width:120px;" />
                        <col style="width:120px;" />
                        <col style="width:120px;" />
                    </colgroup>
                    <tr>
                        <td class="title">&nbsp;</td>
                        <td class="title"><a id="hh" href="">BTC마켓<img src="../images/ico_change.b47e27e.png"/></a></td>
                        <td class="title"><a id="hh" href="">1주일<img src="../images/ico_sort.8b2b967.png"/></a></td>
                        <td class="title"><a id="hh" href="">1개월<img src="../images/ico_sort.8b2b967.png"/></a></td>
                        <td class="title"><a id="hh" href="">3개월<img src="../images/ico_sort.8b2b967.png"/></a></td>
                        <td class="title"><a id="hh" href="">6개월<img src="../images/ico_sort.8b2b967.png"/></a></td>
                        <td class="title"><a id="hh" href="">1 년<img src="../images/ico_sort.8b2b967.png"/></a></td>
                  
                    </tr>
                </table>
                
            </div>
            <div id="dong1BodyScroll">
                <table id="dong1Body" border="0">
                    <colgroup>
                        <col style="width:250px;" class="dong1_border" />
                        <col style="width:120px;" class="dong1_border" />
                        <col style="width:120px;" class="dong1_border" />
                        <col style="width:120px;" class="dong1_border" />
                        <col style="width:120px;" class="dong1_border" />
                        <col style="width:120px;" class="dong1_border" />
                        <col style="width:120px;" class="dong1_border" />
                        
                    </colgroup>
                    <tr>
                        <td class="content dong1_border" style="text-align: left; "><img src="../logos/BCC.png" width=30px height=30px>&nbsp;<a href=""><strong><font size=4>비트코인</font></strong></a></td>
                        <td class="content dong1_border" ><i>BCC/BTC</i></td>
                        <td class="content dong1_border" ><p>+26.69%</p></td>
                        <td class="content dong1_border" ><p>+32.88%</p></td>
                        <td class="content dong1_border" ><p>+1.69%</p></td>
                        <td class="content dong1_border" ><p>+33.69%</p></td>
                        <td class="content dong1_border" ><p>+0.69%</p></td>
                    </tr>
                    <tr>
                        <td class="content right_border" style="text-align: left;"><img src="../logos/SLS.png" width=30px height=30px>&nbsp;<a href=""><strong><font size=4>살루스</font></strong></a></td>
                        <td class="content right_border" ><i>SLS/BTC</i></td>
                        <td class="content right_border" ><p>-30.69%</p></td>
                        <td class="content right_border" ><p>+32.88%</p></td>
                        <td class="content right_border" ><p>+1.69%</p></td>
                        <td class="content right_border" ><p>+33.69%</p></td>
                        <td class="content right_border" ><p>+0.69%</p></td>
                    </tr>
                    <tr>
                        <td class="content right_border" style="text-align: left;"><img src="../logos/MCO.png" width=30px height=30px>&nbsp;<a href=""><strong><font size=4>모나코</font></strong></a></td>
                        <td class="content right_border" ><i>MCO/BTC</i></td>
                        <td class="content right_border" ><p>+26.69%</p></td>
                        <td class="content right_border" ><p>+32.88%</p></td>
                        <td class="content right_border" ><p>+1.69%</p></td>
                        <td class="content right_border" ><p>+33.69%</p></td>
                        <td class="content right_border" ><p>+0.69%</p></td>
                    </tr>
                    <tr>
                        <td class="content right_border" style="text-align: left;"><img src="../logos/FTC.png" width=30px height=30px>&nbsp;<a href=""><strong><font size=4>모나코</font></strong></a></td>
                        <td class="content right_border" ><i>FTC/BTC</i></td>
                        <td class="content right_border" ><p>+26.69%</p></td>
                        <td class="content right_border" ><p>+32.88%</p></td>
                        <td class="content right_border" ><p>+1.69%</p></td>
                        <td class="content right_border" ><p>+33.69%</p></td>
                        <td class="content right_border" ><p>+0.69%</p></td>
                    </tr>                                          

                </table>
            </div>
        </td>
    </tr>
</table>

</body>
</html>
