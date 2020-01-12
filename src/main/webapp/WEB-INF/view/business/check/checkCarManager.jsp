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
    <title>水压传感器管理</title>
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

<!-- 搜索条件开始 -->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>查询条件</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">传感器ID</label>
            <div class="layui-input-inline" style="padding: 5px">
                <input type="text" name="id" autocomplete="off" class="layui-input layui-input-inline"
                       placeholder="请输入传感器ID" style="height: 30px;border-radius: 10px">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">压力值</label>
            <div class="layui-input-inline" style="padding: 5px">
                <input type="text" name="pressure" autocomplete="off" class="layui-input layui-input-inline"
                       placeholder="请输入压力值" style="height: 30px;border-radius: 10px">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">上传数据时间</label>
            <div class="layui-input-inline" style="padding: 5px">
                <input type="text" name="time" autocomplete="off" class="layui-input layui-input-inline"
                       placeholder="请输入上传数据时间" style="height: 30px;border-radius: 10px">
            </div>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-inline">
            <label class="layui-form-label">rssi值</label>
            <div class="layui-input-inline" style="padding: 5px">
                <input type="text" name="rssi" autocomplete="off" class="layui-input layui-input-inline"
                       placeholder="请输入rssi值" style="height: 30px;border-radius: 10px">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">传感器状态</label>
            <div class="layui-input-inline" style="padding: 5px">
                <input type="text" name="state" autocomplete="off" class="layui-input layui-input-inline"
                       placeholder="请输入传感器状态" style="height: 30px;border-radius: 10px">
            </div>
        </div>
        <div class="layui-inline">
            <label class="layui-form-label">传感器地址</label>
            <div class="layui-input-inline" style="padding: 5px">
                <input type="text" name="owner" autocomplete="off" class="layui-input layui-input-inline"
                       placeholder="请输入传感器地址" style="height: 30px;border-radius: 10px">
            </div>
        </div>
        <div class="layui-inline">
            <!--            <label class="layui-form-label">性别:</label>-->
            <!--            <div class="layui-input-inline">-->
            <!--                <input type="radio" name="sex" value="1" title="男">-->
            <!--                <input type="radio" name="sex" value="0" title="女">-->
            <!--            </div>&ndash;&gt;-->
            <button type="button"
                    class="layui-btn layui-btn-normal layui-icon layui-icon-search layui-btn-radius layui-btn-sm"
                    id="doSearch" style="margin-top: 4px">查询
            </button>-->
            <button type="reset"
                    class="layui-btn layui-btn-warm layui-icon layui-icon-refresh layui-btn-radius layui-btn-sm" style="margin-top: 4px">重置-->
            </button>
        </div>
    </div>

</form>

<!-- 数据表格开始 -->
<table class="layui-hide" id="Sheet2Table" lay-filter="Sheet2Table"></table>
<!--<div id="Sheet2ToolBar" style="display: none;">
    <button type="button" class="layui-btn layui-btn-sm layui-btn-radius" lay-event="add">增加</button>
    <button type="button" class="layui-btn layui-btn-danger layui-btn-sm layui-btn-radius" lay-event="deleteBatch">批量删除</button>
</div>-->
<!--<div id="Sheet2Bar" style="display: none;">-->
<!--    <a class="layui-btn layui-btn-xs layui-btn-radius" lay-event="edit">编辑</a>-->
<!--    <a class="layui-btn layui-btn-warm layui-btn-xs layui-btn-radius" lay-event="selectSheet2Role">分配角色</a>-->
<!--    <a class="layui-btn layui-btn-normal layui-btn-xs layui-btn-radius" lay-event="resetSheet2Pwd">重置密码</a>-->
<!--    <a class="layui-btn layui-btn-danger layui-btn-xs layui-btn-radius" lay-event="del">删除</a>-->
<!--</div>-->
<!--

