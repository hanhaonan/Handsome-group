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
    <title>出租管理</title>
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
<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">业务风险摘要 </li>
        <li>经营策略 </li>
        <li>财务策略 </li>
        <li>管理质量 </li>
        <li>财务报告的及时性</li>
        <li>获得资金</li>

    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>业务风险27.00％-评级= 3 + M</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-row">
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md3">

                        <label class="layui-form-label"style="width: 150px">计算等级：</label>
                        <div class="layui-form-mid">
                            3+M
                        </div>


                    </div>
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md3">

                        <label class="layui-form-label"style="width: 150px">因子等级：</label>
                        <div class="layui-form-mid">
                            3+M
                        </div>


                    </div>
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md3">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整因子等级:</label>
                            <div class="layui-inline">
                                <select name="city" lay-verify="">
                                    <option value="010">3+M</option>
                                    <option value="011">3+M</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md3">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整原理:</label>
                            <div class="layui-input-inline" style="padding: 5px">
                                <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                                       style="height: 30px;border-radius: 10px">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-form-item layui-form-text">
                    <label class="layui-form-label">评论</label>
                    <div class="layui-input-block">
                        <textarea placeholder="历史性:Ledoux. Lew & Patterson 保险经纪有限公司（LLP）成立于1969年，经许可可出售所有类别的保险业务。这是一家管理良好且成功的小型企业，过去34年的稳定和增长证明了这一点。它是加拿大伦敦中介的劳埃德。该公司有20名员工。 该公司在其超过35年的历史中一直保持盈利。" class="layui-textarea"></textarea>
                    </div>
                </div>

            </form>

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>根据标准对业务风险进行评级</legend>
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

                    </colgroup>
                    <thead>
                    <tr>
                        <th></th>
                        <th>权重</th>
                        <th>计算等级</th>
                        <th>调整因子等级</th>
                        <th>因子得分</th>
                        <th>最后批准</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>商业策略评估</td>
                        <td>15.56%</td>
                        <td>3+L</td>
                        <td></td>
                        <td>6.3</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>财务策略评估</td>
                        <td>24.44%</td>
                        <td>3+L</td>
                        <td></td>
                        <td>6.4</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>管理质量评估</td>
                        <td>26.67%</td>
                        <td>3+H</td>
                        <td></td>
                        <td>5.52</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>财务报告及时性评估</td>
                        <td>3.33%</td>
                        <td>3+L</td>
                        <td></td>
                        <td>6.3</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>获得资金评估</td>
                        <td>30.00%</td>
                        <td>3+L</td>
                        <td></td>
                        <td>6.3</td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="layui-tab-item">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend> 业务战略评估15.56％-评级= 3 + L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-row">
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">

                        <label class="layui-form-label"style="width: 150px">计算的额定值：</label>
                        <div class="layui-form-mid">
                            3+L
                        </div>


                    </div>

                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整因子额定值:</label>
                            <div class="layui-inline">
                                <select name="city" lay-verify="">
                                    <option value="010">3+M</option>
                                    <option value="011">3+M</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整原理:</label>
                            <div class="layui-input-inline" style="padding: 5px">
                                <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                                       placeholder="" style="height: 30px;border-radius: 10px">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="没有归档的业务战略，因此尽管客户战略的一部分是通过收购规模较小的保险经纪人来实现增长，但评级仍为3 + L。" style="height: 30px;border-radius: 10px">
                    </div>

                </div>
            </form>

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend> 管理层的业务战略范围是什么？ 25.00%-评级 = 3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2+M] > 2 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2+M] > 1 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2+M] 1 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M] 不限时
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3 M] 没有策略
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </form>
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>管理层如何清楚地阐述其业务战略以及如何实现? 25.00%-评级 = 3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M] 有效表达
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M] 未阐明策略
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </form>

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>管理层的业务战略是否适当地消除了业务密码子及其密码策略?25.00%-评级 = 3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2 M] 适当/可实现
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M] 可以实现，但重点不足
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M] 向后看；也许可以实现
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3 M] 不适当/无法实现
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </form>
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>管理层的业务战略与公司的“关键成功因素”之间的一致性如何？25.00% -评级 = 3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2 M] 与KSFS对齐
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M] 与KSFS合理对齐
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M] 与KSFS不一致
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3 M] 不适当/无法实现
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </form>
        </div>
        <div class="layui-tab-item">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend> 财务策略评估 24.44％-评级= 3 + L </legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-row">
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">

                        <label class="layui-form-label"style="width: 150px">计算的额定值：</label>
                        <div class="layui-form-mid">
                            3+L
                        </div>


                    </div>

                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整因子额定值:</label>
                            <div class="layui-inline">
                                <select name="city" lay-verify="">
                                    <option value="010">3+M</option>
                                    <option value="011">3+M</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整原理:</label>
                            <div class="layui-input-inline" style="padding: 5px">
                                <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                                       style="height: 30px;border-radius: 10px">
                            </div>
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
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend> 管理层的财务战略在什么范围内? 25.00%- 等级 = 3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2+M]> 2 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2 M]> 1 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1"> [2-M] 1 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M] 不特定时间
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3 M] 没有策略
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="目前没有财务策略" style="height: 30px;border-radius: 10px">
                    </div>

                </div>
            </form>
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>管理层使用债务作为资金来源的计划是什么? 25.00%- 评级 = 3+M</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2+M] 极低债务策略
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2 M] 低债务策略
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M] 可接受的债务策略
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M] 高负债策略
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3 M] 过度债务策略
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </form>
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>分配对借款人的财务状况有何影响-即发行合适吗? 25.00%-评级 = 3M</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M] 对债务依赖没有不利影响
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M] 对债务依赖没有不利影响
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3 M] 过度依赖债务，对运营产生负面影响
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </form>

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>管理层相对于财务计划的绩效记录如何? 25.00%-评级=3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2 M] 始终符合/超出计划
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M] 主要达成计划
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M] 达成计划不一致
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3 M] 实现结果的不良记录
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="我们没有计划与之进行比较." style="height: 30px;border-radius: 10px">
                    </div>

                </div>
            </form>
        </div>
        <div class="layui-tab-item">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>管理质量评估 26.67%-评级 = 3+H</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-row">
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">

                        <label class="layui-form-label"style="width: 150px">计算的额定值：</label>
                        <div class="layui-form-mid">
                            3+H
                        </div>


                    </div>

                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整因子额定值:</label>
                            <div class="layui-inline">
                                <select name="city" lay-verify="">
                                    <option value="010">3+M</option>
                                    <option value="011">3+M</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整原理:</label>
                            <div class="layui-input-inline" style="padding: 5px">
                                <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                                       style="height: 30px;border-radius: 10px">
                            </div>
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
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>管理层已证明成功的财务业绩记录多长时间了? 20.00% - 评级 = 3+M</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2+M] >15 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2 M] >10 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M] >=5 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M] <5 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="公司在2014年亏损了200万美元，但在2015年反弹到了8500万美元的利润." style="height: 30px;border-radius: 10px">
                    </div>


                </div>
            </form>
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>管理层的表现是否始终如一?20.00% -评级 = 3+M</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M] 持续成功
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M] 不一致的成功
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>

                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="如上述评论." style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </form>

            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>管理团队在行业中拥有多少年的经验? 20.00%-评级=2+M</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2+M] >15 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2 M] >10 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M] >=5 年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M] <5  年
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="公司成立于1995年." style="height: 30px;border-radius: 10px">
                    </div>

                </div>
            </form>
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>借款人能否在没有首席执行官的情况下成功运营-即评估关键人物风险的程度? 20.00%- 评级 = 3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2 M]无需首席执行官即可运营
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M]依靠CEO
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M]完全依赖首席执行官
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L]无资料
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </form>
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>是否制定了正式的继任计划以使管理团队有条不紊地过渡? 20.00%- 评级=3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2+M]计划已存在并已实施
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2 M]计划已存在但尚未实施
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M]仅存在计划大纲
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M]没有计划
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L] 无可用信息
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </form>
        </div>
        <div class="layui-tab-item">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>财务报告及时性评估 3.33%-评级 = 3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-row">
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">

                        <label class="layui-form-label"style="width: 150px">计算的额定值：</label>
                        <div class="layui-form-mid">
                            3+L
                        </div>


                    </div>

                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整因子额定值:</label>
                            <div class="layui-inline">
                                <select name="city" lay-verify="">
                                    <option value="010">3+M</option>
                                    <option value="011">3+M</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整原理:</label>
                            <div class="layui-input-inline" style="padding: 5px">
                                <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                                       style="height: 30px;border-radius: 10px">
                            </div>
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
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>借款人如何持续遵守RBC的财务报表报告及时性政策? 100.00%- 评级 =3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M]持续合规
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M]偶尔不遵守
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L]无资料
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3 M]持续违规
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="" style="height: 30px;border-radius: 10px">
                    </div>
                </div>
            </form>
        </div>
        <div class="layui-tab-item">
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>获得资金评估 30.00%- 评级=3+L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-row">
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">

                        <label class="layui-form-label"style="width: 150px">计算的额定值：</label>
                        <div class="layui-form-mid">
                            3+L
                        </div>


                    </div>

                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整因子额定值:</label>
                            <div class="layui-inline">
                                <select name="city" lay-verify="">
                                    <option value="010">3+M</option>
                                    <option value="011">3+M</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
                        <div class="layui-inline">
                            <label class="layui-form-label"style="width: 150px">调整原理:</label>
                            <div class="layui-input-inline" style="padding: 5px">
                                <input type="text" name="roledesc" autocomplete="off" class="layui-input layui-input-inline"
                                       style="height: 30px;border-radius: 10px">
                            </div>
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
            <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
                <legend>评估所有者对流动性，无抵押税后资产和/或可靠借贷能力的访问权限 100.00％-评级 = 3 + L</legend>
            </fieldset>
            <form class="layui-form" method="post" id="searchFrm">
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2+M]>债务总额的75％
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2 M]>融资债务的50％
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[2-M]>授权资金的30％
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+M]>已授权债务的10％
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3+L]无可用信息
                </div>
                <div class="layui-block"style="margin-left: 50px">
                    <input type="radio" name="available" value="1">[3 M]<= 授权资金债务的10％
                </div>
                <div class="layui-block">
                    <label class="layui-form-label">评论:</label>
                    <div class="layui-input-block" style="padding: 5px">
                        <input type="text" name="rolename" autocomplete="off" class="layui-input"
                               placeholder="没有PSOA，因为客户不需要提供PSOA。" style="height: 30px;border-radius: 10px">
                    </div>

                </div>
            </form>
        </div>

    </div>
