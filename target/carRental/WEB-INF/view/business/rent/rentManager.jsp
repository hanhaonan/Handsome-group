<%--
  Created by IntelliJ IDEA.
  Rent: YQF
  Date: 2019/10/14
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>财务绩效</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <%--<link rel="icon" href="favicon.ico">--%>
    <link rel="stylesheet" href="${yeqifu}/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="${yeqifu}/static/css/public.css" media="all"/>
    <link rel="stylesheet" href="${yeqifu}/static/layui_ext/dtree/dtree.css">
    <link rel="stylesheet" href="${yeqifu}/static/layui_ext/dtree/font/dtreefont.css">
</head>
<body class="childrenBody">

<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-row" style="text-align: center">
        <div class="layui-inline" >
            没有财务，财务标准等级默认为3 + L
        </div>
    </div>
</form>

<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-form-item" style="text-align: center">
        <div class="layui-inline">
            <label class="layui-form-label" style="width: 780px">仅使用预计的财务状况或少于12个月的实际值启动？如果是，则财务绩效等级为3 + M*N.</label>
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="">No</option>
                    <option value="00">YES</option>
                    <option value="01">NO</option>
                </select>
            </div>
        </div>
    </div>
</form>

<!-- 搜索条件开始 -->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>财务绩效70.00％-评级= 3 + H</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3+H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">因子等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3+H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整因子等级</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整原理</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder=""></textarea>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label" >评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder="基于日期为2018年7月31日的NTR YEFS的年度审查。将签证限额从1900万美元提高至1900万美元。 CCRI简化流程请参阅所附工作表。"></textarea>
        </div>
    </div>
</form>


<%--第二个表--%>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>盈利能力</legend>
</fieldset>

<form class="layui-form" method="post" id="searchFrm">

    <p>EBITDA保证金20.00％-评级= 3 + H</p>
    <hr width="100%" color=#333 size=12></hr>

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="13.2%" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">调整比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3+H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整评级</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整理由</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder=""></textarea>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3+H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder="Annual Review based on NTR YEFS dated July 31, 2018. Increase Visa limit from $19M to $19M. CCRI Simplified process useds"></textarea>
        </div>
    </div>
</form>




<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>流动性</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <p>流动比率27.00％-等级= 3 + M</p>
    <hr width="100%" color=#333 size=12></hr>

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px"> 比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="1.10" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">调整比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整评级</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整理由</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder=""></textarea>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3+M" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
    </div>

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder=""></textarea>
        </div>
    </div>
</form>




<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>现金流量保障</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <p> 偿债覆盖率 20.00%-评级=2-L</p>
    <hr width="100%" color=#333 size=12></hr>

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px"> 比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="1.25" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">调整比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整评级</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整理由</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder=""></textarea>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2-L" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder=""></textarea>
        </div>
    </div>
</form>





<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>资本结构</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <p>资产负债表杠杆 13.00%-评级 = 5</p>
    <hr width="100%" color=#333 size=12></hr>

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px"> 比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="-6.27" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">调整比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3+H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整评级</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整理由</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder=""></textarea>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算评分</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="5" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder="Annual Review based on NTR YEFS dated July 31, 2018. Increase Visa limit from $19M to $19M. CCRI Simplified process useds"></textarea>
        </div>
    </div>
</form>



<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>融资债务杠杆 20.00%-评级 = 2M</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="-6.27" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">调整比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整评级</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整理由</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder=""></textarea>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算定额值</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2M" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder=""></textarea>
        </div>
    </div>
</form>





<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>EBITDA Margin 20.00%- Rating=3+H</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px"> 比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="13.2%" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">调整比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3+H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整评级</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整理由</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder=""></textarea>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3+H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder="Annual Review based on NTR YEFS dated July 31, 2018. Increase Visa limit from $19M to $19M. CCRI Simplified process useds"></textarea>
        </div>
    </div>
</form>



<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>财务绩效 60.00%- 评级=3+H</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2-H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">因子等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3+H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整因子等级</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整理由</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder=""></textarea>
                </div>
            </div>
        </div>

    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder="THS已向关联方Canada Fine Parts and Supplies Inc.预付了1.3MM美元的原材料。 此类预付款计划在2018年5月31日之前支销，这在Interim B / S于2018年5月31日得到证明，并且与正常的商业交易活动有关，我们将此1.3MM美元视为有形的。
股东贷款的变化归因于以外汇汇率1.2545将美元余额调整为加元。 S / H金额的减少不是真正的提款，因此不被视为S / H提款。
>9亿美元循环租约已添加到计算中。
分析基于截至2017年12月31日的NIR合并报表，并以2个借款人的单位报表为依据。 分析基于截至2017年12月31日的NIR合并报表，并以2个借款人的单位报表为依据。
 Oct Bth. 2018:中期审核仅更新了财务数据。使用2017年12月31日的实际财务数据来计算新增加请求的比率：
    RCL :$1.1NM
    EPL :$TOOM
    成交金额 :2.5亿美元
    外汇：结算风险 $2MM
    提议的增加总额: $2.05MM 信用额和 $2MM 信用额
    有关linacials的注释，但请参阅附件的Excel工作表以了解详细信息：
    RCL increase of $1.1MM: 假设完全使用率P + 0.5％
    EPL increase of $700M: 按6年摊销和5.2％的测试率
