<%--
  Created by IntelliJ IDEA.
  Car: YQF
  Date: 2019/10/14
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>车辆入库管理</title>
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
</head>
<body class="childrenBody">

<!-- 搜索条件开始 -->
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>以下部分仅适用于GRM特殊贷款和咨询服务或GRM授权用户</legend>
</fieldset>

<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <label class="layui-form-label"style="width: 200px;float: right">最终付款和默认注意事项评级 :</label>

            </div>
            <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
                <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                       style="height: 30px;border-radius: 10px">
            </div>
        </div>


    </div>
</form>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>BRR 4付款和违约注意事项</legend>
</fieldset>

<form class="layui-form" method="post" id="searchFrm">
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right">付款是否拖欠31-90天？ （如果拖欠款项> 90天，请参阅BRR 5默认特征）</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
            <select name="city" lay-verify="">
                <option value="012">Choose One</option>
                <option value="010">Yes</option>
                <option value="011">No</option>
                <option value="013">N/A</option>
            </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right"> 经济契约是否被违反？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right">是否存在明确定义的影响行业或借款人竞争状况的困难？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right">管理层是否被视为无法扭转公司局面？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right">在公司生存能力受到威胁的情况下，利润率，杠杆率和覆盖率是否有所降低？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right">  是否应收欠款？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right"> 流动性差吗？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right">  资金使用受到严重限制吗？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right">以下事件可能不会。在所有情况下，都建议将借款人视为高风险。但是，在某些情况下， 特别是如果发生多个事件，则可能表示情况正在恶化，因此应咨询GRM-SLAS：最近在管理方面有任何变化吗？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right">审计师最近是否有任何变动或财务报表的发布是否延迟？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right">银行的风险敞口是否足够安全？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right"> 是否会在未来12个月内到期本金？</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-row">
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">

            <label class="layui-form-label"style="width: 500px;float: right">  BRR 4是否应适用于该借款人？ （如果必须全部上述评论为“是”）</label>

        </div>
        <div class="layui-col-xs6 layui-col-sm6 layui-col-md6">
            <div class="layui-inline">
                <select name="city" lay-verify="">
                    <option value="012">Choose One</option>
                    <option value="010">Yes</option>
                    <option value="011">No</option>
                    <option value="013">N/A</option>
                </select>
            </div>
        </div>
    </div>
    <div class="layui-block">
        <label class="layui-form-label">评论:</label>
        <div class="layui-input-block" style="padding: 5px">
            <input type="text" name="rolename" autocomplete="off" class="layui-input"
                   placeholder="" style="height: 30px;border-radius: 10px">
        </div>
    </div>
</form>





<div id="content" style="display: none">
    <blockquote class="layui-elem-quote" style="margin-top: 10px">
        <div id="test2">
            检查单表单
        </div>
    </blockquote>
    <form class="layui-form" method="post" id="checkFrm" lay-filter="checkFrm">
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">检查单号:</label>
                <div class="layui-input-inline" style="padding: 5px;width: 280px">
                    <input type="text" name="checkid" readonly="readonly"
                           class="layui-input layui-input-inline"
                           placeholder="请输入检查单号" style="height: 30px;border-radius: 10px;width: 280px">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">出租单号:</label>
                <div class="layui-input-inline" style="padding: 5px;width: 280px">
                    <input type="text" name="rentid" readonly="readonly" autocomplete="off"
                           class="layui-input layui-input-inline"
                           placeholder="请输入出租单号" style="height: 30px;border-radius: 10px;width: 280px">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">操作员:</label>
                <div class="layui-input-inline" style="padding: 5px;width: 280px">
                    <input type="text" name="opername" readonly="readonly" autocomplete="off"
                           class="layui-input layui-input-inline"
                           placeholder="请输入操作员" style="height: 30px;border-radius: 10px;width: 280px">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">存在问题:</label>
                <div class="layui-input-inline" style="padding: 5px;width: 280px">
                    <input type="text" name="problem" id="problem" required  lay-verify="required" autocomplete="off"
                           class="layui-input layui-input-inline"
                           placeholder="请输入存在的问题" style="height: 30px;border-radius: 10px;width: 280px">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">赔付金额:</label>
                <div class="layui-input-inline" style="padding: 5px;width: 280px">
                    <input type="text" name="paymoney" id="paymoney" required  lay-verify="required" autocomplete="off"
                           class="layui-input layui-input-inline"
                           placeholder="请输入赔付金额" style="height: 30px;border-radius: 10px;width: 280px">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">检查时间:</label>
                <div class="layui-input-inline" style="padding: 5px;width: 280px">
                    <input type="text" name="checkdate" id="checkdate" required  lay-verify="required"
                           class="layui-input layui-input-inline"
                           placeholder="请输入检查时间" style="height: 30px;border-radius: 10px;width: 280px">
                </div>
            </div>
        </div>
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">问题描述:</label>
            <div class="layui-input-block">
                <textarea name="checkdesc" placeholder="请输入问题描述" required  lay-verify="required" class="layui-textarea"></textarea>
            </div>
        </div>
        <div class="layui-form-item" style="text-align: center">
            <button type="button" lay-submit="" lay-filter="doSubmit"
                    class="layui-btn layui-btn-normal layui-icon layui-icon-release layui-btn-radius layui-btn-sm"
                    id="doSubmit" style="margin-top: 4px">保存
            </button>
        </div>
    </form>
    <%--出租单信息，车辆信息，客户信息的展示--%>
    <div style="padding: 10px; background-color: #F2F2F2;">
        <div class="layui-row layui-col-space10">
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">车辆信息</div>
                    <div class="layui-card-body" id="car_carnumber"></div>
                    <div class="layui-card-body" id="car_cartype"></div>
                    <div class="layui-card-body" id="car_color"></div>
                    <div class="layui-card-body" id="car_price"></div>
                    <div class="layui-card-body" id="car_rentprice"></div>
                    <div class="layui-card-body" id="car_deposit"></div>
                    <div class="layui-card-body" id="car_description"></div>
                    <div class="layui-card-body">
                        车辆图片：<img src="" width="200" height="150" id="car_carimg">
                    </div>
                </div>
            </div>
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">出租单信息</div>
                    <div class="layui-card-body" id="rent_rentid"></div>
                    <div class="layui-card-body" id="rent_price"></div>
                    <div class="layui-card-body" id="rent_begindate"></div>
                    <div class="layui-card-body" id="rent_returndate"></div>
                    <div class="layui-card-body" id="rent_opername"></div>
                </div>
            </div>
            <div class="layui-col-md4">
                <div class="layui-card">
                    <div class="layui-card-header">客户信息</div>
                    <div class="layui-card-body" id="customer_identity"></div>
                    <div class="layui-card-body" id="customer_custname"></div>
                    <div class="layui-card-body" id="customer_sex"></div>
                    <div class="layui-card-body" id="customer_address"></div>
                    <div class="layui-card-body" id="customer_phone"></div>
                    <div class="layui-card-body" id="customer_career"></div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="${yeqifu}/static/layui/layui.js"></script>