</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend></legend>
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
<%--<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">--%>
<%--<legend>查询条件</legend>--%>
<%--</fieldset>--%>

<%--<form class="layui-form" method="post" id="searchFrm">--%>
<%--<div class="layui-form-item">--%>
<%--<div class="layui-inline">--%>
<%--<label class="layui-form-label">身份证号:</label>--%>
<%--<div class="layui-input-inline" style="padding: 5px">--%>
<%--<input type="text" name="identity" id="identity" autocomplete="off"--%>
<%--class="layui-input layui-input-inline"--%>
<%--placeholder="请输入身份证号" style="height: 30px;border-radius: 10px">--%>
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

<!-- 数据表格开始 -->
<div id="content" style="display: none;">
    <table id="carTable" lay-filter="carTable"></table>
    <div id="carBar" style="display: none;">
        <a class="layui-btn layui-btn-warm layui-btn-xs layui-btn-radius" lay-event="rentCar">出租汽车</a>
        <a class="layui-btn layui-btn-xs layui-btn-radius" lay-event="viewImage">查看车辆大图</a>
    </div>
</div>

<%--添加和修改的弹出层开始--%>
<div style="display: none;padding: 20px;" id="saveOrUpdateDiv">
    <form class="layui-form" lay-filter="dataFrm" id="dataFrm">
        <div class="layui-form-item">
            <label class="layui-form-label">出租单号:</label>
            <div class="layui-input-block">
                <input type="text" name="rentid" lay-verify="required" readonly="readonly" placeholder="请输入出租单号"
                       class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">起租时间:</label>
                <div class="layui-input-inline">
                    <input type="text" name="begindate" id="begindate" lay-verify="required" placeholder="请输入起租时间" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">还车时间:</label>
                <div class="layui-input-inline">
                    <input type="text" name="returndate" id="returndate" lay-verify="required" placeholder="请输入还车时间" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">身份证号:</label>
                <div class="layui-input-inline">
                    <input type="text" name="identity" lay-verify="required" readonly="readonly" placeholder="请输入身份证号"
                           class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">车牌号:</label>
                <div class="layui-input-inline">
                    <input type="text" name="carnumber" lay-verify="required" readonly="readonly"  placeholder="请输入车牌号" class="layui-input">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">出租价格:</label>
                <div class="layui-input-inline">
                    <input type="text" name="price" lay-verify="required" placeholder="请输入出租价格" class="layui-input">
                </div>
            </div>
            <div class="layui-inline">
                <label class="layui-form-label">操作员:</label>
                <div class="layui-input-inline">
                    <input type="text" name="opername" id="opername" lay-verify="required" placeholder="请输入操作员" readonly="readonly" class="layui-input">
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

