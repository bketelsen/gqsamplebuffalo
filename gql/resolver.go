package gql

import (
	"context"
	"fmt"

	"github.com/bketelsen/gqsamplebuffalo/models"
	"github.com/pkg/errors"
) // THIS CODE IS A STARTING POINT ONLY. IT WILL NOT BE UPDATED WITH SCHEMA CHANGES.

type Resolver struct{}

func (r *Resolver) Query() QueryResolver {
	return &queryResolver{r}
}

type queryResolver struct{ *Resolver }

func (r *queryResolver) Posts(ctx context.Context) ([]*Post, error) {
	var posts []*models.Post

	// Retrieve all Posts from the DB
	if err := models.DB.All(&posts); err != nil {
		return []*Post{}, errors.WithStack(err)
	}
	fmt.Println(posts)

	var qPosts []*Post

	for _, p := range posts {
		var id string
		id = p.ID.String()
		var title string
		title = p.Title
		var description string
		description = p.Description
		var markdown string
		markdown = p.Markdown
		var ca, ua int
		ca = int(p.CreatedAt.Unix())
		ua = int(p.UpdatedAt.Unix())
		pp := &Post{
			ID:          &id,
			Title:       &title,
			Description: &description,
			Markdown:    &markdown,
			Createdat:   &ca,
			Updatedat:   &ua,
		}
		qPosts = append(qPosts, pp)
	}
	return qPosts, nil
}
