SELECT  title, body 
FROM posts
WHERE id NOT IN (SELECT DISTINCT post_id FROM blog_tags);