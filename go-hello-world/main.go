package main

import (
	"net/http"

	"github.ford.com/containers/go-hello-world/helloworld"
)

func main() {
	http.HandleFunc("/", helloworld.Greet)
	http.ListenAndServe(":8080", nil)
}
