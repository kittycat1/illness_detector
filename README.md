# README

The site can be accessed at https://illness-dective.herokuapp.com/

### Home page
![image](https://user-images.githubusercontent.com/38593727/114256537-c7a71400-996e-11eb-87f3-4c204ce0c959.png)

### Search results page
![image](https://user-images.githubusercontent.com/38593727/114256562-ed341d80-996e-11eb-941a-f7cc43fe532e.png)

### Illness details page
![image](https://user-images.githubusercontent.com/38593727/114256575-06d56500-996f-11eb-9343-e517f3cf3686.png)

### Illness edit page

![image](https://user-images.githubusercontent.com/38593727/114256595-194f9e80-996f-11eb-87d9-ec2ad2f1235f.png)


### Installation instructions

- Install postgres `brew install postgres`
- Create postgres user called `dev_user` with password `password`

```
createuser -s dev_user
```

Launch `psql`

```
password dev_user
```

- install rvm
```
\curl -sSL https://get.rvm.io | bash -s stable --ruby
```

- install rails

```
gem install rails
```

- create databases for the project

```
rake db:create
```

- create database tables

```
rake db:migrate
```

- run rails server

```
bin/rails server
```
