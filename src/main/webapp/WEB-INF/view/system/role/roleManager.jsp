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
    <title>模型参数</title>
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
<!--***************************************风险评估参数模块********************************>
 搜索条件开始 -->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>风险评估参数</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-form-item">
        <div class="layui-inline">
            <div class="layui-inline">
                <div class="layui-inline">
                    <label class="layui-form-label">评估原因:</label>
                </div>
                <div class="layui-inline">
                    <select name="city" lay-verify="">
                        <option value="">请选择评估原因</option>
                        <option value="010">咨询和顾问</option>
                        <option value="011">年度审核</option>
                        <option value="012">指示性指标</option>
                        <option value="021">中期审查</option>
                        <option value="031">新的评级</option>
                    </select>

                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">转换为客户:</label>
                <div class="layui-input-inline">
                    <input type="radio" name="available" value="1" >

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

<!--**************************************子模型参数**********************t-->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>子模型参数</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-form-item">
        <div class="layui-inline">
            <div class="layui-inline">
                <div class="layui-inline">
                    <label class="layui-form-label">私人/公共:</label>
                </div>
                <div class="layui-inline">
                    <select name="city" lay-verify="">
                        <option value="010">私人</option>
                        <option value="011">公共</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
</form>
<!--********************************合并销售和资产*********************-->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>合并销售和资产</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-form-item">
        <div class="layui-row">
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

                    <label class="layui-form-label"style="width: 150px">单位:</label>
                    <div class="layui-inline">
                        <select name="city" lay-verify="">
                            <option value="010">Actual</option>
                            <option value="011">Actual</option>
                        </select>
                    </div>


            </div>
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 150px">货币:</label>
                    <div class="layui-inline">
                    <select name="city" lay-verify="">
                        <option value="010">CAD</option>
                        <option value="011">CAD</option>
                    </select>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-row">
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 150px">合并年销售额:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                               placeholder="2834013" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 150px">实际合并年销售额:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                               placeholder="2834013" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-row">
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 150px">合并年销售额:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                               placeholder="2834013" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 150px">实际合并年销售额:</label>
                    <div class="layui-input-inline" style="padding: 5px">
                        <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                               placeholder="2834013" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </div>

        </div>
    </div>
</form>
<!--***************************************管辖区参数********************************-->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>管辖区参数</legend>
</fieldset>
<div class="layui-form">
    <div class="layui-block">
    加拿大皇家银行关于国家风险和限额的政策
    </div>
</div>
<div class="layui-form">
    <div class="layui-block">
    投资组合管理
    </div>
</div>
<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-form-item">

        <div class="layui-block">
            此客户是RBC的《县级风险和限额政策》中定义的主权实体（中央银行或中央政府）还是符合SRR要求的银行？:

                <input type="radio" name="available" value="1" title="YES">
                <input type="radio" name="available" value="0" title="NO">

        </div>
        <div class="layui-block">
            该客户是否是加拿大皇家银行关于国家风险和限额政策中定义的加拿大非联邦公共部门实体?:

                <input type="radio" name="available" value="1" title="YES">
                <input type="radio" name="available" value="0" title="NO">

        </div>
        <div class="layui-row">
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                <div class="layui-inline" >
                    <label class="layui-form-label">居住国：</label>
                    <div class="layui-form-mid">
                        Canada
                    </div>
                </div>
            </div>
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                <div class="layui-inline" >
                    <label class="layui-form-label"style="width: 220px">CRR：</label>
                    <div class="layui-inline"style="width: 120px">
                        <select name="city" lay-verify="">
                            <option value="010">1+</option>
                            <option value="011">1+</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 200px">相关上限：</label>
                    <div class="layui-form-mid">
                        CRR
                    </div>
                </div>
            </div>

        </div>

        <div class="layui-row">
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                <div class="layui-inline">
                    <label class="layui-form-label">省/州：</label>
                    <div class="layui-form-mid">
                        Ontario
                    </div>
                </div>
            </div>
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                <div class="layui-inline">
                <label class="layui-form-label"style="width: 220px">CRR审查日期：</label>
                    <div class="layui-form-mid">
                        2019/11/13
                    </div>
            </div>
            </div>
            <div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 200px">上限评级：</label>
                    <div class="layui-form-mid">
                        1+
                    </div>
                </div>
            </div>

        </div>

    </div>
