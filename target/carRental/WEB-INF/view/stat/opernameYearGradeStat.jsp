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
    <title>业务员年度业务统计</title>
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
    <legend>交叉源</legend>
</fieldset>
<div class="layui-form">
    <table class="layui-table">
        <colgroup>
            <col>
            <col>
            <col>
            <col>
            <col>
            <col>
            <col>
            <col>
            <col>
            <col>
        </colgroup>
        <thead>
        <tr>
            <th>RBC ID</th>
            <th>客户名称</th>
            <th>型号和版本</th>
            <th>SN/B</th>
            <th>Proposed TSNE (SMM)</th>
            <th>建议评级</th>
            <th>Proposed BCC</th>
            <th>下次审核日期</th>
            <th>信贷员</th>
            <th>风险所有者</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>316764513sRF </td>
            <td>THS INDUSTRES LTD. </td>
            <td>General-Commercial or Business(1MM to 25MM)20.9.rev=1</td>
            <td>B</td>
            <td>2</td>
            <td>3+H</td>
            <td>10 SAT</td>
            <td>2019/04/30</td>
            <td>Worth, Robert</td>
            <td>Lemay.Enc</td>
        </tr>
        </tbody>
    </table>
</div>


<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">步骤1：选择收件人</li>
        <li>步骤2：计算交叉评级</li>
        <li>步骤3：最终确定评级</li>
        <li>步骤4：总结</li>

    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>可用收件人</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">

                <table class="layui-hide" id="demo"></table>


            </form>
        </div>
        <div class="layui-tab-item">内容2</div>
        <div class="layui-tab-item">内容3</div>
        <div class="layui-tab-item">内容4</div>

    </div>
</div>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend></legend>
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
                评估最后修改人 Fong，Lilly
            </div>
        </div>
    </div>

</form>






<%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">--%>
    <%--<legend>查询条件</legend>--%>
<%--</fieldset>--%>

<%--<form class="layui-form" method="post" id="searchFrm">--%>
    <%--<div class="layui-form-item">--%>
        <%--<div class="layui-inline">--%>
            <%--<label class="layui-form-label">选择年份:</label>--%>
            <%--<div class="layui-input-inline" style="padding: 5px">--%>
                <%--<input type="text" class="layui-input" id="year" readonly="readonly" placeholder="yyyy" style="height: 30px;border-radius: 10px">--%>
            <%--</div>--%>
            <%--<button type="button"--%>
                    <%--class="layui-btn layui-btn-normal layui-icon layui-icon-search layui-btn-radius layui-btn-sm"--%>
                    <%--id="doSearch" style="margin-top: 4px">查询--%>
            <%--</button>--%>
            <%--<button type="reset"--%>
                    <%--class="layui-btn layui-btn-warm layui-icon layui-icon-refresh layui-btn-radius layui-btn-sm"--%>
                    <%--style="margin-top: 4px">重置--%>
            <%--</button>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</form>--%>
