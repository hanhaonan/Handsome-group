<%--
  Created by IntelliJ IDEA.
  User: YQF
  Date: 2019/9/30
  Time: 22:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>日志管理</title>
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
    <link rel="stylesheet" href="${yeqifu}/static/layui_ext/dtree/font/dtreefont.css">
    <%--<style>--%>
        <%--.layui-form-label{--%>
            <%--width: 150px;--%>
        <%--}--%>
        <%--.layui-input-block {--%>
            <%--margin-left: 130px;--%>
            <%--min-height: 36px--%>
        <%--}--%>
    <%--</style>--%>
</head>
<body class="childrenBody">

<!-- 搜索条件开始 -->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>工业3.00％-额定值= 2-M</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-form-item">
        <div class="layui-inline">
            <div class="layui-inline">
                <div class="layui-inline">
                    <label class="layui-form-label" style="width: 150px">计算额定值 2-M:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>

            </div>
            <div class="layui-inline">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 150px">调整因子额定值</label>
                </div>
                <div class="layui-inline">
                    <select name="city" lay-verify="">
                        <option value="010"> </option>
                        <option value="011"> </option>
                    </select>
                </div>
            </div>
            <div class="layui-inline">
                <div class="layui-form-item">
                    <label class="layui-form-label"style="width: 150px">调整额定因子值:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>

        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">评论:</label>
            <div class="layui-input-block" style="padding: 5px">
                <input type="text" name="rolename" autocomplete="off" class="layui-input"
                       placeholder="" style="height: 30px;border-radius: 10px">
            </div>
        </div>
    </div>
</form>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>行业风险等级100％</legend>
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
        </colgroup>
        <thead>
        <tr>
            <th></th>
            <th>SIC代码</th>
            <th>SIC说明</th>
            <th>IRR%</th>
            <th>IRR名称</th>
            <th>IRR</th>
            <th>IRR批准日期</th>
            <th>IRR NRD</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>1</td>
            <td>6411</td>
            <td>保险代理人,经纪与服务</td>
            <td>100</td>
            <td>保险经纪人</td>
            <td>2-M</td>
            <td>2017/4/1</td>
            <td>2020/4/1</td>
        </tr>

        </tbody>
    </table>
</div>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
</fieldset>
<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-row">
        <div class="layui-col-md6">
            <div class="layui-inline">
                评估最后修改于2019/09/03 18:28
            </div>
        </div>
        <div class="layui-col-md6">
            <div class="layui-inline">
                评估最后修改人 Fong，Lilly
            </div>
        </div>
    </div>

</form>
<!-- 数据表格开始 -->
<%--<table class="layui-hide" id="logInfoTable" lay-filter="logInfoTable"></table>--%>
<%--<div style="display: none;" id="logInfoToolBar">--%>
    <%--<button type="button" class="layui-btn layui-btn-danger layui-btn-sm layui-btn-radius" lay-event="deleteBatch">批量删除</button>--%>
<%--</div>--%>
<%--<div id="logInfoBar" style="display: none;">--%>
    <%--<a class="layui-btn layui-btn-danger layui-btn-xs layui-btn-radius" lay-event="del">删除</a>--%>
<%--</div>--%>


<script src="${yeqifu}/static/layui/layui.js"></script>
<script type="text/javascript">
    var tableIns;
    layui.use(['jquery', 'layer', 'form', 'table','laydate'], function () {
        var $ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;
        var table = layui.table;
        var laydate = layui.laydate;

        //渲染时间
        laydate.render({
            elem:'#startTime',
            type:'datetime'
        });
        laydate.render({
            elem:'#endTime',
            type:'datetime'
        });

        //渲染数据表格
        tableIns = table.render({
            elem: '#logInfoTable'   //渲染的目标对象
            , url: '${yeqifu}/logInfo/loadAllLogInfo.action' //数据接口
            , title: '用户数据表'//数据导出来的标题
            , toolbar: "#logInfoToolBar"   //表格的工具条
            , height: 'full-190'
            , cellMinWidth: 100 //设置列的最小默认宽度
            , page: true  //是否启用分页
            , cols: [[   //列表数据
                {type: 'checkbox', fixed: 'left'}
                , {field: 'id', title: 'ID', align: 'center'}
                , {field: 'loginname', title: '登陆名称', align: 'center'}
                , {field: 'loginip', title: '登陆IP', align: 'center'}
                , {field: 'logintime', title: '登陆时间', align: 'center'}
                , {fixed: 'right', title: '操作', toolbar: '#logInfoBar', align: 'center'}
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
                url: "${yeqifu}/logInfo/loadAllLogInfo.action?" + params,
                page:{curr:1}
            })
        });

        //监听头部工具栏事件
        table.on("toolbar(logInfoTable)", function (obj) {
            switch (obj.event) {
                case 'deleteBatch':
                    deleteBatch();
                    break;
            }
        });

        //监听行工具事件
        table.on('tool(logInfoTable)', function (obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            if (layEvent === 'del') { //删除
                layer.confirm('真的删除【' + data.loginname + '】这个日志么？', function (index) {
                    //向服务端发送删除指令
                    $.post("${yeqifu}/logInfo/deleteLogInfo.action", {id: data.id}, function (res) {
                        layer.msg(res.msg);
                        //刷新数据表格
                        tableIns.reload();
                    })
                });
            }
        });

        //批量删除
        function deleteBatch() {
            //得到选中的数据行
            var checkStatus = table.checkStatus('logInfoTable');
            var data = checkStatus.data;
            var params="";
            $.each(data,function(i,item){
                if (i==0){
                    params+="ids="+item.id;
                }else{
                    params+="&ids="+item.id;
                }
            });
            layer.confirm('真的要删除这些日志么？', function (index) {
                //向服务端发送删除指令
                $.post("${yeqifu}/logInfo/deleteBatchLogInfo.action",params, function (res) {
                    layer.msg(res.msg);
                    //刷新数据表格
                    tableIns.reload();
                })
            });
        }

    });

</script>
</body>
</html>
