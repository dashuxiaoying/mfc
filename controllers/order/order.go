package order

import "github.com/astaxie/beego"

type OrderController struct{
	beego.Controller
}

func (this *OrderController)GetOrders(){
	this.Layout="layout_main.tpl"
	this.TplName="orders.tpl"
}

func (this *OrderController)GetOrdersJson(){

}
