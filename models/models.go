package models

import (
	_ "github.com/mattn/go-sqlite3"
	"github.com/astaxie/beego/orm"
)

type Admin struct {
	Id   int
	User string
	Pass string
}

func init() {
	orm.RegisterDriver("sqlite3", orm.DRSqlite)
	orm.RegisterDataBase("default", "sqlite3", "data.db")
	orm.RegisterModel(new(Admin))
}