<%--查看大图弹出的层开始--%>
<div id="viewCarImageDiv" style="display: none;text-align: center">
    <img alt="出租图片" id="view_carimg">
</div>

<script src="${yeqifu}/static/layui/layui.js"></script>
<script>
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
</script>
<script type="text/javascript">
    var tableIns;
    layui.use(['jquery', 'layer', 'form', 'table', 'laydate'], function () {
        var $ = layui.jquery;
        var layer = layui.layer;
        var form = layui.form;
        var table = layui.table;
        var dtree = layui.dtree;
        var laydate = layui.laydate;

        laydate.render({
            elem:'#begindate',
            type:'datetime'
        });
        laydate.render({
            elem:'#returndate',
            type:'datetime'
        });

        function initCarData() {
            //渲染数据表格
            tableIns = table.render({
                elem: '#carTable'   //渲染的目标对象
                , url: '${yeqifu}/car/loadAllCar.action?isrenting=0' //数据接口
                , title: '车辆列表'//数据导出来的标题
                , height: 'full-150'
                , page: true  //是否启用分页
                , cols: [[   //列表数据
                    , {field: 'carnumber', title: '车牌号', align: 'center', width: '95'}
                    , {field: 'cartype', title: '出租类型', align: 'center', width: '90'}
                    , {field: 'color', title: '出租颜色', align: 'center', width: '90'}
                    , {field: 'price', title: '汽车价格', align: 'center', width: '90'}
                    , {field: 'rentprice', title: '出租价格', align: 'center', width: '90'}
                    , {field: 'deposit', title: '出租押金', align: 'center', width: '90'}
                    , {
                        field: 'isrenting', title: '出租状态', align: 'center', width: '90', templet: function (d) {
                            return d.isrenting == '1' ? '<font color=blue>已出租</font>' : '<font color=red>未出租</font>';
                        }
                    }
                    , {field: 'description', title: '出租描述', align: 'center', width: '150'}
                    , {
                        field: 'carimg', title: '缩略图', align: 'center', width: '80', templet: function (d) {
                            return "<img width=40 height=40 src=${yeqifu}/file/downloadShowFile.action?path=" + d.carimg + "/>";
                        }
                    }
                    , {field: 'createtime', title: '录入时间', align: 'center', width: '170'}
                    , {fixed: 'right', title: '操作', toolbar: '#carBar', align: 'center', width: '220'}
                ]]
            });

        }

        //模糊查询
        $("#doSearch").click(function () {
            var params = $("#searchFrm").serialize();
            $.post("${yeqifu}/rent/checkCustomerExist.action", params, function (obj) {
                if (obj.code >= 0) { //此客户存在，code的返回值为0
                    $("#content").show();
                    initCarData(); //初始化未出租汽车的所有数据
                } else {
                    layer.msg("客户身份证号不存在，请更正后在查询");
                    //隐藏数据表格
                    $("#content").hide();
                }
            })
        });

        //监听行工具事件
        table.on('tool(carTable)', function (obj) {
            var data = obj.data; //获得当前行数据
            var layEvent = obj.event; //获得 lay-event 对应的值（也可以是表头的 event 参数对应的值）
            if (layEvent === 'rentCar') { //汽车出租
                //汽车出租，打开添加汽车出租页面
                openRentCar(data);
            } else if (layEvent === 'viewImage') { //查看大图
                showCarImage(data);
            }
        });

        var mainIndex;

        //打开添加页面
        function openRentCar(data) {
            mainIndex = layer.open({
                type: 1,
                title: '添加汽车出租',
                content: $("#saveOrUpdateDiv"),
                area: ['690px', '380px'],
                success: function (index) {
                    //清空表单数据
                    $("#dataFrm")[0].reset();
                    //请求数据,分别拿到出租价格，身份证号，车牌号
                    var price=data.rentprice;
                    var identity=$("#identity").val();
                    var carnumber=data.carnumber;
                    $.get("${yeqifu}/rent/initRentFrom.action",{
                        identity:identity,
                        price:price,
                        carnumber:carnumber
                    },function (obj) {
                        //赋值
                        form.val("dataFrm",obj);
                    })
                }
            });
        }

        //保存
        form.on("submit(doSubmit)", function (obj) {
            //序列化表单数据
            var params = $("#dataFrm").serialize();
            $.post("${yeqifu}/rent/saveRent.action", params, function (obj) {
                layer.msg(obj.msg);
                //关闭弹出层
                layer.close(mainIndex);
                $("#content").hide();
            })
        });

        //查看大图
        function showCarImage(data) {
            mainIndex = layer.open({
                type: 1,
                title: "【" + data.carnumber + '】的出租图片',
                content: $("#viewCarImageDiv"),
                area: ['1100px', '600px'],
                success: function (index) {
                    $("#view_carimg").attr("src", "${yeqifu}/file/downloadShowFile.action?path=" + data.carimg);
                }
            });
        }

    });

</script>
</body>
</html>

