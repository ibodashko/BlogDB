select user from posts
where id in (select post_id from blog_tags)
group by user
limit 5;