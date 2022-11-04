use db2;

/* 1 */

select * from villes_france_free order by ville_population_2012  desc limit 10;

/* 2 */ 
select * from villes_france_free order by ville_surface asc limit 50;
 
 /* 3 */
 select *  from villes_france_free where ville_departement like '97%';
 
 /* 4 */
  select *  from villes_france_free where ville_nom like 'Saint%';
  
  /* 5 */
  select  ville_nom, count(ville_nom) as nombre  from villes_france_free group by ville_nom order by count(ville_nom) desc;
  
  
  /* 6 */
  select * from villes_france_free  having ville_surface > ( select avg(ville_surface) as moyenne from  villes_france_free);
  
  /*  7 */ 
 select sum(ville_population_2012) as somme , ville_departement from villes_france_free group by ville_departement  having somme > 2000000; 