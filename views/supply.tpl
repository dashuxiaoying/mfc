<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                供货商管理
                <button class="btn btn-success" type="button" data-toggle="modal" data-target="#supplyModal">增加供货商</button>
            </h1>
            <!-- Modal -->
            <div class="modal fade" id="supplyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" style="width:750px">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">增加新供货商</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>供货商名称:</label>
                                            <input class="form-control" placeholder="请填写供货商姓名">
                                        </div>
                                        <div class="form-group">
                                            <label>电话:</label>
                                            <input class="form-control" value="" placeholder="请填写供货商电话或座机">
                                        </div>
                                        <div class="form-group">
                                            <label>备注:</label>
                                            <input class="form-control" value="">
                                        </div>

                                    </form>
                                </div>

                            </div>

                        </div>
                        <div class="modal-footer">
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
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    供货商记录
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="input-group col-sm-3">
                        <input type="text" class="form-control input-sm" placeholder="请输入"/><span class="input-group-addon btn btn-primary">搜索</span>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>供货商名称</th>
                                <th>联系方式</th>
                                <th>备注</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>李四</td>
                                <td>15938706502</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>王五</td>
                                <td>15938706502</td>
                                <td></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            </tbody>
                        </table>
                        <div>
                            <ul class="pagination">
                                <li class="disabled"><a href="#">&laquo;</a></li>
                                <li class="active"><a href="#">1</a></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">3</a></li>
                                <li><a href="#">4</a></li>
                                <li><a href="#">5</a></li>
                                <li><a href="#">&raquo;</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.table-responsive -->
                </div>
                <!-- /.panel-body -->
            </div>
            <!-- /.panel -->
        </div>
    </div>
</div>