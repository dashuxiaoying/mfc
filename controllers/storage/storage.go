package storage

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"sys/models"
)

type StorageController struct {
	beego.Controller
}

func (this *StorageController) GetInstorage() {
	var stockins []*models.Stockin
	o := orm.NewOrm()
	qs := o.QueryTable(&models.Stockin{})
	qs.OrderBy("-insert_date")
	qs.Limit(10, 20)
	qs.All(&stockins)

	this.Data["Stockins"] = stockins
	this.Layout = "layout_main.tpl"
	this.TplName = "instorage.tpl"
}

func (this *StorageController) GetOutstorage() {
	var stockouts []*models.Stockout
	o := orm.NewOrm()
	qs := o.QueryTable(&models.Stockout{})
	qs.OrderBy("-insert_date")
	qs.Limit(10, 20)
	qs.All(&stockouts)

	this.Data["Stockouts"] = stockouts
	this.Layout = "layout_main.tpl"
	this.TplName = "outstorage.tpl"
}

func (this *StorageController) GetSupplies() {
	var suppliers []*models.Supply
	o := orm.NewOrm()
	qs := o.QueryTable(&models.Supply{})
	qs.OrderBy("-insert_date")
	qs.Limit(10, 20)
	qs.All(&suppliers)

	this.Data["Suppliers"] = suppliers
	this.Layout = "layout_main.tpl"
	this.TplName = "supply.tpl"
}