财务工作表还包括截至2018年6月30日的基于中期财务报表的比率"></textarea>
        </div>
    </div>
</form>

<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-form-item"  >
        <div class="layui-inline">
            <label class="layui-form-label" style="width: 400px">选择要计算的现金流量项目：债务清偿范围或EBITDA /利息</label>
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="">业务偿还范围</option>
                    <option value="00">0001</option>
                    <option value="01">0002</option>
                </select>
            </div>
        </div>
    </div>
</form>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>现金流量 44.44%</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <p>债务偿还覆盖率 100.00%-评级=2-L</p>
    <hr width="100%" color=#333 size=12></hr>

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px"> 比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2.61" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">调整后的比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2.35" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整后的评级</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整原理</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder="根据WS进行调整，并降级至先前批准的额定值"></textarea>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2+L" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder=""></textarea>
        </div>
    </div>
</form>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>杠杆 44,44%</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <p>总负债/ INW 50.00%-评级=3+H</p>
    <hr width="100%" color=#333 size=12></hr>

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px"> 比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2.93" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">调整比例</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2.35" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整后的评分</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整依据</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder="根据WS进行调整，并降级至先前批准的额定值"></textarea>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3+H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>

    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder=""></textarea>
        </div>
    </div>
</form>



<form class="layui-form" method="post" id="searchFrm">


    <p>总负债/ INW 50.00%-评级=3+H</p>
    <hr width="100%" color=#333 size=12></hr>

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px"> 比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="4.29" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">调整比例</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整后的评分</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整依据</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder="根据WS进行调整，并降级至先前批准的额定值"></textarea>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="3H" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>

    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder=""></textarea>
        </div>
    </div>
</form>



<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>流动资金 11.12%</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <p>流动比率 100.00%- 评级=2-M</p>
    <hr width="100%" color=#333 size=12></hr>

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px"> 比率</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="1.70" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 100px">调整比例</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2.35" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">调整后的评分</label>
                <div class="layui-inline">
                    <select name="Rating" lay-verify="">
                        <option value="00">1+</option>
                        <option value="01">1H</option>
                        <option value="02">1M</option>
                        <option value="03">1L</option>
                        <option value="04">2+H</option>
                        <option value="05">2+M</option>
                        <option value="06">2+L</option>
                        <option value="07">2H</option>
                        <option value="08">2M</option>
                        <option value="09">2L</option>
                        <option value="10">2-H</option>
                        <option value="11">2-M</option>
                        <option value="12">2-L</option>
                        <option value="13">3+H</option>
                        <option value="14">3+M</option>
                        <option value="15">3+L</option>
                        <option value="16">3H</option>
                        <option value="17">3M</option>
                        <option value="18">3L</option>
                        <option value="19">4</option>
                        <option value="20">5</option>
                        <option value="21">6</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整依据</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder="根据WS进行调整，并降级至先前批准的额定值"></textarea>
                </div>
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px">计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2-M" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>

    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder=""></textarea>
        </div>
    </div>
</form>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
</fieldset>
<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-row">
        <div class="layui-col-md6">
            <div class="layui-inline">
                2018/10/09 12:16
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-inline">
                评估最后修改人 Worth，Robert
            </div>
        </div>
    </div>

</form>


