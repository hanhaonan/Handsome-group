<%--
  Created by IntelliJ IDEA.
  User: YQF
  Date: 2019/9/30
  Time: 22:57
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>公告管理</title>
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

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>金融</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-form-item">
        <button class="layui-btn layui-btn-primary layui-btn-sm3" type="button">显示过滤器</button>
        <button class="layui-btn layui-btn-primary layui-btn-sm3" type="button">重置过滤器</button>
    </div>
</form>
<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6 layui-col-lg3">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <div class="layui-inline">
                        <label class="layui-form-label">报表类型</label>
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
            </div>
        </div>


        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6 layui-col-lg3">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <div class="layui-inline">
                        <label class="layui-form-label">报表来源:</label>
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
            </div>
        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label">日期从：</label>
                <div class="layui-input-inline">
                    <input name="date" class="layui-input" id="date" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
                </div>
            </div>
        </div>

        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6 layui-col-lg3">
            <div class="layui-inline">
                <label class="layui-form-label">日期至：</label>
                <div class="layui-input-inline">
                    <input name="date" class="layui-input" id="date1" type="text" placeholder="yyyy-MM-dd" autocomplete="off" lay-verify="date">
                </div>
            </div>
        </div>
    </div>
</form>


<%--进行表格展示，同时将相关按键进行关联--%>
<table class="layui-hide" id="test" lay-filter="test"></table>
<script id="toolbarDemo" type="text/html">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>

<script id="barDemo" type="text/html">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

<%--****************************************比率与计算 *************************************************************************************--%>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>比率与计算</legend>
</fieldset>
<div class="layui-form">
    <table class="layui-table" style="height: 30px">
        <colgroup>
            <col>
            <col>
            <col>
        </colgroup>
        <thead >
        <tr>
            <th></th>
            <th>2018/07/31Annual</th>
            <th>Calculated Ratio</th>
        </tr>
        </thead>
        <tbody style="height: 30px">
        <tr>
            <td>利润率</td>
            <td>13.20%</td>
            <td>13.20%</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>流动性和资本化比率</td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>流动比率（1年平均）</td>
            <td>1.10</td>
            <td>1.10</td>
        </tr>
        <tr>
            <td>   </td>
            <td>   </td>
            <td>   </td>
        </tr>
        <tr>
            <td>覆盖率 </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>偿债覆盖率（商业）</td>
            <td> 1.25</td>
            <td>1.25</td>
        </tr>
        <tr>
            <td>   </td>
            <td>   </td>
            <td>  </td>
        </tr>
        <tr>
            <td>杠杆比率 </td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td>调整后总负债/ TNW（1年平均）</td>
            <td>-6.27 </td>
            <td>-6.27</td>
        </tr>
        <tr>
            <td>债务/总资产总额（一年平均）</td>
            <td>22.61% </td>
            <td>22.61%</td>
        </tr>
        </tbody>
    </table>
</div>

<%--*******************************************公司内容进行显示********************************--%>
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>公司</legend>
</fieldset>
<form class="layui-form" action="">
    <div class="layui-row" >
        <div class="layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 120px">EBITDA利润率</label>
                    <div class="layui-input-inline" style="width: 360px">
                        <input name="phone" class="layui-input" type="tel" placeholder="13.2%" autocomplete="off" lay-verify="required|phone">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-row ">
        <div class="layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 120px">流动比率</label>
                    <div class="layui-input-inline" style="width: 360px">
                        <input name="phone" class="layui-input" type="tel" placeholder="1.1" autocomplete="off" lay-verify="required|phone">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-row ">
        <div class="layui-form-item">
            <div class="layui-col-xs12 layui-col-sm12 layui-col-md6 layui-col-lg6">
                <div class="layui-inline">
                    <label class="layui-form-label"style="width: 120px">债务偿还覆盖率</label>
                    <div class="layui-input-inline" style="width:360px">
                        <input name="phone" class="layui-input" type="tel" placeholder="22.61%" autocomplete="off" lay-verify="required|phone">
                    </div>
                </div>
            </div>
            <div class="layui-col-xs12 layui-col-sm12 layui-col-md3 layui-col-lg6">
                <div class="layui-inline" style="width: 360px">
                    <select name="city" lay-verify="">
                        <option value="">choose the Year Average</option>
                        <option value="001">1 Year Average</option>
                        <option value="002">2 Year Average</option>
                        <option value="003">3 Year Average</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-row ">
        <div class="layui-form-item">
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md6 layui-col-lg6">
                <div class="layui-inline">
                    <label class="layui-form-label" style="width: 120px">资产负债表杠杆</label>
                    <div class="layui-input-inline" style="width: 360px">
                        <input name="phone" class="layui-input" type="tel" placeholder="22.61%" autocomplete="off" lay-verify="required|phone">
                    </div>
                </div>
            </div>
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md6 layui-col-lg6">
                <div class="layui-inline" style="width: 360px">
                    <select name="city" lay-verify="">
                        <option value="">choose the Year Average</option>
                        <option value="001">1 Year Average</option>
                        <option value="002">2 Year Average</option>
                        <option value="003">3 Year Average</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div class="layui-row ">
        <div class="layui-form-item">
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg6">
                <div class="layui-inline">
                    <label class="layui-form-label" style="width: 120px">债务融资杠杆</label>
                    <div class="layui-input-inline" style="width:360px">
                        <input name="phone" class="layui-input" type="tel" placeholder="22.61%" autocomplete="off" lay-verify="required|phone">
                    </div>
                </div>
            </div>
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg6">
                <div class="layui-inline" style="width: 360px">
                    <select name="city" lay-verify="">
                        <option value="">choose the Year Average</option>
                        <option value="001">1 Year Average</option>
                        <option value="002">2 Year Average</option>
                        <option value="003">3 Year Average</option>
                    </select>
                </div>
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




