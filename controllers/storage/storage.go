package storage

import "github.com/astaxie/beego"

type StorageController struct{
	beego.Controller
}

func (this *StorageController)GetInstorage(){
	this.Layout = "layout_main.tpl"
	this.TplName = "instorage.tpl"
}

func (this *StorageController)GetOutstorage(){
	this.Layout = "layout_main.tpl"
	this.TplName = "outstorage.tpl"
}
