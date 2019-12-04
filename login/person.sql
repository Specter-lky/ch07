create table manage (
  name varchar(30) not null primary key,
  pass varchar(30) not null
);
create table user (
  sname varchar(30) not null primary key,
  pass varchar(30) not null,
  username varchar(30) not null,
  sex varchar(30) not null,
  birth varchar(30) not null,
  nation varchar(30) not null,
  edu varchar(30) not null,
  work varchar(30) not null,
  phone varchar(30) not null,
  place varchar(30) not null,
  email varchar(30) not null,
  name varchar(30) not null,
  foreign key(name) references manage(name)
);
create table purchase(
    id int not null identity(1,1)  primary key,
    supplier varchar(30) not null,
    phone varchar(20) not null,
    pername varchar(10) not null,
    proname varchar(30) not null,
    amount int not null,
    price int not null,
    name varchar(30) not null,
    sname varchar(30) not null
    );
    create table sell(
            sell_id INTEGER NOT NULL identity(1,1)  primary key,
            sell_amount int not null,
            sell_produce varchar(30) not null,
            sell_date varchar(20) NOT NULL,
            sell_profit int NOT NULL,
            sell_mark varchar(50) DEFAULT NULL,
            sell_name varchar(30) not null,
            sell_sname varchar(30) not null,
);
CREATE TABLE `files` (
  name varchar(255) not null primary key,
  size varchar(255) default NULL,
  filePath varchar(255) default NULL,
  mark varchar(255) DEFAULT NULL
);
CREATE TABLE `file` (
   id int not null identity(1,1) primary key,
   title varchar(255) default NULL,
  name varchar(255) default NULL,
  contentType varchar(255) default NULL,
  size varchar(255) default NULL,
  filePath varchar(255) default NULL,
  sname varchar(30) not null,
 foreign key(sname) references user(sname)
);
CREATE TABLE date (
   date varchar(30) not null primary key,
   thing varchar(30) not null,
   sname varchar(30) not null,
  foreign key(sname) references user(sname)
);
CREATE TABLE friend (
   id int not null identity(1,1) primary key,
  name varchar(30) NOT NULL,
  phone varchar(30) NOT NULL,
  email varchar(30) NOT NULL,
  workPlace varchar(30) NOT NULL,
  place varchar(30) NOT NULL,
  qq varchar(30) NOT NULL,
  sname varchar(30) not null,
 foreign key(sname) references user(sname)
);
