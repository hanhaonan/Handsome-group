<%--
  Created by IntelliJ IDEA.
  User: YQF
  Date: 2019/10/22
  Time: 18:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>daoshu </title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta http-equiv="Access-Control-Allow-Origin" content="*">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${yeqifu}/static/layui/css/layui.css" media="all"/>
    <link rel="stylesheet" href="${yeqifu}/static/css/public.css" media="all"/>
</head>
<body style="height: 100%; margin: 0">
<!-- 搜索条件开始 -->


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>资金需求和获得 15.00%-评级=2-M</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <%--    <p>总负债/ INW 50.00%-评级=3+H</p>--%>
    <%--    <hr width="100%" color=#333 size=12></hr>--%>

    <div class="layui-form-item">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md4 layui-col-lg4">
            <div class="layui-inline">
                <label class="layui-form-label"style="width: 150px"> 计算等级</label>
                <div class="layui-input-inline" style="padding: 5px">
                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"
                           placeholder="2-M" style="height: 30px;border-radius: 10px">
                </div>
            </div>
        </div>
        <%--        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">--%>
        <%--            <div class="layui-inline">--%>
        <%--                <label class="layui-form-label"style="width: 100px">调整比例</label>--%>
        <%--                <div class="layui-input-inline" style="padding: 5px">--%>
        <%--                    <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"--%>
        <%--                           placeholder="2.35" style="height: 30px;border-radius: 10px">--%>
        <%--                </div>--%>
        <%--            </div>--%>
        <%--        </div>--%>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md4 layui-col-lg4">
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
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md4 layui-col-lg4">
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label"style="width: 150px">调整原理</label>
                <div class="layui-inline">
                    <textarea name="desc" class="layui-textarea" placeholder=""></textarea>
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
    <legend>管理深度/质量和继任计划 40.00%- 评级= 3+M</legend>
</fieldset>


<form class="layui-form" action="">
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input name="sex" title="[2+M]能够持续不断地超过多个来源的可能需求。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[2 M]能够持续不断地超出可能的需求。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title=" [2-M]能够满足/超过可能的需求。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title=" [3+M]有限的股权" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[3M]对股权的怀疑和限制。" type="radio" checked="" value="男">
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block" style="height:300px ">
            <textarea class="layui-textarea" style="height: 300px" placeholder="客户财产的评估价值为8.9亿美元（2016年12月），而目前的贷款余额为60.94亿美元，按揭贷款为68％，如果业务需要，财产的权益可能是资金来源之一。
根据LY的PSOA，即所有者的广告]。 NW为$ 5,386M，其中包括现金和CSV的美国人寿保险和房地产。
评级不变。
"></textarea>
        </div>
    </div>
</form>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>获得其他资金来源 10.00%- 评级=2-M</legend>
</fieldset>


<form class="layui-form" action="">
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input name="sex" title=" [2+M] 能够持续不断地超过多个来源的可能需求。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[2 M] 能够持续显着超出可能的需求。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[2-M] 能够满足/超出可能的需求。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[3+M] 无法获得其他资金来源。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title=" [3 M] 对其他资金来源的怀疑和限制。" type="radio" checked="" value="男">
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block" style="height:300px ">
            <textarea class="layui-textarea" style="height: 300px" placeholder=" 满足债务义务后，现金流量足以满足业务需求。
 评级不变。
"></textarea>
        </div>
    </div>
</form>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
</fieldset>

<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-row">
        <div class="layui-col-md6">
            <div class="layui-inline">
                评估最后修改于2018/10/09 12:16
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-inline">
                评估最后修改人 Worth，Robert
            </div>
        </div>
    </div>
</form>

<%--<script type="text/javascript" src="${yeqifu}/static/echarts/js/echarts.min.js"></script>--%>
<script type="text/javascript" src="${yeqifu}/static/echarts/js/jquery-3.1.1.min.js"></script>
<script src="${yeqifu}/static/layui/layui.js"></script>

<script type="text/javascript">

    layui.use(['jquery', 'layer', 'form'], function () {
        var $ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;

        $("#doSearch").click(function () {
            var area=$("#area").serialize();

            getData(area);
        });

        function getData(area) {
            $.get("${yeqifu}/stat/loadCustomerAreaSexStatJson.action",area,function (data) {
                for(var i=0;i<data.length;i++){
                    if(data[i].name == 0){
                        data[i].name = "女"
                    }
                    if(data[i].name == 1){
                        data[i].name = "男"
                    }
                }
                var dom = document.getElementById("container");
                var myChart = echarts.init(dom);
                var app = {};
                option = null;
                option = {
                    title: {
                        text: '汽车出租系统客户地区性别统计',
                        x: 'center',
                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: "{a} <br/>{b} : {c} ({d}%)"
                    },
                    legend: {
                        orient: 'vertical',
                        left: 'left',
                        data: data
                    },
                    series: [
                        {
                            name: '客户数量(占比)',
                            type: 'pie',
                            radius: '55%',
                            center: ['50%', '60%'],
                            data: data,
                            itemStyle: {
                                emphasis: {
                                    shadowBlur: 10,
                                    shadowOffsetX: 0,
                                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                                }
                            }
                        }
                    ]
                };
                ;
                if (option && typeof option === "object") {
                    myChart.setOption(option, true);
                }
            })
        }
    });

</script>
</body>
</html>
