package shop

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
	"sys/models"
)

type ShopController struct {
	beego.Controller
}

func (this *ShopController) GetCards() {
	var users []*models.User
	o := orm.NewOrm()
	qs := o.QueryTable(&models.User{})
	qs.OrderBy("-uid")
	qs.Limit(10, 20)
	qs.All(&users)

	this.Data["Users"] = users
	this.Layout = "layout_main.tpl"
	this.TplName = "shop.tpl"
}
