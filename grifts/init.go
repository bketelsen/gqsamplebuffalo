package grifts

import (
	"github.com/bketelsen/blog/actions"
	"github.com/gobuffalo/buffalo"
)

func init() {
	buffalo.Grifts(actions.App())
}