<%--<div id="container" style="height: 75%;width: 90%"></div>--%>
<script type="text/javascript" src="${yeqifu}/static/echarts/js/echarts.min.js"></script>
<script type="text/javascript" src="${yeqifu}/static/echarts/js/jquery-3.1.1.min.js"></script>
<script src="${yeqifu}/static/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['form','jquery'], function () {
        var form = layui.form;
        var $ = layui.jquery;
        //点击全选, 勾选
        form.on('checkbox(allChoose)', function (data) {
            var child = $(".seach-box input[type='checkbox']");
            child.each(function (index, item) {
                item.checked = data.elem.checked;
            });
            form.render('checkbox');
        });
    });





    layui.use('table', function(){
        var table = layui.table;

        //展示已知数据
        table.render({
            elem: '#demo'
            ,cols: [[ //标题栏
                {type:'checkbox'}
                ,{field: 'SRF', title: 'SRF'}
                ,{field: 'username', title: '客户名称'}
                ,{field: 'SN/B', title: 'SN/B', width: 80}
                ,{field: 'score', title: '上次批准的评分'}
                ,{field: 'bcc', title: '上次批准的BCC'}
                ,{field: 'limit', title: '上限', width: 80}
                ,{field: 'stand', title: '收件人标准评估'}
            ]]
            ,data: [{
                "SRF": "323480590"
                ,"username": "UNITED ENTERPRISE INC"
                ,"SN/B": "B"
                ,"score": "3+H POS"
                ,"bcc": "10 SAT"
                ,"limit": "CRR 1+"
                ,"stand": "Assign Notch Value D"
            }, {
                "SRF": "323480590"
                ,"username": "UNITED ENTERPRISE INC"
                ,"SN/B": "B"
                ,"score": "3+H POS"
                ,"bcc": "10 SAT"
                ,"limit": "CRR 1+"
                ,"stand": "Assign Notch Value D"
            }, {
                "SRF": "323480590"
                ,"username": "UNITED ENTERPRISE INC"
                ,"SN/B": "B"
                ,"score": "3+H POS"
                ,"bcc": "10 SAT"
                ,"limit": "CRR 1+"
                ,"stand": "Assign Notch Value D"
            } ]
            //,skin: 'line' //表格风格
            ,even: true
            //,page: true //是否显示分页
            //,limits: [5, 7, 10]
            //,limit: 5 //每页默认显示的数量
        });
    });
    // document.getElementById("check").onclick = function(){
    //     var checked = document.getElementById("check").checked;
    //     var checkson = document.getElementsByName("user");
    //     if(checked){
    //         for(var i = 0; i < checkson.length ;i++){
    //             checkson[i].checked = true;
    //         }
    //     }else{
    //         for(var i = 0; i < checkson.length ;i++){
    //             checkson[i].checked = false;
    //         }
    //     }
    // }
    // function checkboxed(objName){
    //     var objNameList=document.getElementsByName(objName);
    //
    //     if(null!=objNameList){
    //         alert("全选操作");
    //         for(var i=0;i<objNameList.length;i++){
    //             objNameList[i].checked=true;
    //         }
    //     }
    // }
    //
    // function uncheckboxed(objName){
    //     var objNameList=document.getElementsByName(objName);
    //
    //     if(null!=objNameList){
    //         alert("取消全选操作");
    //         for(var i=0;i<objNameList.length;i++){
    //             objNameList[i].checked=false;
    //         }
    //     }
    // }
</script>
<script type="text/javascript">
    layui.use('element', function(){
        var $ = layui.jquery
            ,element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块

        //触发事件
        var active = {
            tabAdd: function(){
                //新增一个Tab项
                element.tabAdd('demo', {
                    title: '新选项'+ (Math.random()*1000|0) //用于演示
                    ,content: '内容'+ (Math.random()*1000|0)
                    ,id: new Date().getTime() //实际使用一般是规定好的id，这里以时间戳模拟下
                })
            }
            ,tabDelete: function(othis){
                //删除指定Tab项
                element.tabDelete('demo', '44'); //删除：“商品管理”


                othis.addClass('layui-btn-disabled');
            }
            ,tabChange: function(){
                //切换到指定Tab项
                element.tabChange('demo', '22'); //切换到：用户管理
            }
        };

        $('.site-demo-active').on('click', function(){
            var othis = $(this), type = othis.data('type');
            active[type] ? active[type].call(this, othis) : '';
        });

        //Hash地址的定位
        var layid = location.hash.replace(/^#test=/, '');
        element.tabChange('test', layid);

        element.on('tab(test)', function(elem){
            location.hash = 'test='+ $(this).attr('lay-id');
        });

    });
    layui.use(['jquery', 'layer', 'form', 'table', 'laydate'], function () {
        var $ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;
        var table = layui.table;
        var dtree = layui.dtree;
        var laydate = layui.laydate;

        laydate.render({
            elem: '#year',
            type: 'year',
            value:new Date()
        });

        $("#doSearch").click(function () {
            getData();
        });

        function getData() {
            var year = $("#year").val();
            if (year===""){
                year=new Date().getFullYear();
            }
            $.get("${yeqifu}/stat/loadOpernameYearGradeStatJson.action",{year:year},function (data) {
                var dom = document.getElementById("container");
                var myChart = echarts.init(dom);
                var app = {};
                option = null;
                app.title = '坐标轴刻度与标签对齐';

                option = {
                    title:{
                        text:'年度业务员销售额统计',
                        x:'center'
                    },
                    color: ['#3398DB'],
                    tooltip : {
                        trigger: 'axis',
                        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    grid: {
                        top:'20%',
                        left: '3%',
                        right: '4%',
                        bottom: '1%',
                        containLabel: true
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : data.name,
                            axisTick: {
                                alignWithLabel: true
                            }
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    series : [
                        {
                            name:'销售额',
                            type:'bar',
                            barWidth: '30%',
                            data:data.value
                        }
                    ]
                };
                ;
                if (option && typeof option === "object") {
                    myChart.setOption(option, true);
                }
            });
        }
        getData();
    });

</script>
</body>
</html>
