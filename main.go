package main

import (
	_ "sys/routers"
	"github.com/astaxie/beego"
	_ "sys/models"
)

func main() {
	beego.Run()
}
