<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">称重管理
                <button class="btn btn-success" type="button" data-toggle="modal" data-target="#myModal">
                    开始称重
                </button>
            </h1>
            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" style="width:750px">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">增加新的称重</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-8">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>单号：</label>
                                            <input class="form-control" value="147258369" disabled/>
                                        </div>
                                        <div class="form-group">
                                            <label>姓名:</label>
                                            <input class="form-control" placeholder="请填写用户姓名">
                                        </div>
                                        <div class="form-group">
                                            <label>毛重(kg):</label>
                                            <input class="form-control" readonly value="1000">
                                        </div>
                                        <div class="form-group">
                                            <label>皮重(kg):</label>
                                            <input class="form-control" readonly value="500">
                                        </div>
                                        <div class="form-group">
                                            <label>扣杂(%):</label>
                                            <input class="form-control" value="3.0">

                                        </div>
                                        <div class="form-group">
                                            <label>净重(kg):</label>
                                            <input class="form-control" readonly value="485">
                                        </div>
                                        <div class="form-group">
                                            <label>单价(元/500g):</label>
                                            <input class="form-control" value="1.02">
                                        </div>
                                        <canvas id="canvas-gw" width="200" height="160"></canvas>
                                        <canvas id="canvas-rt" width="200" height="160"></canvas>
                                    </form>
                                </div>
                                <div class="col-lg-4">
                                    <div class="panel panel-green">
                                        <div class="panel-heading">
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    KG:
                                                </div>
                                                <div class="col-xs-9 text-right">
                                                    <div class="huge">260</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <button id="snap-gw" class="btn btn-warning btn-sm">取毛重</button>
                                    <button id="snap-rt" class="btn btn-info btn-sm">取皮重</button>
                                    <button id="get-net" class="btn btn-success btn-sm">取净重</button>
                                    <video id="video" width="200" height="200" autoplay></video>
                                </div>
                            </div>

                        </div>
                        <div class="modal-footer">

                            <button type="button" class="btn btn-primary">保存并打印</button>
                            <button type="button" class="btn btn-primary">保存</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->

        </div>
        <!-- /.col-lg-12 -->
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    称重历史
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                        <tr>
                            <th>姓名</th>
                            <th>单号</th>
                            <th>毛重/皮重(kg)</th>
                            <th>扣杂</th>
                            <th>净重(kg)</th>
                            <th>单价(元/kg)</th>
                            <th>状态</th>
                            <th>日期</th>
                            <th>操作</th>

                        </tr>
                        </thead>
                        <tbody>
                        <tr class="odd gradeX">
                            <td>耿舒</td>
                            <td>12321232</td>
                            <td>1000/500</td>
                            <td class="center">3%</td>
                            <td class="center">485</td>
                            <td class="center">1.08</td>
                            <td class="center"><code>未完成</code>&nbsp;<a href="#">称皮</a></td>
                            <td class="center">2017-06-05 12:33</td>
                            <td class="center">
                                <a href="#">详情</a>
                            </td>

                        </tr>

                        <tr class="even gradeX">
                            <td>李四</td>
                            <td>12321232</td>
                            <td>1000/200</td>
                            <td class="center">3%</td>
                            <td class="center">485</td>
                            <td class="center">1.08</td>
                            <td class="center"><code class="text-success">已完成</code></td>
                            <td class="center">2017-06-05 12:34</td>
                            <td class="center">
                                <a href="#">详情</a>
                            </td>

                        </tr>
                        </tbody>
                    </table>
                    <!-- /.table-responsive -->

                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
        <!-- /.col-lg-12 -->
    </div>
</div>