<script src="${yeqifu}/static/layui/layui.js"></script>


<%--控制显示表单时间--%>
<script>
    layui.use(['form', 'layedit', 'laydate'], function(){
        var form = layui.form
            ,layer = layui.layer
            ,layedit = layui.layedit
            ,laydate = layui.laydate;

        //日期
        laydate.render({
            elem: '#date'
        });
        laydate.render({
            elem: '#date1'
        });

        //创建一个编辑器
        var editIndex = layedit.build('LAY_demo_editor');

        //自定义验证规则
        form.verify({
            title: function(value){
                if(value.length < 5){
                    return '标题至少得5个字符啊';
                }
            }
            ,pass: [
                /^[\S]{6,12}$/
                ,'密码必须6到12位，且不能出现空格'
            ]
            ,content: function(value){
                layedit.sync(editIndex);
            }
        });

        //监听指定开关
        form.on('switch(switchTest)', function(data){
            layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
                offset: '6px'
            });
            layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
        });

        //监听提交
        form.on('submit(demo1)', function(data){
            layer.alert(JSON.stringify(data.field), {
                title: '最终的提交信息'
            })
            return false;
        });

        //表单赋值
        layui.$('#LAY-component-form-setval').on('click', function(){
            form.val('example', {
                "username": "贤心" // "name": "value"
                ,"password": "123456"
                ,"interest": 1
                ,"like[write]": true //复选框选中状态
                ,"close": true //开关状态
                ,"sex": "女"
                ,"desc": "我爱 layui"
            });
        });

        //表单取值
        layui.$('#LAY-component-form-getval').on('click', function(){
            var data = form.val('example');
            alert(JSON.stringify(data));
        });

    });
</script>
<%--进行表格的内容展示--%>
<script>
    layui.use('table', function(){
        var table = layui.table;

        table.render({
            elem: '#test'
            ,url:'/demo/table/user/'
            ,cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            ,url:'/test/table/demo1.json'
            ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            ,defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                title: '提示'
                ,layEvent: 'LAYTABLE_TIPS'
                ,icon: 'layui-icon-tips'
            }]
            ,title: '用户数据表'
            ,cols: [[
                {type: 'checkbox', fixed: 'center'}
                ,{field:'id', title:'ID', fixed: 'left', unresize: true, sort: true}
                ,{field:'username', title:'报表类型',edit: 'text'}
                ,{field:'date', title:'报表开始日期',  edit: 'text'}
                ,{field:'date1', title:'报表结束日期', edit: 'text', sort: true}
                ,{field:'Source', title:'来源', }
                ,{field:'Currency', title:'货币'}
                ,{field:'Unit', title:'单位数目',  sort: true}
                ,{field:'Projected', title:'工程', }
                ,{field:'ProForma', title:'报价单',  sort: true}
            ]]
            ,page: true
        });


        //头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;

                //自定义头工具栏右侧图标 - 提示
                case 'LAYTABLE_TIPS':
                    layer.alert('这是工具栏右侧自定义的一个图标按钮');
                    break;
            };
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //console.log(obj)
            if(obj.event === 'del'){
                layer.confirm('真的删除行么', function(index){
                    obj.del();
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.prompt({
                    formType: 2
                    ,value: data.email
                }, function(value, index){
                    obj.update({
                        email: value
                    });
                    layer.close(index);
                });
            }
        });
    });
</script>

</body>
</html>
