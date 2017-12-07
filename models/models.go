package models

import (
	_ "github.com/go-sql-driver/mysql"
	"github.com/astaxie/beego/orm"
)

type Admin struct {
	Uid   int `orm:"auto;pk"`
	Username string
	Password string
}

func init() {

	orm.RegisterModel(new(Admin))
}
