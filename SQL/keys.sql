alter table actor
add primary key (actor_id); 
alter table old_hdd
add foreign key (actor_id)
references actor(actor_id);

alter table film
add primary key (film_id);
alter table old_hdd
add foreign key (film_id)
references film(film_id);

alter table category
add primary key (category_id);
alter table old_hdd
add foreign key (category_id)
references category(category_id);

alter table inventory
add primary key (inventory_id);
alter table inventory
add foreign key (film_id)
references film(film_id);


alter table rental
add primary key (rental_id);
alter table rental
add foreign key (inventory_id)
references inventory(inventory_id);

alter table language
add primary key (language_id);
alter table film
add foreign key (language_id)
references language(language_id);