&lt;!&ndash; 添加和修改的弹出层&ndash;&gt;
<div style="display: none;padding: 20px" id="saveOrUpdateDiv">
    <form class="layui-form" lay-filter="dataFrm" id="dataFrm">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">用户姓名:</label>
                <div class="layui-input-inline">
                    <input type="hidden" name="Sheet2id">
                    <input type="text" name="realname" lay-verify="required" placeholder="请输入用户姓名" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">登陆名称:</label>
                <div class="layui-input-inline">
                    <input type="text" name="loginname" lay-verify="required" placeholder="请输入登陆名称" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">身份证号:</label>
                <div class="layui-input-inline">
                    <input type="text" name="identity" placeholder="请输入身份证号" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">用户地址:</label>
                <div class="layui-input-inline">
                    <input type="text" name="address" placeholder="请输入用户地址" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">用户电话:</label>
                <div class="layui-input-inline">
                    <input type="text" name="phone" lay-verify="required|phone" placeholder="请输入用户电话" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">用户职位:</label>
                <div class="layui-input-inline">
                    <input type="text" name="position" placeholder="请输入用户职位" autocomplete="off" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">用户性别:</label>
                <div class="layui-input-inline">
                    <input type="radio" name="sex" value="1" checked="checked" title="男">
                    <input type="radio" name="sex" value="0" title="女">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">是否可用:</label>
                <div class="layui-input-inline">
                    <input type="radio" name="available" value="1" checked="checked" title="可用">
                    <input type="radio" name="available" value="0" title="不可用">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-input-block" style="text-align: center;padding-right: 120px">
                <button type="button"
                        class="layui-btn layui-btn-normal layui-btn-md layui-icon layui-icon-release layui-btn-radius"
                        lay-filter="doSubmit" lay-submit="">提交
                </button>
                <button type="reset"
                        class="layui-btn layui-btn-warm layui-btn-md layui-icon layui-icon-refresh layui-btn-radius">重置
                </button>
            </div>
        </div>
    </form>
</div>
-->

<%--用户分配角色的弹出层开始--%>
<div style="display: none;padding: 10px" id="selectSheet2Role">
    <table class="layui-hide" id="roleTable" lay-filter="roleTable"></table>
