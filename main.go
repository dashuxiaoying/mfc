package main

import (
	_ "sys/routers"
	"github.com/astaxie/beego"
)

func main() {

	beego.AddFuncMap("minus",minus)
	beego.Run()
}

func minus(a,b int)(out int){
	out = a-b
	return
}