<script type="text/javascript">

    layui.use(['jquery', 'layer', 'form', 'table', 'laydate'], function () {
        var $ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;
        var table = layui.table;
        var dtree = layui.dtree;
        var laydate = layui.laydate;

        //根据出租单号查询
        $("#doSearch").click(function () {
            var rentid = $("#search_rentid").val();
            $.post("${yeqifu}/check/checkRentExist.action", {rentid: rentid}, function (obj) {
                if (obj === "") { //出租单号不存在，返回值为null
                    layer.msg("您输入的出租单号不存在，请更正后再查询");
                    //隐藏数据表格
                    $("#content").hide();
                } else {
                    if (obj.rentflag == 1) {
                        layer.msg("您输入的出租单号相关车辆已经归还，无需再入库");
                        $("#content").hide();
                    } else {
                        //初始化表单数据和卡片面板数据
                        initCheckFormData(rentid);
                        $("#content").show();
                    }
                }
            })
        });

        //加载表单数据和 卡片面板数据
        function initCheckFormData(rentid) {
            $.post("${yeqifu}/check/initCheckFormData.action",{rentid:rentid},function (obj) {
                //检查单
                var check=obj.check;
                form.val("checkFrm",check);

                //客户
                var customer=obj.customer;
                $("#customer_identity").html("身份证号: "+customer.identity);
                $("#customer_custname").html("客户姓名: "+customer.custname);
                $("#customer_sex").html("客户性别: "+(customer.sex==1?'男':'女'));
                $("#customer_address").html("客户地址: "+customer.address);
                $("#customer_phone").html("客户电话: "+customer.phone);
                $("#customer_career").html("客户职位: "+customer.career);

                //出租单
                var rent=obj.rent;

                $("#rent_rentid").html("出租单号: "+rent.rentid);
                $("#rent_price").html("出租价格: "+rent.price);
                $("#rent_begindate").html("起租时间: "+rent.begindate);
                $("#rent_returndate").html("还车时间: "+rent.returndate);
                $("#rent_opername").html("操作员: "+rent.opername);

                //车辆信息
                var car=obj.car;
                $("#car_carnumber").html("车辆号牌: "+car.carnumber);
                $("#car_cartype").html("车辆类型: "+car.cartype);
                $("#car_color").html("车辆颜色: "+car.color);
                $("#car_price").html("购买价格: "+car.price);
                $("#car_rentprice").html("出租价格: "+car.rentprice);
                $("#car_deposit").html("出租押金: "+car.deposit);
                $("#car_description").html("车辆描述: "+car.description);
                $("#car_carimg").attr("src","${yeqifu}/file/downloadShowFile.action?path="+car.carimg);
            })
        }
        //保存
        form.on("submit(doSubmit)",function () {
            var params = $("#checkFrm").serialize();
            $.post("${yeqifu}/check/saveCheck.action",params,function (obj) {
                layer.msg(obj.msg);
                $("#content").hide();
            })
            return false;
        });

    });

</script>
</body>
</html>

