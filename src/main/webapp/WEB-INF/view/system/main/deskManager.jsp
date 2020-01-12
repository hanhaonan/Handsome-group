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

    <%--
    加地图
    --%>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css"/>
    <style>
        html, body, #container {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
        }

        .amap-icon img,
        .amap-marker-content img{
            width: 25px;
            height: 34px;
        }

        .marker {
            position: absolute;
            top: -20px;
            right: -118px;
            color: #fff;
            padding: 4px 10px;
            box-shadow: 1px 1px 1px rgba(10, 10, 10, .2);
            white-space: nowrap;
            font-size: 12px;
            font-family: "";
            background-color: #25A5F7;
            border-radius: 3px;
        }

        .input-card{
            width: 18rem;
            z-index: 0;
        }

        .input-card .btn{
            margin-right: .8rem;
        }

        .input-card .btn:last-child{
            margin-right: 0;
        }
        p.my-desc {
            margin: 5px 0;
            line-height: 150%;
        }
        .amap-icon img {
            width: 25px;
            height: 34px;
        }
        .amap-marker-label{
            border: 0;
            background-color: transparent;
        }
        .info{
            position: relative;
            top: 0;
            right: 0;
            min-width: 0;
        }



        div.info-top {
            position: relative;
            background: none repeat scroll 0 0 #F9F9F9;
            border-bottom: 1px solid #CCC;
            border-radius: 5px 5px 0 0;
        }

        div.info-top div {
            display: inline-block;
            color: #333333;
            font-size: 14px;
            font-weight: bold;
            line-height: 31px;
            padding: 0 10px;
        }

        div.info-top img {
            position: absolute;
            top: 10px;
            right: 10px;
            transition-duration: 0.25s;
        }

        div.info-top img:hover {
            box-shadow: 0px 0px 5px #000;
        }

        div.info-middle {
            font-size: 12px;
            padding: 10px 6px;
            line-height: 20px;
        }

        div.info-bottom {
            height: 0px;
            width: 100%;
            clear: both;
            text-align: center;
        }

        div.info-bottom img {
            position: relative;
            z-index: 104;
        }

        span {
            margin-left: 5px;
            font-size: 11px;
        }

        .info-middle img {
            float: left;
            margin-right: 6px;
        }
    </style>
</head>
<body class="childrenBody">

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
    <legend>校园地图监测情况一览</legend>
</fieldset>


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

<div id="container"></div>
<div class="input-card">
    <label style="color:grey">选择楼层</label>
    <div class="input-item">
        <!-- <input id="addMarker" type="button" class="btn" onclick="addMarker()" value="添加点标记"> -->
        <input id="updateMarker" type="button" class="btn" onclick="updateIcon()" value="显示F1楼层及传感器">
    </div>
    <div class="input-item">
        <input id="clearMarker" type="button" class="btn" onclick="clearMarker()" value="显示F2楼层及传感器">
        <!-- <input id="updateMarker" type="button" class="btn" onclick="updateContent()" value="显示F2楼层及传感器"> -->
    </div>
</div>
<!--上面是地图 -->


<script type="text/javascript"
        src="https://webapi.amap.com/maps?v=1.4.15&key=cad52e83c79385e3cfbea74657aae4dd"></script>
