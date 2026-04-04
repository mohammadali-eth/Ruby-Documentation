# Ruby Learning Project

A comprehensive guide to Ruby programming covering everything from basics to advanced concepts, project creation, API integration, database connections, and frontend integration.

## 📚 What's Included

- **Ruby Basics to Advanced Tutorial** (`rubylearning.rb`) - Complete Ruby language guide with executable examples
- **Rails Starter App** (`FolderStructor/`) - Full-stack Ruby on Rails application with PostgreSQL
- **Project Templates** - Ready-to-use project structures for different Ruby applications

## 🚀 Quick Start

### Prerequisites

Before you begin, ensure you have the following installed:

- **Ruby** (version 3.0 or higher)
- **RubyGems** (comes with Ruby)
- **Bundler** (Ruby dependency manager)
- **Git** (for version control)

### Installation

#### Windows

1. **Install Ruby using RubyInstaller:**
   ```bash
   # Download from https://rubyinstaller.org/
   # Run the installer and follow the setup wizard
   # Make sure to check "Add Ruby to PATH"
   ```

2. **Verify installation:**
   ```bash
   ruby -v
   gem -v
   ```

#### macOS

1. **Using Homebrew (recommended):**
   ```bash
   brew install ruby
   ```

2. **Using rbenv (version manager):**
   ```bash
   brew install rbenv ruby-build
   rbenv install 3.2.0
   rbenv global 3.2.0
   ```

#### Linux (Ubuntu/Debian)

```bash
sudo apt update
sudo apt install ruby-full build-essential
```

### Verify Installation

```bash
ruby -v          # Should show Ruby version
gem -v          # Should show RubyGems version
bundler -v      # Should show Bundler version
```

## 📖 Learning Ruby

### Run the Tutorial

```bash
ruby rubylearning.rb
```

This will execute all examples and demonstrate Ruby concepts from basic syntax to advanced features.

### Tutorial Sections

1. **Introduction to Ruby** - Language overview and setup
2. **Output Methods** - puts, print, p, printf
3. **Variables & Constants** - Data storage and naming
4. **Data Types** - Numbers, strings, arrays, hashes, symbols
5. **Strings** - String manipulation and operations
6. **Numbers & Math** - Arithmetic and mathematical functions
7. **Arrays** - Ordered collections and operations
8. **Hashes** - Key-value data structures
9. **Symbols** - Immutable identifiers
10. **Methods** - Function definition and usage
11. **Control Structures** - if/else, case, ternary operators
12. **Loops** - while, until, for, each, iterators
13. **Classes & Objects** - Object-oriented programming
14. **Inheritance** - Class hierarchies
15. **Modules** - Code organization and mixins
16. **Exceptions** - Error handling
17. **File I/O** - Reading and writing files
18. **Regular Expressions** - Pattern matching
19. **Blocks, Procs & Lambdas** - Code blocks and closures
20. **Metaprogramming** - Dynamic code generation
21. **Gems & Libraries** - Package management

## 🛠️ Creating Ruby Projects

### 1. Simple Ruby Script

```bash
# Create a new directory
mkdir my_ruby_script
cd my_ruby_script

# Create script file
touch script.rb

# Add Ruby code to script.rb
puts "Hello, Ruby!"
```

### 2. Ruby Gem Project

```bash
# Install bundler if not already installed
gem install bundler

# Create gem structure
bundle gem my_gem
cd my_gem

# Edit lib/my_gem.rb and add your code
# Edit my_gem.gemspec for gem metadata

# Build and install
gem build my_gem.gemspec
gem install ./my_gem-0.1.0.gem
```

### 3. Ruby on Rails Application

```bash
# Install Rails
gem install rails

# Create new Rails app
rails new my_app
cd my_app

# For API-only app
rails new my_api --api

# Run the development server
rails server
```

### 4. Sinatra Web Application

```bash
# Install Sinatra
gem install sinatra

# Create app.rb
require 'sinatra'

get '/' do
  'Hello World!'
end

# Run the app
ruby app.rb
```

## 🗄️ Database Integration

### SQLite (Simple Projects)

