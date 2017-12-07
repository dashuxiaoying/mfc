package user

import (
	"github.com/astaxie/beego"
	"log"
	"net/http"
	"github.com/astaxie/beego/orm"
	"sys/models"
)

type UserController struct {
	beego.Controller
}

func (this *UserController) GetLogin() {
	this.Data["title"] = "login"
	this.Layout = "layout_login.tpl"
	this.TplName = "login.tpl"
}

func (this *UserController) PostLogin() {
	u := models.Admin{}
	if err := this.ParseForm(&u); err != nil {
		log.Println(err)
		this.Redirect("/login", http.StatusMovedPermanently)
		return
	}

	o := orm.NewOrm()
	admin := models.Admin{Username: u.Username, Password: u.Password}
	err := o.Read(&admin, "Username", "Password")
	if err == orm.ErrNoRows {
		this.Redirect("/login", http.StatusMovedPermanently)
	} else {
		this.SetSession("islogin", int(1))
		this.Redirect("/", http.StatusMovedPermanently)
	}
}

func (this *UserController) GetLogout() {
	this.SetSession("islogin", int(0))
	this.DestroySession()
	this.Redirect("/login", http.StatusMovedPermanently)
}