<script language="javascript">
    var imageLayer = new AMap.ImageLayer({
        url: "F1.png",
        bounds: new AMap.Bounds(
            //[116.327911, 39.939229],
            // [116.342659, 39.946275]
            [103.929506,30.751428],
            [103.931013,30.752212]
        ),
        zooms: [18, 28]
    });
    var imageLayer2 = new AMap.ImageLayer({
        url: "F2.png",
        bounds: new AMap.Bounds(
            //[116.327911, 39.939229],
            // [116.342659, 39.946275]
            [103.929506,30.751428],
            [103.931013,30.752212]
        ),
        zooms: [18, 28]
    });
    var marker, map = new AMap.Map("container", {
        resizeEnable: true,
        center: [103.93053,30.752018],
        zoom: 16,
        expandZoomRange:true,
        zooms:[3,50],

        // layers: [
        //     new AMap.TileLayer(),
        //     imageLayer
        // ]
    });
    //调出F1的按钮 updateIcon
    function updateIcon() {

        var  map = new AMap.Map("container", {
                resizeEnable: true,
                center: [103.93053,30.752018],
                zoom: 17,
                expandZoomRange:true,
                zooms:[3,50],

                // layers: [
                //     new AMap.TileLayer(),
                //     imageLayer
                // ]
            }
        );


        var marker = new AMap.Marker({
            position: new AMap.LngLat(103.930287,30.753588),
            icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-default.png',
            offset: new AMap.Pixel(0, 0)
        });
        var marker2 = new AMap.Marker({
            position: new AMap.LngLat(103.932057,30.752648),
            icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-default.png',
            offset: new AMap.Pixel(0, 0)
        });
        var marker3 = new AMap.Marker({
            position: new AMap.LngLat(103.929388,30.7514),
            icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-default.png',
            offset: new AMap.Pixel(0, 0)
        });
        var marker4 = new AMap.Marker({
            position: new AMap.LngLat(103.931148,30.751598),
            icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-default.png',
            offset: new AMap.Pixel(0, 0)
        });
        var marker5 = new AMap.Marker({
            position: new AMap.LngLat(103.929291,30.752303),
            icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-default.png',
            offset: new AMap.Pixel(0, 0)
        });
        marker.setTitle('西北方向路口监测点');
        marker2.setTitle('东北方向路口监测点');
        marker3.setTitle('西南方向路口监测点');
        marker4.setTitle('东南方向路口监测点');
        marker5.setTitle('西方向路口监测点');
        marker.setMap(map);
        marker2.setMap(map);
        marker3.setMap(map);
        marker4.setMap(map);
        marker5.setMap(map);


        //鼠标点击marker弹出自定义窗体
        AMap.event.addListener(marker, 'click', function () {
            infoWindow.open(map, marker.getPosition());
            map.openInfoWindow(infoWindow, map.getPosition());

        });
        AMap.event.addListener(marker2, 'click', function () {
            infoWindow2.open(map, marker2.getPosition());
        });
        AMap.event.addListener(marker3, 'click', function () {
            infoWindow3.open(map, marker3.getPosition());
        });
        AMap.event.addListener(marker4, 'click', function () {
            infoWindow4.open(map, marker4.getPosition());
        });
        AMap.event.addListener(marker5, 'click', function () {
            infoWindow5.open(map, marker5.getPosition());
        });


//实例化信息窗体1
        var title = '西北方向路口监测点',
            content = [];
        content.push("位置：科研楼西北方向路口");
        content.push("道路状态：通畅");
        content.push("<a href='https://open.iot.10086.cn/develop/global/product/#/device/list/showstream/255382/532597440'>详细信息</a>");
        var infoWindow = new AMap.InfoWindow({
            isCustom: true,  //使用自定义窗体
            content: createInfoWindow(title, content.join("<br/>")),
            offset: new AMap.Pixel(21, 0)
        });
//实例化信息窗体2
        var title2 = '东北方向路口监测点',
            content2 = [];
        content2.push("位置：科研楼东北方向路口");
        content2.push("道路状态：轻度拥堵");
        content2.push("<a href='https://open.iot.10086.cn/develop/global/product/#/device/list/showstream/255382/532597440'>详细信息</a>");
        var infoWindow2 = new AMap.InfoWindow({
            isCustom: true,  //使用自定义窗体
            content: createInfoWindow(title2, content2.join("<br/>")),
            offset: new AMap.Pixel(21, 0)
        });
//实例化信息窗体3
        var title3 = '西南方向路口监测点',
            content3 = [];
        content3.push("位置：科研楼西南方向路口");
        content3.push("道路状态：严重拥堵");
        content3.push("<a href='https://open.iot.10086.cn/develop/global/product/#/device/list/showstream/255382/532597440'>详细信息</a>");
        var infoWindow3 = new AMap.InfoWindow({
            isCustom: true,  //使用自定义窗体
            content: createInfoWindow(title3, content3.join("<br/>")),
            offset: new AMap.Pixel(21, 0)
        });
//实例化信息窗体4
        var title4 = '东南方向路口监测点',
            content4 = [];
        content4.push("位置：科研楼东南方向路口");
        content4.push("状态：拥堵");
        content4.push("<a href='https://open.iot.10086.cn/develop/global/product/#/device/list/showstream/255382/532597440'>详细信息</a>");
        var infoWindow4 = new AMap.InfoWindow({
            isCustom: true,  //使用自定义窗体
            content: createInfoWindow(title4, content4.join("<br/>")),
            offset: new AMap.Pixel(21, 0)
        });
//实例化信息窗体5
        var title5 = '西方向路口监测点',
            content5 = [];
        content5.push("位置：科研楼西方向路口");
        content5.push("状态：拥堵");
        content5.push("<a href='https://open.iot.10086.cn/develop/global/product/#/device/list/showstream/255382/532597440'>详细信息</a>");
        var infoWindow5 = new AMap.InfoWindow({
            isCustom: true,  //使用自定义窗体
            content: createInfoWindow(title5, content5.join("<br/>")),
            offset: new AMap.Pixel(21, 0)
        });


//构建自定义信息窗体
        function createInfoWindow(title, content) {
            var info = document.createElement("div");
            info.className = "11";

            //可以通过下面的方式修改自定义窗体的宽高
            //info.style.width = "400px";
            // 定义顶部标题
            var top = document.createElement("div");
            var titleD = document.createElement("div");
            var closeX = document.createElement("img");
            top.className = "info-top";
            titleD.innerHTML = title;
            closeX.src = "https://webapi.amap.com/images/close2.gif";
            closeX.onclick = closeInfoWindow;

            top.appendChild(titleD);
            top.appendChild(closeX);
            info.appendChild(top);

            // 定义中部内容
            var middle = document.createElement("div");
            middle.className = "info-middle";
            middle.style.backgroundColor = 'white';
            middle.innerHTML = content;
            info.appendChild(middle);

            // 定义底部内容
            var bottom = document.createElement("div");
            bottom.className = "info-bottom";
            bottom.style.position = 'relative';
            bottom.style.top = '0px';
            bottom.style.margin = '0 auto';
            var sharp = document.createElement("img");
            sharp.src = "https://webapi.amap.com/images/sharp.png";
            bottom.appendChild(sharp);
            info.appendChild(bottom);
            return info;
        }

        //关闭信息窗体
        function closeInfoWindow() {
            map.clearInfoWindow();
        }
//         marker.setMap(map);
//         marker.setLabel({
//         offset: new AMap.Pixel(0, 0),  //设置文本标注偏移量
//         content: "sensor1", //设置文本标注内容
//         direction: 'right' //设置文本标注方位
//     });

//     //信息框显示的内容
//     var infoWindow = new AMap.InfoWindow({
//     isCustom: true,  //使用自定义窗体
//     content: createInfoWindow(title, content.join("<br/>")),
//     offset: new AMap.Pixel(16, -45)
// });
//     AMap.event.addListener(marker, 'click', function () {
//         infoWindow.open(map, marker.getPosition());
//     });
    }

    //     var marker2 = new AMap.Marker({
    //     position: new AMap.LngLat(103.93052,30.752018),
    //     icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-default.png',
    //     offset: new AMap.Pixel(0, 0)
    //     });
    //     marker2.setMap(map);


    // var markers = [{
    //     icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-1.png',
    //     position: [103.93053,30.752018]
    // }, {
    //     icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-2.png',
    //     position: [103.93052,30.752018]
    // }, {
    //     icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-3.png',
    //     position: [103.93054,30.752018]
    // }];
    // markers.forEach(function(marker) {
    //     new AMap.Marker({
    //         map: map,
    //         icon: marker.icon,
    //         position: [marker.position[0], marker.position[1]],
    //         offset: new AMap.Pixel(-13, -30)
    //     });
    // });








    //调出F2的按钮 updateIcon
    function clearMarker() {

        var  map = new AMap.Map("container", {
                resizeEnable: true,
                center: [103.93053,30.752018],
                zoom: 20,
                expandZoomRange:true,
                zooms:[3,50],

                // layers: [
                //     new AMap.TileLayer(),
                //     imageLayer2
                // ]
            }
        );


        var marker4 = new AMap.Marker({
            position: new AMap.LngLat(103.936839,30.759694),
            icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-default.png',
            offset: new AMap.Pixel(0, 0)
        });
        marker4.setMap(map);

        var marker5 = new AMap.Marker({
            position: new AMap.LngLat(103.938618,30.75884),
            icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-default.png',
            offset: new AMap.Pixel(0, 0)
        });
        marker5.setMap(map);
        marker4.setTitle('Sensor4');
        marker5.setTitle('Sensor5');
// var markers = [{
//     icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-1.png',
//     position: [103.93057,30.752018]
// }, {
//     icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-2.png',
//     position: [103.93059,30.752018]
// }, {
//     icon: '//a.amap.com/jsapi_demos/static/demo-center/icons/poi-marker-3.png',
//     position: [103.93051,30.752018]
// }];
// markers.forEach(function(marker) {
//     new AMap.Marker({
//         map: map,
//         icon: marker.icon,
//         position: [marker.position[0], marker.position[1]],
//         offset: new AMap.Pixel(-13, -30)
//     });
// });

    }
</script>
</body>
</html>
