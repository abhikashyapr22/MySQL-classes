create database fun;

show databases;

use fun;

create table players
(player_id int not null,
player_name varchar(20),
country varchar(20),
goals int
);

select * from players;

insert into players values(1, 'Ronaldo', 'Brazil',14);
insert into players values(2, 'Sunil Chhetari', 'India',10);
insert into players values(3, 'Neymar', 'Brazil',12);
insert into players values(4, 'Jindal', 'Iran',8);
insert into players values(5, 'Martial', 'France',9);

select * from players where goals > 8;

delimiter &&
create procedure top_players()
begin
select player_name, country, goals from players where goals >8;
end &&
delimiter ;

call top_players()

-- > we can use either && or // while creatin the stored procedures
delimiter // 
create procedure top_five_players()
begin
select player_name, goals from players order by goals desc limit 5;
end //
delimiter ;

call top_five_players()

-- > IN and OUT procedures

-- > lets create a procedure which return the top players based on the goals

delimiter && 
create procedure top_players_by_goals(IN var int)
begin
select player_name, goals from players order by goals desc limit var;
end && 
delimiter ;

call top_players_by_goals(5)

-- > updating a player record

delimiter //
create procedure update_goals(IN player varchar(20), num int)
begin 
update players set goals = num where player_name = player;
end //
delimiter ;

set sql_safe_updates = 0;

call update_goals('Ronaldo',20);
select * from players;

-- > Using out functions

delimiter //
create procedure players_count(out total_players int)
begin 
select count(*) from players into total_players;
end //
delimiter ;

call players_count(@total_players);
select @total_players as Total_Count;

call players_count(@total_count);
select @total_count as Total_Count;

delimiter //
create procedure player_counter(IN var varchar(20), OUT count int)
begin 
select count(*) from players where country = var into count;
end //
delimiter ;

call player_counter('India', @count);
select @count as Count;
 
select * from players;


