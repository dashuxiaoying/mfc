package shop

import "github.com/astaxie/beego"

type ShopController struct {
	beego.Controller
}

func (this *ShopController) GetCards() {
	this.Layout = "layout_main.tpl"
	this.TplName = "shop.tpl"
}
