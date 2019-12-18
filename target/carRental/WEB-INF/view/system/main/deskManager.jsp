<%--
  Created by IntelliJ IDEA.
  User: YQF
  Date: 2019/9/30
  Time: 8:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>工作台</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="${yeqifu}/static/layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="${yeqifu}/static/css/public.css" media="all" />
</head>
<body class="childrenBody">

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>EBITDA Margin 20.00%- Rating=3+H</legend>
</fieldset>
<form class="layui-form" method="post" id="searchFrm">

    <%--    <div class="layui-form-item">--%>
    <%--        <div class="layui-col-xs6 layui-col-sm6 layui-col-md3 layui-col-lg3">--%>
    <%--            <div class="layui-inline">--%>
    <%--                <label class="layui-form-label"style="width: 150px"> 比率</label>--%>
    <%--                <div class="layui-input-inline" style="padding: 5px">--%>
    <%--                    <input type="text" name="rentid" autocomplete="off" class="layui-input layui-input-inline"--%>
    <%--                           placeholder="13.2%" style="height: 30px;border-radius: 10px">--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <div class="layui-col-xs6 layui-col-sm6 layui-col-md4 layui-col-lg4">
        <div class="layui-inline">
            <label class="layui-form-label"style="width: 100px">计算等级</label>
            <div class="layui-input-inline" style="padding: 5px">
                <input type="text" name="identity" autocomplete="off" class="layui-input layui-input-inline"
                       placeholder="3+L" style="height: 30px;border-radius: 10px">
            </div>
        </div>
    </div>
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

    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block" style="height: 300px">
            <textarea class="layui-textarea" style="height: 300px" placeholder="THS是紧固件制造商，生产三类主要在美国客户中使用的钢钉：普通卷钉，纸条钉和塑料条钉。在Ontario建立钢钉制造厂的主要目的是抓住美国的市场机会，这是由于中国，阿联酋和其他一些国家对钢钉征收反倾销税令而产生的。除了北美自由贸易协定的优惠关税待遇，即使取消了反倾销关税，位于Ontario的生产设施也具有以下优势向美国市场销售:
-具有全新设备的优质产品,结合了最新技术以提高效率和质量。
-与海外其他供应商相比,Kitchener的首选地点可为我们的客户提供更短的交货时间。
 -THS目前是加拿大最大的钢钉生产商,而其他加拿大生产商的产能则要小得多,并且主要专注于不与THS直接竞争市场的特种钉子。
-Ontario工厂位于安大略省基奇纳市的一个成熟的工业区，不仅拥有本地支持基础设施，而且易于进入美国，而且为获得融资和人力资源提供了便利。
2017年3月，从中国进口的纸箱关闭钉书钉已被列入反倾销产品的关注清单，进口价值每年为3500万美元。 THS有能力获得该数量的20％，这意味着每年的收入为700万美元。
保守地讲，即使是10％的主食订单也可以产生3美元。 5MM rev。毛利率在50％-60％之间。我们还得知，客户增加了一条新产品线-机器级钉子-并且最初的出货量在市场上反应良好。
_________________________________________________
Kitchener媒体报道了对该工厂的投资：
http://www.therecord.com/news-story/5203581-plant-to-open-in-kitchener-thanks-to-u-s-duties-on-chinese-steels-nails/ "></textarea>
        </div>
    </div>
</form>


<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>市场地位和多元化</legend>
</fieldset>

<p>资产负债表杠杆 13.00%-评级 = 5</p>
<hr width="100%" color=#333 size=12></hr>

