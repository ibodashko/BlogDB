SELECT Name, COUNT(title) 
FROM tags
JOIN blog_tags ON blog_tags.tag_id=tags.id
JOIN posts ON blog_tags.post_id=posts.id
GROUP BY Name;