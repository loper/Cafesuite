DROP TRIGGER sumator;

delimiter //

create trigger sumator after insert on czasy for each row 
begin 
declare t_suma double; 
declare t_cena_za_min double; 
declare t_wyplacone double;

select sum(czas) into t_suma from czasy; 
select cena_za_min into t_cena_za_min from cena_min where id=NEW.id_cena;
select sum(kwota) into t_wyplacone from wyplacone; 
IF t_wyplacone=NULL THEN set t_wyplacone=0;
END IF;

update suma set suma=t_suma*t_cena_za_min-t_wyplacone; 
end;

//

delimiter ;


drop trigger wyplater;
delimiter //

create trigger wyplater after insert on wyplacone for each row 
begin 
declare t_suma double; 
declare t_cena_za_min double; 
declare t_wyplacone double;

select sum(czas) into t_suma from czasy; 
select cena_za_min into t_cena_za_min from cena_min where id=(select id_cena from czasy order by data desc limit 1);
select sum(kwota) into t_wyplacone from wyplacone; 

update suma set suma=t_suma*t_cena_za_min-t_wyplacone; 
end;

//

delimiter ;