<form class="layui-form" action="">
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input name="sex" title="[2+M] 市场领导者和主导者是既定的价格设定者，可以在其同级组/行业中获得最高的毛利率。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title=" [2 M] 市场参与者占据了明确定义的，可防御的利基市场，可以要求其可持续的毛利率高于行业平均水平。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title=" [2-M] 在市场上众所周知，但容易受到新进入者的攻击。毛利率稳定和/或接近行业平均水平。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[3+M] 小型和/或无差异的市场参与者。历史结果表明，毛利率是不稳定的和/或低于行业平均水平。" type="radio" checked="" value="男">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[2 M] 市场份额很小。受到新进入者的威胁。" type="radio" checked="" value="男">
        </div>
    </div>


    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block" style="height:300px ">
            <textarea class="layui-textarea" style="height: 300px" placeholder="THS与大多数在美国拥有大量业务的客户协商优惠条件的能力有限。例如，他们最大的客户SouthernCarlson拥有130多个地点，并在34个州和墨西哥经营。 美国的钢钉市场很大，每年的消费量估计超过100万吨。尽管THS目前是加拿大最大的钢钉生产商之一，但该工厂仅供应美国市场的2％左右， 因此具有增加现有客户和新客户销售的巨大潜力。为了满足美国不断增长的钢钉需求，他们计划进口更多设备以扩大产能。但是，THS的业务有几个进入障碍：
 - 大量的资本投资，从而降低了劳动力成本
 - 丰富的行业知识
 - 超过25年的运营积累了声誉
 评级不变。"></textarea>
        </div>
    </div>
    <p>增值 33.00%- 评级=3+M</p>
    <hr width="100%" color=#333 size=12></hr>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input name="sex" title=" [2+M] 定制或差异化的产品或服务，其利润率可能远高于平均水平。" type="radio" checked="" value="01">
        </div>
        <div class="layui-input-block">
            <input name="sex" title=" [2 M] 定制或差异化产品或服务，可以提供高于平均水平的利润。" type="radio" checked="" value="02">
        </div>
        <div class="layui-input-block">
            <input name="sex" title=" [2-M] 产品/服务有效地与商品状态区分开。" type="radio" checked="" value="03">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[3+M] 商品产品/服务。" type="radio" checked="" value="04">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block" style="height:300px ">
            <textarea class="layui-textarea" style="height: 300px" placeholder="THS生产全系列的塑料条钉，纸带条钉和电线整理卷钉。按定制规格制造和品牌包装是他们的专长。
            客户对质量和服务的反馈非常令人鼓舞。美国大多数客户欣赏与Kitchener工厂打交道的优势，
   因为他们可以与工厂进行更好的沟通和沟通，并能快速收到有关产品规格，交货时间表和其他要求的响应。
   GRM 2017年5月
   商品：降级为3 + M
   FAS更新于2018年5月：我们维持评级不变。"></textarea>
        </div>
    </div>
    <p>客户集中度 34.00%-评级 = 3M</p>
    <hr width="100%" color=#333 size=12></hr>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <input name="sex" title=" [2+M] 多元化。前5名客户贡献的收入不到总收入的20％。" type="radio" checked="" value="01">
        </div>
        <div class="layui-input-block">
            <input name="sex" title=" [2 M] 多元化。前5名客户贡献的收入不足35％。" type="radio" checked="" value="02">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="  [2-M] 略有多样化。前5名客户贡献的收入不到总收入的50％。" type="radio" checked="" value="03">
        </div>
        <div class="layui-input-block">
            <input name="sex" title="[3+M] 高度依赖一位贡献收入超过25％但少于50％的客户。" type="radio" checked="" value="04">
        </div>
    </div>
    <div class="layui-form-item layui-form-text">
        <label class="layui-form-label"> 评论</label>
        <div class="layui-input-block" style="height:300px ">
            <textarea class="layui-textarea" style="height: 300px" placeholder="THS的产品主要在美国销售，主要客户包括：
