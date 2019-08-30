# Phoenix Records

#### Prerrequisites

  - Ruby 2.6.2
  - Rails 5.2.3
  - MariaDB or MySql
  
## Installation

First things first, let's clone the repository:
```
git clone https://github.com/phoenix-blaze-dev/phoenix-records/
```

Then, we have to define out database configuration at  **config/database.yml**  file.
Replace **username** and **password**:
```
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password: "1234"
  socket: /var/run/mysqld/mysqld.sock
```

Let's change to the project directory:
```
cd phoenix-records
```

And install all the gems:
```
bundle install
```

If the last command succeds, it's time to create the database and execute the migrations:
```
db:drop db:create db:migrate
```

Now we're ready to start the application:
```
rails s
```
