package main

import (
	"web"
	"blog"
)

func main() {
	web.Get("/(.*)",blog.Main)
	web.Run("0.0.0.0:9999")
}
