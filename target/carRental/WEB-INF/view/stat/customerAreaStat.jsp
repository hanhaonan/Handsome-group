<%--
  Created by IntelliJ IDEA.
  Customer: YQF
  Date: 2019/10/14
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>客户管理</title>
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
    <legend>公司战略与管理质量 15.00%-评级 = 3+M</legend>
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
                           placeholder="2.93" style="height: 30px;border-radius: 10px">
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

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>管理深度/质量和继任计划 40.00%- 评级= 3+M</legend>
</fieldset>


<form class="layui-form" action="">
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input name="sex" title="[2+M] 专业，高素质的管理团队，具有足够的深度和稳定性，并拥有可靠的往绩记录。成功带领公司度过了不利的经济/行业环境。存在继任计划，可以轻松实施。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[2 M] 高素质的管理团队，具有足够的深度和稳定性，并拥有良好的往绩记录。通过不利的经济/行业条件轻松管理。存在成功的计划，可以通过一些过渡性的努力来实施。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[2-M] 合格的管理团队，但缺乏深度和/或稳定性已知在不利的经济/行业条件下难以管理。存在继任计划并且被认为是可行的，但是它们是有限的。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[3+M] 管理团队的知识和经验有限。营业额是一个问题。已知在不利条件下挣扎。继任计划是有问题的，可能并不可行。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[3 M] 管理团队缺乏知识且不稳定，存在大量人员流动。管理层无法适应行业变化。管理信息系统是过时的或不存在的老化管理，没有适当的继任计划。" type="radio" checked="" value="男">
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block" style="height:300px ">
            <textarea class="layui-textarea" style="height: 300px" placeholder="THS的所有者/首席执行官小野鹤（Sean He）自1992年8月在中国成立苏州星雅指甲有限公司以来一直从事指甲制造业务。[http://www.xingyanail.com /english%20lxwm.htm]。
公司通过了ISO-9001认证，生产各种工业钉，包括卷钉，塑料条钉和纸条钉等。 并出口到欧洲，日本，韩国，澳大利亚和东南亚市场。 该公司在中国拥有62英亩土地，拥有230名员工和装备精良的制造设施，产生的收入为2000万美元。
Simon He是首席财务官。他与业主没有关系，并且在制造领域拥有17年以上的经验。向首席执行官汇报的管理团队包括工厂经理，销售协调员，会计经理（CFO）和人事专员。他们在业务领域具有足够的资格和经验。 由于这些原因，认为2 M等级是合适的。

GRM 2017.5月
 评级被下调至3 + M，该业务被认为是加拿大境内的一家初创公司，并指出FYE16是该公司在加拿大的第一年正式投产。尚不确定管理层是否有能力将绩效保持在相同水平或达到预期水平。反倾销税令定于2018年到期。目前尚不确定，如果在这方面对NAFIA协议进行更改，该业务是否仍将继续存在。在银行与借款人建立关系之前，评分将保持3+。
 2018年5月 FAS更新：根据最近NAFIA谈判的不确定性以及美国自2018年6月1日起对加拿大钢铁和铝征收的新关税，我们将评级维持在3 + M不变。
 我们希望随时注意明年客户的出口销售情况，接下来的几年也希望再增加一到两年的时间，以进一步掌握mgmt Leam的性能记录。
"></textarea>
        </div>
    </div>
</form>



<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>公司战略与管理质量 15.00%-评级 = 3+M</legend>
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
                           placeholder="2.93" style="height: 30px;border-radius: 10px">
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
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block">
            <textarea class="layui-textarea" placeholder=""></textarea>
        </div>
    </div>
</form>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>商业计划书，策略与实施 33.33%- 评级 = 3+M</legend>
</fieldset>