```ruby
require 'sqlite3'

# Create database connection
db = SQLite3::Database.new 'test.db'

# Create table
db.execute <<-SQL
  CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT
  );
SQL

# Insert data
db.execute("INSERT INTO users (name, email) VALUES (?, ?)", ['John Doe', 'john@example.com'])

# Query data
db.execute("SELECT * FROM users") do |row|
  puts "ID: #{row[0]}, Name: #{row[1]}, Email: #{row[2]}"
end
```

### PostgreSQL (Production Ready)

```ruby
require 'pg'

# Connect to database
conn = PG.connect(
  host: 'localhost',
  dbname: 'myapp_development',
  user: 'postgres',
  password: 'password'
)

# Create table
conn.exec("CREATE TABLE IF NOT EXISTS users (id SERIAL PRIMARY KEY, name TEXT, email TEXT)")

# Insert data
conn.exec_params("INSERT INTO users (name, email) VALUES ($1, $2)", ['Jane Doe', 'jane@example.com'])

# Query data
result = conn.exec("SELECT * FROM users")
result.each do |row|
  puts "ID: #{row['id']}, Name: #{row['name']}, Email: #{row['email']}"
end

conn.close
```

### Rails ActiveRecord

```ruby
# In Rails, database connections are handled automatically
# Just define your models:

class User < ApplicationRecord
  # Database table 'users' is automatically inferred
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end

# Usage
user = User.create(name: 'Alice', email: 'alice@example.com')
users = User.all
user = User.find_by(email: 'alice@example.com')
```

## 🌐 API Integration

### HTTP Requests with Net::HTTP

```ruby
require 'net/http'
require 'json'

# GET request
uri = URI('https://jsonplaceholder.typicode.com/posts/1')
response = Net::HTTP.get(uri)
post = JSON.parse(response)
puts "Post title: #{post['title']}"

# POST request
uri = URI('https://jsonplaceholder.typicode.com/posts')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true

request = Net::HTTP::Post.new(uri)
request['Content-Type'] = 'application/json'
request.body = {title: 'foo', body: 'bar', userId: 1}.to_json

response = http.request(request)
puts "Response: #{response.body}"
```

### Using HTTParty Gem

```ruby
require 'httparty'

# GET request
response = HTTParty.get('https://api.github.com/user', headers: {'Authorization' => 'token YOUR_TOKEN'})
puts response.parsed_response

# POST request
response = HTTParty.post('https://api.example.com/users',
  body: { name: 'John', email: 'john@example.com' }.to_json,
  headers: { 'Content-Type' => 'application/json' }
)
```

### REST API with Sinatra

```ruby
require 'sinatra'
require 'json'

# In-memory data store (use database in production)
users = []

# GET /users - List all users
get '/users' do
  content_type :json
  users.to_json
end

# GET /users/:id - Get specific user
get '/users/:id' do
  content_type :json
  user = users.find { |u| u['id'] == params['id'].to_i }
  user ? user.to_json : {error: 'User not found'}.to_json
end

# POST /users - Create new user
post '/users' do
  content_type :json
  request.body.rewind
  data = JSON.parse(request.body.read)
  data['id'] = users.length + 1
  users << data
  data.to_json
end

# PUT /users/:id - Update user
put '/users/:id' do
  content_type :json
  user = users.find { |u| u['id'] == params['id'].to_i }
  if user
    request.body.rewind
    data = JSON.parse(request.body.read)
    user.merge!(data)
    user.to_json
  else
    {error: 'User not found'}.to_json
  end
end

# DELETE /users/:id - Delete user
delete '/users/:id' do
  content_type :json
  user = users.find { |u| u['id'] == params['id'].to_i }
  if user
    users.delete(user)
    {message: 'User deleted'}.to_json
  else
    {error: 'User not found'}.to_json
  end
end
```

## 🎨 Frontend Integration

### 1. Static HTML with ERB Templates

```ruby
# app.rb
require 'sinatra'

get '/' do
  @title = "My Ruby App"
  @users = [{name: 'Alice'}, {name: 'Bob'}]
  erb :index
end
```

