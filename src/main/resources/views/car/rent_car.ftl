<!DOCTYPE html>
<html>
<head>
    <title>租车管理</title>
    <#include "../common.ftl">
</head>
<body class="childrenBody">
<form class="layui-form" >
    <blockquote class="layui-elem-quote quoteBox">
        <form class="layui-form">
            <div class="layui-inline">
                <div class="layui-input-inline">
                    <input type="text" name="carName" class="layui-input searchVal" placeholder="车名" />
                </div>
                <div class="layui-input-inline">
                    <input type="text" name="carPrice" class="layui-input searchVal" placeholder="价格" />
                </div>
                <div class="layui-input-inline">
                    <select name="state" id="state">
                        <option value="" >租赁状态</option>
                        <option value="1">可租赁</option>
                        <option value="2">已租赁</option>
                        <option value="3">不可租赁</option>
                    </select>
                </div>
                <a class="layui-btn search_btn" data-type="reload">
                    <i class="layui-icon">&#xe615;</i> 搜索
                </a>
            </div>
        </form>
    </blockquote>
    <!-- 数据表格 -->
    <table id="saleChanceList" class="layui-table" lay-filter="saleChances"></table>

    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <a class="layui-btn layui-btn-normal delNews_btn" lay-event="rent">
                <i class="layui-icon">&#xe608;</i>
                批量租车
            </a>
        </div>
    </script>

    <!--操作-->
    <script id="saleChanceListBar" type="text/html">
        <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">租车</a>
    </script>

</form>
<script type="text/javascript" src="${ctx}/js/car/rent_car.js">
</script>
</body>
</html>