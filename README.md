# ActiveRecord without Rails
## Simple project with ActiveRecord and ActiveRecord::Tasks
### Using gems from Rails 7.0.2.3, Ruby 3.1.1p18, and rbenv 1.2.0

I wanted to write a project using ActiveRecord and that morphed into
wanting the database rake tasks as well.  This project is where I
stopped and posted to use as a starting point for such projects.

I don't make any claims that this is correct, good, the best, or
anything like that.  The `Rakefile` mostly came from
[this](https://stackoverflow.com/a/26046277/341980) response on
StackOverflow.

The `fd.rb` was cobbled together from various suggestions on web
sites.

This is using PostgreSQL but any database that ActiveRecord supports
should work.

# Steps to use
1. Clone the repository
2. Install Postgres
3. Create a user in Postgres
4. `rake create:db`
5. `rake db:migrate`
6. `./fd.rb`
7. `psql -c 'select * from files;' files_development`
```
 id |   path    |         created_at         |         updated_at         
----+-----------+----------------------------+----------------------------
  1 | Hobgoblin | 2022-03-30 18:16:36.509568 | 2022-03-30 18:16:36.509568
(1 row)

```
