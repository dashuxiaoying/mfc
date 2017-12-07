package models

import (
	_ "github.com/go-sql-driver/mysql"
	"github.com/astaxie/beego/orm"
	"github.com/astaxie/beego"
)

type Admin struct {
	Uid      int `orm:"auto;pk"`
	Username string
	Password string
}

func init() {
	mysqluser := beego.AppConfig.String("mysqluser")
	mysqlhost := beego.AppConfig.String("mysqlhost")
	mysqlpass := beego.AppConfig.String("mysqlpass")
	mysqldb := beego.AppConfig.String("mysqldb")
	orm.RegisterDriver("mysql", orm.DRMySQL)
	orm.RegisterDataBase("default", "mysql", mysqluser+":"+mysqlpass+"@tcp("+mysqlhost+":3306)/"+mysqldb+"?charset=utf8&loc=Asia%2FShanghai")
	orm.RegisterModel(new(Admin))
}
