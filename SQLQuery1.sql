create database task7
use task7

create table actor(
actor_id int primary key,
actor_fname char(20),
actor_lname char(20),
actor_gender char(10)
)


create table director(
dir_id int primary key,
dir_fname char(20),
dir_lname char(20)
)

create table movie_director(
dir_id int,
movie_id int
)

create table movie_cast(
dir_id int,
movie_id int,
role char(30)
)

create table movie(
movie_id int,
movie_title char(50),
movie_year int,
movie_time int,
movie_lang char(50),
movie_dt_rel date,
movie_rel_country char(5)
)

create table reviewer(
rev_id int,
rev_name char(30)
)

create table genres(
gen_id int,
gen_title char(20)
)

create table movie_genres(
movie_id int,
gen_id int
)

create table rating(
movie_id int,
rev_id int,
rev_stars int,
num_o_rating int
)