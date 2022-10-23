package helloworld_test

import (
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"testing"

	"github.ford.com/containers/helloworld"
)

func TestHelloWorld(t *testing.T)  {
	req := httptest.NewRequest(http.MethodGet, "/", nil)
    w := httptest.NewRecorder()
    helloworld.Greet(w, req)
    res := w.Result()
    defer res.Body.Close()
    data, err := ioutil.ReadAll(res.Body)
    if err != nil {
        t.Errorf("expected error to be nil got %v", err)
    }
    if string(data) != "Hello World!" {
        t.Errorf("expected \"Hello World\" got %v", string(data))
    }
}