```html
<!-- views/index.erb -->
<!DOCTYPE html>
<html>
<head>
  <title><%= @title %></title>
</head>
<body>
  <h1>Welcome to <%= @title %></h1>
  <ul>
    <% @users.each do |user| %>
      <li><%= user[:name] %></li>
    <% end %>
  </ul>
</body>
</html>
```

### 2. Rails with Frontend Frameworks

#### Using Webpacker (Rails 6+)

```bash
# Add webpacker to Gemfile
gem 'webpacker'

# Install and setup
bundle install
rails webpacker:install
rails webpacker:install:react  # or :vue, :angular
```

#### Using Import Maps (Rails 7+)

```ruby
# config/importmap.rb
pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
```

### 3. API Backend with SPA Frontend

```ruby
# Rails API backend
# config/application.rb
config.api_only = true

# app/controllers/api/v1/users_controller.rb
module Api
  module V1
    class UsersController < ApplicationController
      def index
        users = User.all
        render json: users
      end

      def create
        user = User.new(user_params)
        if user.save
          render json: user, status: :created
        else
          render json: user.errors, status: :unprocessable_entity
        end
      end

      private

      def user_params
        params.require(:user).permit(:name, :email)
      end
    end
  end
end
```

### 4. CORS Configuration

```ruby
# For API backends serving frontend apps
# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'localhost:3000', '127.0.0.1:3000', 'your-frontend-domain.com'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```

## 🚀 Running Projects

### Ruby Scripts

```bash
ruby script.rb
```

### Rails Applications

```bash
# Development
rails server
# or
rails s

# Production
rails server -e production

# With specific port
rails server -p 3001
```

### Sinatra Applications

```bash
ruby app.rb
# or with rerun for development
gem install rerun
rerun 'ruby app.rb'
```

### Background Jobs

```ruby
# Using built-in Thread
Thread.new do
  # Long running task
end

# Using gems like Sidekiq
# Add to Gemfile: gem 'sidekiq'
require 'sidekiq'

class HardWorker
  include Sidekiq::Worker

  def perform(name, count)
    puts "Doing hard work: #{name} - #{count}"
  end
end

# Enqueue job
HardWorker.perform_async('test', 5)
```

## 📦 Package Management

### Gemfile for Dependencies

```ruby
# Gemfile
source 'https://rubygems.org'

gem 'rails', '~> 7.0'
gem 'pg'  # PostgreSQL
gem 'puma'  # Web server
gem 'sass-rails'  # Stylesheets
gem 'webpacker'  # Asset compilation

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  gem 'rubocop'  # Code linting
end
```

### Installing Dependencies

```bash
bundle install
bundle update gem_name  # Update specific gem
bundle outdated        # Check for updates
```

## 🧪 Testing

### RSpec Setup

```bash
# Add to Gemfile
group :development, :test do
  gem 'rspec-rails'
end

# Install
bundle install
rails generate rspec:install
```

### Sample Test

```ruby
# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(name: 'John', email: 'john@example.com')
    expect(user).to be_valid
  end

  it 'is not valid without a name' do
    user = User.new(email: 'john@example.com')
    expect(user).not_to be_valid
  end
end
```

### Running Tests

```bash
rspec                    # Run all tests
rspec spec/models/       # Run model tests
rspec spec/models/user_spec.rb  # Run specific test file
```

## 🚀 Deployment

### Heroku

```bash
# Add Gemfile
gem 'pg'  # For PostgreSQL
gem 'rails_12factor'  # For asset serving

# Create app
heroku create my-app-name

# Deploy
git push heroku main

# Run migrations
heroku run rake db:migrate
```

### Docker

```dockerfile
# Dockerfile
FROM ruby:3.2

WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
```

### Railway (Current Setup)

```bash
# Link to Railway project
railway link

# Deploy
railway up

# View logs
railway logs

# Run commands
railway run rake db:migrate
```

## 📚 Additional Resources

- [Ruby Official Documentation](https://ruby-doc.org/)
- [Ruby on Rails Guides](https://guides.rubyonrails.org/)
- [Ruby Gems](https://rubygems.org/)
- [Bundler Documentation](https://bundler.io/)
- [Sinatra Documentation](https://sinatrarb.com/documentation.html)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Happy coding with Ruby! 💎</content>
<parameter name="filePath">d:\RubyLearning\README.md