</div>


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
            elem: '#Sheet2Table'   //渲染的目标对象
            , url: '${yeqifu}/Sheet2/loadAllSheet2.action' //数据接口
            , title: '用户数据表'//数据导出来的标题
            , toolbar: "#Sheet2ToolBar"   //表格的工具条
            , height: 'full-210'
            , cellMinWidth: 100 //设置列的最小默认宽度
            , page: true  //是否启用分页
            , cols: [[   //列表数据
                {type: 'checkbox', fixed: 'left'}
                , {field: 'id', title: '传感器ID', align: 'center',width:'15%'}
                , {field: 'pressure', title: '压力值', align: 'center',width:'15%'}
                , {field: 'time', title: '上传数据时间', align: 'center',width:'15%'}
                , {field: 'rssi', title: 'rssi值', align: 'center',width:'15%'}
                , {field: 'state', title: '传感器状态', align: 'center',width:'15%' ,templet: function (d) {
                        return d.state == '1' ? '<font color=blue>在线</font>' : '<font color=red>不在线</font>';
                    }}
                , {field: 'owner', title: '传感器地址', align: 'center',width:'20%'}
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
                url: "${yeqifu}/Sheet2/loadAllSheet2.action?" + params,
                page:{curr:1}
            })
        });

        //监听头部工具栏事件
        table.on("toolbar(Sheet2Table)", function (obj) {
            switch (obj.event) {
                case 'add':
                    openAddSheet2();
                    break;
                case 'deleteBatch':
                    deleteBatch();
                    break;
            }
        });

        //监听行工具事件
        table.on('tool(Sheet2Table)', function (obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            if (layEvent === 'del') { //删除
                layer.confirm('真的删除【' + data.id + '】这个用户么？', function (index) {
                    //向服务端发送删除指令
                    $.post("${yeqifu}/Sheet2/deleteSheet2.action", {Sheet2id: data.Sheet2id}, function (res) {
                        layer.msg(res.msg);
                        //刷新数据表格
                        tableIns.reload();
                    })
                });
            } else if (layEvent === 'edit') { //编辑
                //编辑，打开修改界面
                openUpdateSheet2(data);
            }else if(layEvent === 'selectSheet2Role'){//分配权限
                openselectSheet2Role(data);
            }else if(layEvent === 'resetSheet2Pwd'){//重置密码
                layer.confirm('真的重置【' + data.id + '】这个用户的密码吗？', function (index) {
                    //向服务端发送重置密码
                    $.post("${yeqifu}/Sheet2/resetSheet2Pwd.action", {Sheet2id: data.Sheet2id}, function (res) {
                        layer.msg(res.msg);
                    })
                });
            }
        });

        var url;
        var mainIndex;

        //打开添加页面
        function openAddSheet2() {
            mainIndex = layer.open({
                type: 1,
                title: '添加用户',
                content: $("#saveOrUpdateDiv"),
                area: ['700px', '380px'],
                success: function (index) {
                    //清空表单数据
                    $("#dataFrm")[0].reset();
                    url = "${yeqifu}/Sheet2/addSheet2.action";
                }
            });
        }

        //打开修改页面
        function openUpdateSheet2(data) {
            mainIndex = layer.open({
                type: 1,
                title: '修改用户',
                content: $("#saveOrUpdateDiv"),
                area: ['700px', '380px'],
                success: function (index) {
                    form.val("dataFrm", data);
                    url = "${yeqifu}/Sheet2/updateSheet2.action";
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
            var checkStatus = table.checkStatus('Sheet2Table');
            var data = checkStatus.data;
            layer.alert(data.length);
            var params="";
            $.each(data,function(i,item){
                if (i==0){
                    params+="ids="+item.Sheet2id;
                }else{
                    params+="&ids="+item.Sheet2id;
                }
            });
            layer.confirm('真的要删除这些用户么？', function (index) {
                //向服务端发送删除指令
                $.post("${yeqifu}/Sheet2/deleteBatchSheet2.action",params, function (res) {
                    layer.msg(res.msg);
                    //刷新数据表格
                    tableIns.reload();
                })
            });
        }
        //打开分配角色的弹出层
        function openselectSheet2Role(data) {
            mainIndex=layer.open({
                type:1,
                title:'给【'+data.id+'】分配角色',
                content:$("#selectSheet2Role"),
                area:['700px','390px'],
                btnAlign:'c',
                btn:['<div class="layui-icon layui-icon-release">确认分配</div>','<div class="layui-icon layui-icon-close">取消分配</div>'],
                yes:function (index, layero) {
                    //得到选中的数据行
                    var checkStatus = table.checkStatus('roleTable');
                    var roleData = checkStatus.data;
                    var params="Sheet2id="+data.Sheet2id;
                    $.each(roleData,function(i,item){
                        params+="&ids="+item.roleid;
                    });
                    //保存
                    $.post("${yeqifu}/Sheet2/saveSheet2Role.action",params,function (obj) {
                        layer.msg(obj.msg);
                        //关闭弹出层
                        layer.close(mainIndex);
                    })
                },
                success:function (index) {
                    //渲染数据表格
                    var roleTableIns = table.render({
                        elem: '#roleTable'   //渲染的目标对象
                        , url: '${yeqifu}/Sheet2/initSheet2Role.action?Sheet2id='+data.Sheet2id //数据接口
                        , title: '角色列表'//数据导出来的标题
                        , cellMinWidth: 100 //设置列的最小默认宽度
                        , cols: [[   //列表数据
                            {type: 'checkbox', fixed: 'left'}
                            , {field: 'roleid', title: 'ID', align: 'center'}
                            , {field: 'rolename', title: '角色名称', align: 'center'}
                            , {field: 'roledesc', title: '角色备注', align: 'center'}
                        ]]
                    });
                }
            });
        }

    });

</script>
</body>
</html>
