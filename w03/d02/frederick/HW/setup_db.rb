require "pg"

con = PG.connect(dbname: 'blog', host: 'localhost')

# Create the workers table
con.exec("
  CREATE TABLE authors
  (
    id SERIAL4 PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    bio TEXT NOT NULL,
    twitter VARCHAR(255) NOT NULL,
    website VARCHAR(255) NOT NULL,
    google_plus VARCHAR(255) NOT NULL
  );
")

# Create the tasks table
con.exec("
  CREATE TABLE posts
  (
    id SERIAL4 PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    content TEXT NOT NULL,
    published_at DATE DEFAULT NOW(),
    author_id INT4 REFERENCES authors(id)
  );
")

# Seed data
con.exec("
  INSERT INTO authors (first_name, last_name, bio, twitter, website, google_plus) 
  VALUES ('Freddy', 'Wong', 'Web Developer in training', '@freddykfwong', 'www.nytimes.com', 'Frederick Wong'),
         ('Jane', 'Smith', 'Accomplished Graphic Artist', '@JaneSmith', 'www.cnn.com', 'Jane Smith'),
         ('Kathy', 'Li', 'Architect turned Marine Scientist', '@KathyLi', 'www.smh.com.au', 'Kathy Smith')
")
con.exec("
  INSERT INTO posts (title, content, author_id) 
  VALUES ('Do the dishes', 'Some content about doing dishes', 1),
        ('Create a web app', 'Some content about creating a web app', 2)
")

con.close
