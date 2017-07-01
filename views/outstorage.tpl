<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                 销售管理
                <button class="btn btn-success" type="button" data-toggle="modal" data-target="#stockoutModal">增加销售单</button>
            </h1>
            <div class="modal fade" id="stockoutModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" style="width:750px">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">增加新销售单</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-10">
                                    <form role="form">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>销售产品:</label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsRadiosInline"
                                                           id="optionsRadiosInline1" value="option1" checked>面条
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsRadiosInline"
                                                           id="optionsRadiosInline2" value="option2">大米
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsRadiosInline"
                                                           id="optionsRadiosInline3" value="option3">麸皮
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsRadiosInline"
                                                           id="optionsRadiosInline4" value="option3">小麦
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label>重量(kg):</label>
                                            <input class="form-control" value="500">
                                        </div>
                                        <div class="form-group">
                                            <label>单价(元):</label>
                                            <input class="form-control" value="3.0">
                                        </div>
                                        <div class="form-group">
                                            <label>总价(元):</label>
                                            <input class="form-control" readonly value="485.0">
                                        </div>
                                        <div class="form-group">
                                            <label>买家名称:</label>
                                            <input class="form-control" value="" placeholder="填写购买方名称,可不填">
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>钱款是否结清:</label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsfree" id="free1" value="option1"
                                                           checked>已结
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="optionsfree" id="free2" value="option2">未结
                                                </label>
                                            </div>
                                        </div>
                                    </form>
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
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    销售记录
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
                                <th>流水号</th>
                                <th>姓名</th>
                                <th>品类</th>
                                <th>重量(kg)</th>
                                <th>单价(元/kg)</th>
                                <th>总金额(元)</th>
                                <th>售出时间</th>
                                <th>是否已付款？</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>张三</td>
                                <td>小麦</td>
                                <td>50000</td>
                                <td>1.02</td>
                                <td>50000</td>
                                <td>2017-07-01 12:20</td>
                                <td><code>未支付</code></td>
                                <td><a href="#">详情</a></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>张三</td>
                                <td>面条</td>
                                <td>50</td>
                                <td>2.40</td>
                                <td>50</td>
                                <td>2017-07-01 12:20</td>
                                <td><code>未支付</code></td>
                                <td><a href="#">详情</a></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>张三</td>
                                <td>麸皮</td>
                                <td>500</td>
                                <td>1.34</td>
                                <td>500</td>
                                <td>2017-07-01 12:20</td>
                                <td><code class="text-success">已支付</code></td>
                                <td><a href="#">详情</a></td>
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