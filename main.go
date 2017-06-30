package main

import (
	_ "myprj/routers"
	"github.com/astaxie/beego"
	_ "myprj/models"
)

func main() {
	beego.Run()
}
