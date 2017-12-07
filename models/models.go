package models

import (
	_ "github.com/go-sql-driver/mysql"
	"github.com/astaxie/beego/orm"
	"github.com/astaxie/beego"
	"time"
)

type Admin struct {
	Uid      int    `orm:"auto;pk" form:"-"`
	Username string `form:"username"`
	Password string `form:"password"`
}

//
type Weight struct {
	Wid         int   `orm:"auto;pk"`
	User        *User `orm:"rel(fk)"`
	GrossWeight int
	NetWeight   int
	Ratio       int
	Price       int
	Total       int
	Status      int
	GrossImg    string
	NetImg      string
	InsertDate  time.Time
	UpdateDate  time.Time
}

type User struct {
	Uid           int       `orm:"auto;pk"`
	Username      string
	Phone         string
	SurplusFlour int
	SurplusBran  int
	Weights       []*Weight `orm:"reverse(many)"`
}

func init() {
	mysqluser := beego.AppConfig.String("mysqluser")
	mysqlhost := beego.AppConfig.String("mysqlhost")
	mysqlpass := beego.AppConfig.String("mysqlpass")
	mysqldb := beego.AppConfig.String("mysqldb")
	orm.RegisterDriver("mysql", orm.DRMySQL)
	orm.RegisterDataBase("default", "mysql", mysqluser+":"+mysqlpass+"@tcp("+mysqlhost+":3306)/"+mysqldb+"?charset=utf8&loc=Asia%2FShanghai")
	orm.RegisterModelWithPrefix("mfc_", new(Admin), new(Weight), new(User))
}