<form class="layui-form" action="">
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input name="sex" title="[2+M] 有据可查的商业计划书，具有较长的关注重点（2年以上），并且清楚地阐明了业务和财务策略。业务策略与KSF针对该行业的策略非常吻合，并且其过去的实施和执行始终成功结果远远超出了业务计划。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[2 M] 有据可查的业务计划，与业务和财务策略相关。商业策略与KSF的行业非常吻合。过去的实现始终达到或超过了实现。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[2-M] 商业计划书以书面形式存在或已通过口头传达给客户经理。 与行业内的KSF相比，该计划显得合理且可执行。
       管理层在大多数时候都成功地执行了其业务计划（定义为前三个期间中的两个）。 此评级也适用于没有跟踪记录的客户。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[3+M] 与KSF相比，业务计划不存在或业务计划显得不合理或实施策略的跟踪记录不佳，且成功率有限。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[3 M] 始终未能实现业务战略的所有组成部分。相对于KSF的业务绩效已经下降了一段时间（定义为连续3年）。" type="radio" checked="" value="男">
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block" style="height:300px ">
            <textarea class="layui-textarea" style="height: 300px" placeholder=" 已提供了一份短期业务计划，其中有现金流预测到2019年12月。 到目前为止，管理层已成功执行了业务计划。在2015财年，该物业，厂房和设备被收购，并在2016年实现全面商业生产的同时开始了试生产。
            鉴于在运营的第一年就实现了业务水平，并且美国市场开始利用与中国建立的关系，因此该商业计划看来是合理的。
             美国的钢钉市场很大，每年的消费量估计超过100万吨。尽管THS是加拿大目前最大的钢钉生产商，但该工厂仅供应美国市场的2％，
              因此潜在的增加现有和新客户销售的潜力。为了满足美国不断增长的钢钉需求，该工厂正在进口更多设备以扩大产能。
     ___________________________________________________________________________
     预测（百万美元                             2017            2018       2019
     ___________________________________________________________________________
     预测（百万美元                             2017            2018       2019
     ___________________________________________________________________________
     THS净收入                                 $1.340          $1,820     $1,980
     ___________________________________________________________________________
     税息折旧及摊销前利润（EBITDA）             $3,002           $3,481    $3,666
     ___________________________________________________________________________
     GRM 2017.5月:
     评级下调至3 + M, 该业务被认为是加拿大境内的一家初创公司，并指出FYE16是该公司在加拿大的第一年完整生产。尚不确定管理层是否有能力将绩效保持在相同水平或达到预期。该业务还容易受到定于2018年到期的反倾销税令变化的影响。 不确定是否需要就此方面对NAFTA协议进行更改，该业务是否将继续存在。在银行与借款人建立关系之前，评级将保持在3+以上。FAS 2018年5月更新：
     2017财年的销售结束时为20毫米，而预期值为17百万美元，销售额从10.8百万美元增加到S20.2毫米= 87％增长; NI 325M vS预计为$ 1.3MM；息税折旧摊销前利润（EBITDA）$ 2，7.56亿，预计S3，002M =减少8％。尽管NI和EBITDA并没有达到预期，但GPM从19％增加到25％，费用从23％减少到15％，所有这些积极的变化归因于客户：
      >加大了在美国市场的营销和销售力度，取得了非常积极的成果。
      >客户强调供应管理和客户服务，并增加了对主要客户的访问频率。结果，THS收到了更多来自客户的订单。
      >产量的增长也主要归功于新的生产设备以及生产班次管理和效率的提高。
      2018年及以后，客户将继续进行销售和营销工作，以增加销量和价格利润率，并不断提高生产效率以优化设备效用客户也正在进口更多设备以增加产量和产品线。
      2018年初至今（从1月1日至4月30日）总销售额同比增长41％。客户预计2018年的总销售收入为23.7MM VS. 2017年S20.2MM增加= 17％。
      由于这是第二年的全年运营，因此我们将评级维持在3 + M。
"></textarea>
        </div>
    </div>
</form>




<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>财务策略 26.67%-评级=3+M</legend>
</fieldset>


