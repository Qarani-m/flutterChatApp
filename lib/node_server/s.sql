

drop column room_id
alter table room_users drop column room_id
alter table room_users add column room_id varchar(255) not null


create table  if not exists room_users(
    id int(100) auto_increment,
    room_id varchar(200) not null unique,
    user_id varchar(255) unique,
    room_name varchar(255) not null,
    room_admin varchar(255),
    primary key(id)
);


create table  if not exists users(
    id int(100) auto_increment,
    user_name varchar(255),
    user_id varchar(255) unique,
    user_email varchar(255),
    user_profilepic text,
    active_rooms json,
    primary key(id)
);
create table  if not exists messages(
    id int(100) auto_increment primary key,
    msg_data json
);

create table messages if not exists(
    id int(100) auto_increment,
    msg_data json,
    -- msg_sender varchar(255),
    -- msg_room varchar(255),
    -- msg_time datatime

)

insert into messages(msg_data) values(
    "{'sender':'sender_id1','room':'room_id1','time':'time1'}",
    "{'sender':'sender_id2','room':'room_id2','time':'time2'}",
    "{'sender':'sender_id3','room':'room_id3','time':'time3'}"
);

insert into messages(msg_data) values('{"sender":"sender_id1","room":"room_id1","time":"time1"}');
