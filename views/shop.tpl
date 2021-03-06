<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                门市支取
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    面本管理
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                        <div class="input-group col-sm-3">
                            <input type="text" class="form-control input-sm" placeholder="请输入编号或姓名"/><span class="input-group-addon btn btn-primary">搜索</span>
                        </div>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>面本编号</th>
                                <th>姓名</th>
                                <th>余一粉(kg)</th>
                                <th>余麸皮(kg)</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            {{range .Users}}
                            <tr>
                                <td>{{.Uid}}</td>
                                <td>{{.Username}}</td>
                                <td>{{.SurplusFlour}}</td>
                                <td>{{.SurplusBran}}</td>
                                <td><a href="#">详情</a></td>
                            </tr>
                            {{end}}

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