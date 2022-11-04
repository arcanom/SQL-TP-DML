use db2;

/* 1 */
select * from villes_france_free where ville_departement = '46';

/* 2*/
select * from villes_france_free where ville_population_2010 >= '10000';

/* 3 */
select * from villes_france_free where ville_id >= 300 and ville_id <= 400;

/* 4 */
select *  from villes_france_free where ville_departement > '10' and ville_departement <15;

/* 5 */
select ville_nom, ville_population_2012, ville_surface from villes_france_free where ville_departement = "59" order by ville_slug asc;

/* 6 */
select count(*) as number from villes_france_free where ville_departement = '62';

/* 7 */
select ville_nom from villes_france_free where ville_surface > 10 and ville_densite_2010  <= 2000;

/* 8 */
select count(*) as number_ville_surface from villes_france_free where ville_surface <= 3 and  ville_departement = '59';

/* 9 */

select *  from villes_france_free where ville_nom_soundex = 'N630' order by ville_nom asc limit 50 ;