<form class="layui-form" action="">
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input name="sex" title="[2+M] 与业务计划一致。相对于行业平均值而言，非常低的债务策略始终超过计划：销售额>计划的20％，而NIAT>计划的15％。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[2 M]与业务计划一致。低债务策略相对于行业平均水平，并且始终超出计划：销售额>计划利润的10％至20％，NIAT>计划的5％至15％。有记录的CAPEX程序可确保运行效率。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[2-M] 与业务计划一致。该行业可接受的债务战略，并且大部分实现了计划：销售额+/- 10％的波兰人； NIAT计划的+/- 5％。资本支出计划足以满足当前和预期的需求。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title=" [3+M] 与业务计划，债务策略或高于行业平均水平的水平不一致。通常无法实现目标或难以实现目标。销售低于计划10％以上; NLAT比计划低5％。资本支出计划不足。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[3 M] 与业务计划不一致，债务过多，实现目标的往绩不佳。资本支出计划不存在或目标不可行。" type="radio" checked="" value="男">
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block" style="height:300px ">
            <textarea class="layui-textarea" style="height: 300px" placeholder="  如前所述，客户正在进口更多设备，以进一步提高效率，生产量和生产线。要求银行提供融资支持以增加S900M循环租赁额度。
 截至FYE为止的资产负债表杠杆率为2.46：1，估计已增加到2.62：1，并完全提取了拟议的新循环租赁。
 财务策略与业务计划相一致，债务策略合理。资本支出计划符合业务需求。
 销售额是计划的+ 17％。
 考虑到这是客户第二年的全面运营，我们维持评级不变。
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
    layui.use(['jquery', 'layer', 'form', 'table'], function () {
        var $ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;
        var table = layui.table;
        var dtree = layui.dtree;
        //渲染数据表格
        tableIns = table.render({
            elem: '#customerTable'   //渲染的目标对象
            , url: '${yeqifu}/customer/loadAllCustomer.action' //数据接口
            , title: '客户数据表'//数据导出来的标题
            , toolbar: "#customerToolBar"   //表格的工具条
            , height: 'full-210'
            , cellMinWidth: 100 //设置列的最小默认宽度
            , page: true  //是否启用分页
            , cols: [[   //列表数据
                {type: 'checkbox', fixed: 'left'}
                , {field: 'identity', title: '身份证号', align: 'center', width: '200'}
                , {field: 'custname', title: '客户姓名', align: 'center', width: '125'}
                , {field: 'address', title: '客户地址', align: 'center', width: '125'}
                , {field: 'career', title: '客户职业', align: 'center', width: '150'}
                , {field: 'phone', title: '手机号码', align: 'center', width: '150'}

                , {
                    field: 'sex', title: '性别', align: 'center', width: '120', templet: function (d) {
                        return d.sex == '1' ? '<font color=blue>男</font>' : '<font color=red>女</font>';
                    }
                }
                , {field: 'createtime', title: '录入时间', align: 'center', width: '200'}
                , {fixed: 'right', title: '操作', toolbar: '#customerBar', align: 'center', width: '150'}
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
        });

        //模糊查询
        $("#doSearch").click(function () {
            var params = $("#searchFrm").serialize();
            tableIns.reload({
                url: "${yeqifu}/customer/loadAllCustomer.action?" + params,
                page: {curr: 1}
            })
        });

        //导出
        $("#doExport").click(function () {
            var params = $("#searchFrm").serialize();
            window.location.href="${yeqifu}/stat/exportCustomer.action?"+params;
        });

        //监听头部工具栏事件
        table.on("toolbar(customerTable)", function (obj) {
            switch (obj.event) {
                case 'add':
                    openAddCustomer();
                    break;
                case 'deleteBatch':
                    deleteBatch();
                    break;
            }
        });

        //监听行工具事件
        table.on('tool(customerTable)', function (obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            if (layEvent === 'del') { //删除
                layer.confirm('真的删除【' + data.custname + '】这个客户么？', function (index) {
                    //向服务端发送删除指令
                    $.post("${yeqifu}/customer/deleteCustomer.action", {identity: data.identity}, function (res) {
                        layer.msg(res.msg);
                        //刷新数据表格
                        tableIns.reload();
                    })
                });
            } else if (layEvent === 'edit') { //编辑
                //编辑，打开修改界面
                openUpdateCustomer(data);
            }
        });

        var url;
        var mainIndex;

        //打开添加页面
        function openAddCustomer() {
            mainIndex = layer.open({
                type: 1,
                title: '添加客户',
                content: $("#saveOrUpdateDiv"),
                area: ['700px', '320px'],
                success: function (index) {
                    //清空表单数据
                    $("#dataFrm")[0].reset();
                    url = "${yeqifu}/customer/addCustomer.action";
                }
            });
        }

        //打开修改页面
        function openUpdateCustomer(data) {
            mainIndex = layer.open({
                type: 1,
                title: '修改客户',
                content: $("#saveOrUpdateDiv"),
                area: ['700px', '320px'],
                success: function (index) {
                    form.val("dataFrm", data);
                    url = "${yeqifu}/customer/updateCustomer.action";
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
            var checkStatus = table.checkStatus('customerTable');
            var data = checkStatus.data;
            layer.alert(data.length);
            var params = "";
            $.each(data, function (i, item) {
                if (i == 0) {
                    params += "ids=" + item.identity;
                } else {
                    params += "&ids=" + item.identity;
                }
            });
            layer.confirm('真的要删除这些客户么？', function (index) {
                //向服务端发送删除指令
                $.post("${yeqifu}/customer/deleteBatchCustomer.action", params, function (res) {
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

