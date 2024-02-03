create database grodb;

use grodb;

-- ############################ Enum tables ####################
-- ############################ User-Type ######################
create table user_types
(
    user_type_id int auto_increment primary key,
    type char(20) not null
);

insert into user_types (type)
values 
('Manufacutures'),
('Actors');

-- ############################ User-Type ###############
create table units
(
    unit_id int auto_increment primary key,
    type char(5) not null
);
-- ##################Status ##########################
create table status 
(
    status_id int auto_increment primary key,
    name char(20) not null
);

insert into status (name) 
values 
('Active'),
('Inactive'),
('Open'),
('Closed'),
('Blocked');

-- ######################### Status ###################
create table states 
(
    state_id int auto_increment primary key,
    name char(50) not null
    
);

create table categories 
(
    category_id int auto_increment primary key,
    name char(100) not null
);

-- alter table categories modify name char(100) not null;
insert into categories (name) value ('Grocery'), ('Beauty'), ('Health'), ('Personal Care Applicance');
-- ############################ Tables with foreign keys ####################

create table users
(
    user_id int auto_increment primary key,
    name char(80) not null,
    email char(80) not null,
    password char(160) not null, 
    phone char(10) not null,
    my_pic char(100),
    address char(255),
    otp char(6),
    status_id int not null default 2,
    user_type_id int not null default 2,
    constraint fk_users_status foreign key (status_id) references status (status_id),
    constraint fk_users_user_types foreign key (user_type_id) references user_types (user_type_id)
);

select user_id, u.name, password, phone, my_pic, a.address_id, a.address_line1, s.status_id, s.name, user_type_id, c.country_id, c.name from users as u inner join countries as c inner join status as s inner join address as a where email=? and u.country_id = c.country_id and u.status_id = s.status_id;

alter table users add country_id int;  

alter table users add foreign key (country_id) references countries (country_id);

alter table users modify column country_id int NOT NULL; 

select u.user_id, u.name, password, phone, my_pic, s.status_id, s.name,
user_type_id, c.country_id, c.name from users as u inner join countries as c inner join status as s 
where email=? and u.country_id = c.country_id and u.status_id = s.status_id ;

 alter table users alter status_id set default 1;
-- ############### User ############################### end

create table manufacturers
(
    manufacture_id int auto_increment primary key,
    user_id int not null,
    description varchar(2000) not null,
    website char(100) not null,
    reg_num char(50) not null,
    constraint fk_manufacturers_users foreign key (user_id) references users (user_id)
);

create table cities 
(
    city_id int auto_increment primary key,
    name char(50) not null,
    state_id int not null,
    constraint fk_cities_states foreign key (state_id) references states (state_id) 
);

create table areas
(
    area_id int auto_increment primary key,
    name char(50) not null,
    city_id int not null,
    constraint fk_areas_cities foreign key (city_id) references cities (city_id)
);

create table actors
(
    actor_id int auto_increment primary key,
    user_id int not null,
    dob datetime not null,
    gender char(10) not null,
    area_id int not null,
    reg_num char(50),
    constraint fk_actors_users foreign key (user_id) references users (user_id),
    constraint fk_actors_areas foreign key (area_id) references areas (area_id)
);

create table address
(
    address_id int auto_increment primary key,
    user_id int not null,
    address_line1 char(100) not null,
    address_line2 char(100) not null,
    zip_code int not null,
    area_id int not null,
    constraint fk_address_users foreign key (user_id) references users (user_id),
    constraint fk_areas_users foreign key (area_id) references areas (area_id)
);

create table products 
(
    product_id int auto_increment primary key,
    manufacture_id int not null,
    name char(40) not null,
    price int not null,
    discount int,
    extra int,
    unit_id int not null,
    quantity int not null,
    category_id int not null,
    description char(100) not null,
    constraint fk_products_manufactures foreign key (manufacture_id) references manufacturers (manufacture_id),
    constraint fk_products_units foreign key (unit_id) references units (unit_id),
    constraint fk_products_categories foreign key (category_id) references categories (category_id)
);

create table seller_products
(
    seller_product_id int auto_increment primary key,
    actor_id int not null,
    product_id int not null,
    quantity char(20) not null,
    price int not null,
    sold int not null default 0,
    discount int not null,
    constraint fk_seller_products_actors foreign key (actor_id) references actors (actor_id),
    constraint fk_seller_products_products foreign key (product_id) references products (product_id)
);

create table orders 
(
    order_id int auto_increment primary key,
    actor_id int not null, 
    order_date datetime not null,
    items int not null,
    total_amount int not null default 0,
    status_id int not null,
    address_id int not null,
    constraint fk_orders_actors foreign key (actor_id) references actors (actor_id),
    constraint fk_orders_status foreign key (status_id) references status (status_id),
    constraint fk_orders_address foreign key (address_id) references address (address_id)
);

create table order_items
(
    order_item_id int auto_increment primary key,
    order_id int not null,
    seller_product_id int not null,
    quantity int not null,
    status_id int not null,
    constraint fk_order_items_orders foreign key (order_id) references orders (order_id),
    constraint fk_order_items_seller_products foreign key (seller_product_id) references seller_products (seller_product_id),
    constraint fk_order_items_status foreign key (status_id) references status (status_id)
);


-- ################################ Countries ############################
-- create table countries 
-- (
--     country_id int auto_increment primary key,
--     name char(50) not null unique,
--     isd_code int not null unique
-- );

-- insert into countries 
-- (name, isd_code) values 
-- ('Bharat', 91), ('USA', 1), ('China', 86), ('Russia', 7);

--  ################################ Countries ############################


-- Top offer
create table top_offers
(
    top_offer_id int auto_increment primary key, 
    image char(100) not null
);

alter table top_offers modify column image BLOB(500);

insert into top_offers
(image) values
('top1.webp'), ('top2.webp'), ('top3.webp'), ('top4.webp');