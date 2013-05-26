-- DEFAULT nextval('products_product_no_seq'),

-- 0. initiation --
drop table user_role;
drop table users;
drop sequence users_id_seq;
drop table roles;
drop sequence roles_id_seq;


--------------------------------------

-- 1. users --
create sequence users_id_seq
	start with 1
	increment BY 1
	no minvalue
	no maxvalue
	cache 1;

create table users (
    id int not null default nextval('users_id_seq'),
    userid varchar(32) not null,
    password varchar(32) not null,
    name varchar(32),
    email varchar(32) not null,
    primary key (id)
);

insert into users (userid, password, name, email) values ('admin', 'admin123', 'Super Admin', 'biminglei@gmail.com');
insert into users (userid, password, name, email) values ('test', 'test123', 'Tester', 'jokeservice@gmail.com');


-- 2. roles --
create sequence roles_id_seq
	start with 1
	increment BY 1
	no minvalue
	no maxvalue
	cache 1;

create table roles (
	id int not null default nextval('roles_id_seq'),
	name varchar(32) not null,
	description varchar(32),
	primary key (id)
);

insert into roles (name, description) values ('ROLE_USER', 'Registered User');
insert into roles (name, description) values ('ROLE_USER_MANAGER', 'User Manager');
insert into roles (name, description) values ('ROLE_UNIT_MANAGER', 'Unit Manager');
insert into roles (name, description) values ('ROLE_EXAMINER', 'Examiner');
insert into roles (name, description) values ('ROLE_TEST_TAKER', 'Test Taker');
insert into roles (name, description) values ('ROLE_TEST_REVIEWER', 'Test Reviewer');


-- 3. user_role --
create table user_role (
	user_id int not null,
	role_id int not null,
	primary key (user_id, role_id),
	foreign key (user_id) references users (id),
	foreign key (role_id) references roles (id)
);

insert into user_role (user_id, role_id) values (1, 1);
insert into user_role (user_id, role_id) values (1, 2);
insert into user_role (user_id, role_id) values (1, 3);
insert into user_role (user_id, role_id) values (1, 4);
insert into user_role (user_id, role_id) values (1, 5);
insert into user_role (user_id, role_id) values (1, 6);
insert into user_role (user_id, role_id) values (2, 1);




