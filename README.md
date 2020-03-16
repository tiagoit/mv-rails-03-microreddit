# Microreddit Rails app

Clone of [Reddit.com](https://reddit.com) app. It implements user authentication and features to create or comment on posts.

### Technology

Ruby - Rails - ActiveRecord - PostgreSQL - SQLite 

### Authors

- **Oscar De La Lanza** - [@oscardelalanza](https://github.com/oscardelalanza)
- **Tiago Ferreira** - [@ferreirati](https://github.com/ferreirati)

### Links

- **Assignment page** - [The Odin Project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/building-with-active-record-ruby-on-rails)
- **Live** - [Demo on Heroku](https://sleepy-caverns-46639.herokuapp.com/)

### Database structure
- users
  - name: STR, required, max:80
  - email: STR, required, index, unique, max:255
  - password_digest: STR

- posts
  - title: STR, required, max:255
  - description: TEXT
  - user_id
  - belongs_to: user
  - has_many: comments

- comments
  - text: STR, required, max:255
  - user_id FK
  - post_id FK 
  - belongs_to: user

### Scaffolding commands
- rails g scaffold User name:string email:string password_digest:string
- rails g scaffold Post title:string description:text user:references
- rails g scaffold Comment text:string user:references post:references

## 📞 Contact
- **Tiago Ferreira** - [@tiagoit](https://github.com/tiagoit)

Feel free to connect with me on [LinkedIn](https://www.linkedin.com/in/tiagoit-dev/) or drop me a line at <tiagoitferreira@gmail.com>.
