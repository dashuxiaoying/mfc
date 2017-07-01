<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">
                入库管理
                <button class="btn btn-success" type="button" data-toggle="modal" data-target="#instorageModal">增加入库单
                </button>
            </h1>
            <!-- Modal -->
            <div class="modal fade" id="instorageModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" style="width:750px">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">增加新入库单</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-lg-10">
                                    <form role="form">
                                        <div class="form-group">
                                            <label>选择供货商：</label>
                                            <select class="form-control">
                                                <option>张三</option>
                                                <option>李四</option>
                                                <option>王五</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>入库产品:</label>
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
                                            <label>总价(kg):</label>
                                            <input class="form-control" readonly value="485">
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
            <!-- /.modal -->
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    入库记录
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="input-group col-sm-3">
                        <input type="text" class="form-control input-sm" placeholder="请输入"/><span
                            class="input-group-addon btn btn-primary">搜索</span>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>流水号</th>
                                <th>来源</th>
                                <th>入库品类</th>
                                <th>入库重量(kg)</th>
                                <th>单价(元/kg)</th>
                                <th>总金额(元)</th>
                                <th>入库时间</th>
                                <th>是否结款？</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>张三</td>
                                <td>大米</td>
                                <td>500</td>
                                <td>1.0</td>
                                <td>500.0</td>
                                <td>2017-07-01 12:20</td>
                                <td><code class="text-success">已结</code></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>张三</td>
                                <td>面条</td>
                                <td>500</td>
                                <td>1.5</td>
                                <td>500.0</td>
                                <td>2017-07-01 12:20</td>
                                <td><code>未结</code></td>
                                <td><a href="#">删除</a></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>张三</td>
                                <td>麸皮</td>
                                <td>500</td>
                                <td>2.0</td>
                                <td>100.0</td>
                                <td>2017-07-01 12:20</td>
                                <td><code class="text-success">已结</code></td>
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