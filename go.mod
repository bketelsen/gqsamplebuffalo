module github.com/bketelsen/blog

go 1.12

replace github.com/bketelsen/blog/actions => /home/bketelsen/projects/gq/src/blog/actions

replace github.com/bketelsen/blog/models => /home/bketelsen/projects/gq/src/blog/models

require (
	github.com/bketelsen/blog/models v0.0.0-00010101000000-000000000000
	github.com/gobuffalo/buffalo v0.14.1
	github.com/gobuffalo/buffalo-pop v1.9.0
	github.com/gobuffalo/envy v1.6.15
	github.com/gobuffalo/mw-csrf v0.0.0-20190129204204-25460a055517
	github.com/gobuffalo/mw-forcessl v0.0.0-20190224202501-6d1ef7ffb276
	github.com/gobuffalo/mw-i18n v0.0.0-20190224203426-337de00e4c33
	github.com/gobuffalo/mw-paramlogger v0.0.0-20190224201358-0d45762ab655
	github.com/gobuffalo/packr/v2 v2.0.4
	github.com/gobuffalo/pop v4.10.0+incompatible
	github.com/gobuffalo/suite v2.6.0+incompatible
	github.com/jackc/pgx v3.3.0+incompatible // indirect
	github.com/markbates/grift v1.0.5
	github.com/pkg/errors v0.8.1
	github.com/spf13/afero v1.2.1 // indirect
	github.com/stretchr/testify v1.3.0
	github.com/unrolled/secure v1.0.0
)
