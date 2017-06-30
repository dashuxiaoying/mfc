package routers

import (
	"github.com/astaxie/beego"
	"myprj/controllers/user"
	"myprj/controllers/home"
	"github.com/astaxie/beego/context"
	"net/http"
)

func init() {

	//home
	beego.Router("/", &home.HomeController{}, "get:GetIndex")

	//user
	beego.Router("/login", &user.UserController{}, "get:GetLogin;post:PostLogin")
	beego.Router("/logout",&user.UserController{},"get:GetLogout")

	//filter
	var FilterUser = func(ctx *context.Context) {
		islogin, _ := ctx.Input.Session("islogin").(int)
		if islogin != 1 && ctx.Request.RequestURI != "/login" {
			ctx.Redirect(http.StatusMovedPermanently, "/login")
		}
	}
	beego.InsertFilter("/*", beego.BeforeRouter, FilterUser)
}
