package routers

import (
	"github.com/astaxie/beego"
	"sys/controllers/user"
	"sys/controllers/home"
	"github.com/astaxie/beego/context"
	"net/http"
	"sys/controllers/media"
	"sys/controllers/order"
)

func init() {
	//filter
	var FilterUser = func(ctx *context.Context) {
		islogin, _ := ctx.Input.Session("islogin").(int)
		if islogin != 1 && ctx.Request.RequestURI != "/login" {
			ctx.Redirect(http.StatusMovedPermanently, "/login")
		}
	}
	beego.InsertFilter("/*", beego.BeforeRouter, FilterUser)

	//home
	beego.Router("/", &home.HomeController{}, "get:GetIndex")
	beego.Router("/camera",&media.CameraControl{},"get:GetCamera")
	beego.Router("/orders",&order.OrderController{},"get:GetOrders")
	beego.Router("/orders/json",&order.OrderController{},"get:GetOrdersJson")

	//user
	beego.Router("/login", &user.UserController{}, "get:GetLogin;post:PostLogin")
	beego.Router("/logout",&user.UserController{},"get:GetLogout")




}
