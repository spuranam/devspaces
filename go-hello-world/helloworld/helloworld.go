package helloworld

import (
	"fmt"
	"net/http"
)

// Greet prints greet
func Greet(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")
}
