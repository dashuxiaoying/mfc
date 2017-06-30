package media

import "github.com/astaxie/beego"

type CameraControl struct {
	beego.Controller
}

func (this *CameraControl)GetCamera(){
	this.Layout="layout_main.tpl"
	this.TplName = "camera.tpl"
}