<script src="${yeqifu}/static/layui/layui.js"></script>
<script type="text/javascript">
    var tableIns;
    layui.extend({
        dtree: '${yeqifu}/static/layui_ext/dist/dtree'
    }).use(['jquery', 'layer', 'form', 'table', 'dtree'], function () {
        var $ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;
        var table = layui.table;
        var dtree = layui.dtree;
        //渲染数据表格
        tableIns = table.render({
            elem: '#roleTable'   //渲染的目标对象
            , url: '${yeqifu}/role/loadAllRole.action' //数据接口
            , title: '用户数据表'//数据导出来的标题
            , toolbar: "#roleToolBar"   //表格的工具条
            , height: 'full-150'
            , cellMinWidth: 100 //设置列的最小默认宽度
            , page: true  //是否启用分页
            , cols: [[   //列表数据
                {type: 'checkbox', fixed: 'left'}
                , {field: 'roleid', title: 'ID', align: 'center'}
                , {field: 'rolename', title: '角色名称', align: 'center'}
                , {field: 'roledesc', title: '角色备注', align: 'center'}
                , {
                    field: 'available', title: '是否可用', align: 'center', templet: function (d) {
                        return d.available == '1' ? '<font color=blue>可用</font>' : '<font color=red>不可用</font>';
                    }
                }
                , {fixed: 'right', title: '操作', toolbar: '#roleBar', align: 'center'}
            ]],
            done:function (data, curr, count) {
                //不是第一页时，如果当前返回的数据为0那么就返回上一页
                if(data.data.length==0&&curr!=1){
                    tableIns.reload({
                        page:{
                            curr:curr-1
                        }
                    })
                }
            }
        })

        //模糊查询
        $("#doSearch").click(function () {
            var params = $("#searchFrm").serialize();
            //alert(params);
            tableIns.reload({
                url: "${yeqifu}/role/loadAllRole.action?" + params,
                page:{curr:1}
            })
        });

        //监听头部工具栏事件
        table.on("toolbar(roleTable)", function (obj) {
            switch (obj.event) {
                case 'add':
                    openAddRole();
                    break;
                case 'deleteBatch':
                    deleteBatch();
                    break;
            }
        });

        //监听行工具事件
        table.on('tool(roleTable)', function (obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            if (layEvent === 'del') { //删除
                layer.confirm('真的删除【' + data.rolename + '】这个角色么？', function (index) {
                    //向服务端发送删除指令
                    $.post("${yeqifu}/role/deleteRole.action", {roleid: data.roleid}, function (res) {
                        layer.msg(res.msg);
                        //刷新数据表格
                        tableIns.reload();
                    })
                });
            } else if (layEvent === 'edit') { //编辑
                //编辑，打开修改界面
                openUpdateRole(data);
            }else if(layEvent === 'selectRoleMenu'){//分配权限
                openselectRoleMenu(data);
            }
        });

        var url;
        var mainIndex;

        //打开添加页面
        function openAddRole() {
            mainIndex = layer.open({
                type: 1,
                title: '添加角色',
                content: $("#saveOrUpdateDiv"),
                area: ['600px', '300px'],
                success: function (index) {
                    //清空表单数据
                    $("#dataFrm")[0].reset();
                    url = "${yeqifu}/role/addRole.action";
                }
            });
        }

        //打开修改页面
        function openUpdateRole(data) {
            mainIndex = layer.open({
                type: 1,
                title: '修改角色',
                content: $("#saveOrUpdateDiv"),
                area: ['600px', '300px'],
                success: function (index) {
                    form.val("dataFrm", data);
                    url = "${yeqifu}/role/updateRole.action";
                }
            });
        }

        //保存
        form.on("submit(doSubmit)", function (obj) {
            //序列化表单数据
            var params = $("#dataFrm").serialize();
            $.post(url, params, function (obj) {
                layer.msg(obj.msg);
                //关闭弹出层
                layer.close(mainIndex)
                //刷新数据 表格
                tableIns.reload();
            })
        });

        //批量删除
        function deleteBatch() {
            //得到选中的数据行
            var checkStatus = table.checkStatus('roleTable');
            var data = checkStatus.data;
            layer.alert(data.length);
            var params="";
            $.each(data,function(i,item){
                if (i==0){
                    params+="ids="+item.roleid;
                }else{
                    params+="&ids="+item.roleid;
                }
            });
            layer.confirm('真的要删除这些角色么？', function (index) {
                //向服务端发送删除指令
                $.post("${yeqifu}/role/deleteBatchRole.action",params, function (res) {
                    layer.msg(res.msg);
                    //刷新数据表格
                    tableIns.reload();
                })
            });
        }

        //打开分配菜单的弹出层
        function openselectRoleMenu(data) {
            var menuTree;
            mainIndex=layer.open({
                type:1,
                title:'分配【'+data.rolename+'】的角色',
                content:$("#selectRoleMenu"),
                area:['400px','500px'],
                btnAlign:'c',
                btn:['<div class="layui-icon layui-icon-release">确认分配</div>','<div class="layui-icon layui-icon-close">取消分配</div>'],
                yes:function (index, layero) {
                    var nodes = dtree.getCheckbarNodesParam("menuTree");
                    var roleid = data.roleid;
                    var params="roleid="+roleid;

                    $.each(nodes,function (i, item) {
                        params+="&ids="+item.nodeId;
                    })
                    //保存角色和菜单的关系
                    $.post("${yeqifu}/role/saveRoleMenu.action",params,function (obj) {
                        layer.msg(obj.msg);
                        //关闭弹出层
                        layer.close(mainIndex);
                    })
                },
                success:function (index) {
                    //初始化树
                    menuTree = dtree.render({
                        elem: "#menuTree",
                        dataStyle: "layuiStyle", //使用layui风格的数据格式
                        response:{message:"msg",statusCode:0}, //修改response中返回数据的定义
                        dataFormat: "list", //配置data的风格为list
                        checkbar:true,
                        checkbarType:"all",
                        checkbarData:"choose",
                        url: "${yeqifu}/role/initRoleMenuTreeJson.action?roleid="+data.roleid
                    });

                }
            })
        }
    });

</script>
</body>
</html>

