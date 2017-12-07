package order

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"sys/models"
)

type OrderController struct {
	beego.Controller
}

func (this *OrderController) GetOrders() {
	var orders []*models.Weight
	o := orm.NewOrm()
	qs := o.QueryTable("mfc_weight").RelatedSel()
	qs.OrderBy("-insert_date")
	qs.Limit(10, 20)
	qs.All(&orders)

	this.Data["Orders"] = orders
	this.Layout = "layout_main.tpl"
	this.TplName = "orders.tpl"
}

func (this *OrderController) GetOrdersJson() {

}
