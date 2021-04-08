# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

### Installation instructions
* install postgres `brew install postgres`
* create postgres user called `dev_user` with password `password`

```
createuser -s dev_user
```
Launch `psql`

```
password dev_user
```

* install rvm
  `\curl -sSL https://get.rvm.io | bash -s stable --ruby`

* install rails
  `gem install rails`


rails generate scaffold Illness name:string content:text  
