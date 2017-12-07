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

type User struct {
	Id   int    `form:"-"`
	Name string `form:"username"`
	Pass string `form:"password"`
}

func init(){
	orm.RegisterDriver("mysql", orm.DRMySQL)
	orm.RegisterDataBase("default", "mysql", "root:buzhidao@tcp(192.168.1.100:3306)/MFC?charset=utf8&loc=Asia%2FShanghai")
}

func (this *UserController) GetLogin() {
	this.Data["title"] = "login"
	this.Layout = "layout_login.tpl"
	this.TplName = "login.tpl"
}

func (this *UserController) PostLogin() {
	u := User{}
	if err := this.ParseForm(&u); err != nil {
		log.Println(err)
		this.Redirect("/login", http.StatusMovedPermanently)
		return
	}
	var admin models.Admin
	o := orm.NewOrm()
	o.QueryTable("admin").Filter("username", u.Name).One(&admin)

	if admin.Username == "admin" && admin.Password == "admin" {
		this.SetSession("islogin", int(1))
		this.Redirect("/", http.StatusMovedPermanently)
	} else {
		this.Redirect("/login", http.StatusMovedPermanently)
	}
}

func (this *UserController) GetLogout() {
	this.SetSession("islogin", int(0))
	this.DestroySession()
	this.Redirect("/login", http.StatusMovedPermanently)
}