SouthernCarison (https://www.southerncarlson.coml/ ,美国建筑和包装机械，工具及用品的最知名品牌的领先分销商）
Kyocera Senco Industrial Tool
Senco Brands Inc.(http://www.senco.com/)
Gotham(http://www.gothamstaple.com/)
National Nail Corp.(http://www.nationalnail.com/)

    截至2018年3月31日，排名前1位的＆2位客户占应收账款2美元的85.7％，5.51亿美元，其中排名前1位的客户占75％：
    _______________________________________________________________
            Southern Carlson                    $1,916M       75%
    ________________________________________________________________
            Kyocera Senco Industrial Tool       $275        10.7%
    _______________________________________________________________
            评级不变。 "></textarea>
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





<script type="text/javascript" src="${yeqifu}/static/layui/layui.js"></script>
<script>

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
        $(function(){
            //propertychange监听input里面的字符变化,属性改变事件
            $('.zy-price').bind('input propertychange', function() {
                var $this = $(this);
                console.log($this);
                var text_length = $this.val().length;//获取当前文本框的长度
                var current_width = parseInt(text_length) *16;//该16是改变前的宽度除以当前字符串的长度,算出每个字符的长度
                console.log(current_width)
                $this.css("width",current_width+"px");
            });
        })


    });


    <%--//获取系统时间--%>
    <%--var newDate = '';--%>
    <%--getLangDate();--%>
    <%--//值小于10时，在前面补0--%>
    <%--function dateFilter(date){--%>
    <%--    if(date < 10){return "0"+date;}--%>
    <%--    return date;--%>
    <%--}--%>
    <%--function getLangDate(){--%>
    <%--    var dateObj = new Date(); //表示当前系统时间的Date对象--%>
    <%--    var year = dateObj.getFullYear(); //当前系统时间的完整年份值--%>
    <%--    var month = dateObj.getMonth()+1; //当前系统时间的月份值--%>
    <%--    var date = dateObj.getDate(); //当前系统时间的月份中的日--%>
    <%--    var day = dateObj.getDay(); //当前系统时间中的星期值--%>
    <%--    var weeks = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];--%>
    <%--    var week = weeks[day]; //根据星期值，从数组中获取对应的星期字符串--%>
    <%--    var hour = dateObj.getHours(); //当前系统时间的小时值--%>
    <%--    var minute = dateObj.getMinutes(); //当前系统时间的分钟值--%>
    <%--    var second = dateObj.getSeconds(); //当前系统时间的秒钟值--%>
    <%--    var timeValue = "" +((hour >= 12) ? (hour >= 18) ? "晚上" : "下午" : "上午" ); //当前时间属于上午、晚上还是下午--%>
    <%--    newDate = dateFilter(year)+"年"+dateFilter(month)+"月"+dateFilter(date)+"日 "+" "+dateFilter(hour)+":"+dateFilter(minute)+":"+dateFilter(second);--%>
    <%--    document.getElementById("nowTime").innerHTML = "亲爱的${user.realname}，"+timeValue+"好！ 欢迎使用汉鑫汽车租赁系统。当前时间为： "+newDate+"　"+week;--%>
    <%--    setTimeout("getLangDate()",1000);--%>
    <%--}--%>

    <%--layui.use(['form','element','layer','jquery'],function(){--%>
    <%--    var form = layui.form,--%>
    <%--        layer = parent.layer === undefined ? layui.layer : top.layer,--%>
    <%--        element = layui.element;--%>
    <%--    $ = layui.jquery;--%>
    <%--    //上次登录时间【此处应该从接口获取，实际使用中请自行更换】--%>
    <%--    $(".loginTime").html(newDate.split("日")[0]+"日</br>"+newDate.split("日")[1]);--%>
    <%--    //icon动画--%>
    <%--    $(".panel a").hover(function(){--%>
    <%--        $(this).find(".layui-anim").addClass("layui-anim-scaleSpring");--%>
    <%--    },function(){--%>
    <%--        $(this).find(".layui-anim").removeClass("layui-anim-scaleSpring");--%>
    <%--    })--%>
    <%--    $(".panel a").click(function(){--%>
    <%--        parent.addTab($(this));--%>
    <%--    })--%>
    <%--    //最新文章列表--%>
    <%--    $.get("${yeqifu}/news/loadAllNews.action?page=1&limit=10",function(data){--%>
    <%--        var hotNewsHtml = '';--%>
    <%--        for(var i=0;i<5;i++){--%>
    <%--            hotNewsHtml += '<tr ondblclick="viewNews('+data.data[i].id+')">'--%>
    <%--                +'<td align="left"><a href="javascript:;"> '+data.data[i].title+'</a></td>'--%>
    <%--                +'<td>'+data.data[i].createtime.substring(0,10)+'</td>'--%>
    <%--                +'</tr>';--%>
    <%--        }--%>
    <%--        $(".hot_news").html(hotNewsHtml);--%>
    <%--        $(".userAll span").text(data.length);--%>
    <%--    })--%>

    <%--})--%>

    <%--function viewNews(id){--%>
    <%--    $.get("${yeqifu}/news/loadNewsById.action",{id:id},function(news){--%>
    <%--        layer.open({--%>
    <%--            type:1,--%>
    <%--            title:'查看公告',--%>
    <%--            content:$("#desk_viewNewsDiv"),--%>
    <%--            area:['800px','550px'],--%>
    <%--            success:function(index){--%>
    <%--                $("#view_title").html(news.title);--%>
    <%--                $("#view_opername").html(news.opername);--%>
    <%--                $("#view_createtime").html(news.createtime);--%>
    <%--                $("#view_content").html(news.content);--%>
    <%--            }--%>
    <%--        });--%>
    <%--    });--%>
    <%--}--%>

</script>
</body>
</html>
