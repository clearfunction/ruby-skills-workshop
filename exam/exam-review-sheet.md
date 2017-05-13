- interpreter: A program that reads a plain text source code file and attempts to execute the contents
- shell: a program that enables users to interactively explore their local operating system: its files, its utilities, and its peripherals.  Examples: Bash, Powershell
- string: a representation of plain text data `=> "hello".class => String`
- integer: a whole number `=> 100.class => Integer`
- function: a segment of code defined and named for reuse
  ```rb
     def hi(name)
       puts "Hi, #{name}!"
     end
  ```
- route: a string that tells a web server which resource a user is looking for
  - GET /students requests the "/students" route which we've mapped to the `StudentsController#index` method which loads the `Student` model from the `students` table in the database and renders it using `views/students/index.html.erb`.
- request: a web browser asking a web server to fetch and return a specific resource by its URL =>`GET "/"`
- database server:  The computer or program that hosts your records in your rails app; e.g. sqlite3 or postgresql
- logical database:  The named database inside your database server that your app stores and retrieves data from e.g. `students_production`
- table: A database representation of a structured set of records such as a list of `students` with common characteristics (columns) like name, age, address
- SQL: Structured Query Language:  The low-level language used to interact with most databases => `SELECT * FROM STUDENTS;`
- HTML: Hypertext Markup Language: the syntax used to describe what content a browser is intended to render at a given URL
- ERB: Embedded RuBy -> a way of injecting dynamic ruby code into otherwise static text files => `index.html.erb => <%= @student.name %>`
- Heroku: A web application host specializing in running Ruby and Rails applications in the cloud with minimal server operations work
- migration: A file that describes a structural change the developer intends to apply to a database e.g. "add a birthday column to students with type `datetime`"
- version control: A system for tracking file changes and sharing them with others.  Also works as a backup utility for your source code.  Example: `git`.
- mailer: A utility for generating and sending customized emails.  Example:  ActionMailer in Rails