</form>

<!--***************************************选型********************************-->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>选型</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-block">
        推荐所选标准模型   General-business or Commercial(Less Than 1MM)v2.16;rev=1
    </div>
    <div class="layui-block">
        <div class="layui-form-item">
            <label class="layui-form-label" style="width: 150px">模型选择注释:</label>
            <div class="layui-input-inline" style="padding: 5px">
                <input type="text" name="rolename" autocomplete="off" class="layui-input"
                       placeholder="" style="height: 30px;width: 300px;border-radius: 10px">
            </div>
        </div>
    </div>

</form>


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
<!--
<!-- 数据表格开始 -->
<%--<table class="layui-hide" id="roleTable" lay-filter="roleTable"></table>--%>
<%--<div style="display: none;" id="roleToolBar">--%>
    <%--<button type="button" class="layui-btn layui-btn-sm layui-btn-radius" lay-event="add">增加</button>--%>
    <%--<button type="button" class="layui-btn layui-btn-danger layui-btn-sm layui-btn-radius" lay-event="deleteBatch">批量删除</button>--%>
<%--</div>--%>
<%--<div id="roleBar" style="display: none;">--%>
    <%--<a class="layui-btn layui-btn-xs layui-btn-radius" lay-event="edit">编辑</a>--%>
    <%--<a class="layui-btn layui-btn-warm layui-btn-xs layui-btn-radius" lay-event="selectRoleMenu">分配菜单</a>--%>
    <%--<a class="layui-btn layui-btn-danger layui-btn-xs layui-btn-radius" lay-event="del">删除</a>--%>
<%--</div>--%>

<%--<!-- 添加和修改的弹出层-->--%>
<%--<div style="display: none;padding: 20px" id="saveOrUpdateDiv">--%>
    <%--<form class="layui-form" lay-filter="dataFrm" id="dataFrm">--%>

        <%--<div class="layui-form-item">--%>
            <%--<label class="layui-form-label">角色名称:</label>--%>
            <%--<div class="layui-input-block">--%>
                <%--<input type="hidden" name="roleid">--%>
                <%--<input type="text" name="rolename" placeholder="请输入角色名称" autocomplete="off" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<label class="layui-form-label">角色备注:</label>--%>
            <%--<div class="layui-input-block">--%>
                <%--<input type="text" name="roledesc" placeholder="请输入角色备注" autocomplete="off" class="layui-input">--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<div class="layui-inline">--%>
                <%--<label class="layui-form-label">是否可用:</label>--%>
                <%--<div class="layui-input-inline">--%>
                    <%--<input type="radio" name="available" value="1" checked="checked" title="可用">--%>
                    <%--<input type="radio" name="available" value="0" title="不可用">--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
        <%--<div class="layui-form-item">--%>
            <%--<div class="layui-input-block" style="text-align: center;padding-right: 120px">--%>
                <%--<button type="button"--%>
                        <%--class="layui-btn layui-btn-normal layui-btn-md layui-icon layui-icon-release layui-btn-radius"--%>
                        <%--lay-filter="doSubmit" lay-submit="">提交--%>
                <%--</button>--%>
                <%--<button type="reset"--%>
                        <%--class="layui-btn layui-btn-warm layui-btn-md layui-icon layui-icon-refresh layui-btn-radius">重置--%>
                <%--</button>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</form>--%>
<%--</div>--%>

<%--角色分配菜单的弹出层开始--%>
<div style="display: none" id="selectRoleMenu">
    <ul id="menuTree" class="dtree" data-id="0"></ul>
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
