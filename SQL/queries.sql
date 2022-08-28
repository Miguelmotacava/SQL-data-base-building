#numero de peliculas que ha hecho cada autor en order descendente
select a.name, count(f.title) as 'nº de peliculas'
from actor as a

left join old_hdd as o
on a.actor_id = o.actor_id

left join film as f
on o.film_id = f.film_id
group by a.name
order by count(f.title)  desc;


#categoria de cada pelicula
select f.title, c.name as 'categoria'
from film as f

left join old_hdd as o
on f.film_id = o.film_id

left join category as c
on o.cat_name = c.name
group by f.title;

#peliculas de animacion
select f.title, a.name, c.name as 'category'
from film as f

left join old_hdd as o
on f.film_id = o.film_id

left join actor as a
on o.actor_id = a.actor_id

left join category as c
on o.category_id = c.category_id
where a.name is null;


# 5 generos con mas peliculas

select c.name, count(f.title) as 'nº de peliculas'
from category as c

left join old_hdd as o
on c.name = o.cat_name

left join film as f
on o.film_id = f.film_id
group by c.name
limit 5;

#actores por pelicula

select f.title, group_concat(a.name) as actores, count(a.name) as 'nº de actores'
from film as f

left join old_hdd as o
on f.film_id = o.film_id

left join actor as a
on o.actor_id = a.actor_id

group by a.name
order by count(a.name) desc;
