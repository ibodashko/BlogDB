SELECT title, Name 
FROM posts
JOIN blog_tags ON blog_tags.post_id=posts.id
JOIN tags ON blog_tags.tag_id=tags.id
ORDER BY title DESC;