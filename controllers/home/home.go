package home

import "github.com/astaxie/beego"

type HomeController struct {
	beego.Controller
}

func (this *HomeController) GetIndex() {
	this.Layout="layout_main.tpl"
	this.TplName = "index.tpl"
}
