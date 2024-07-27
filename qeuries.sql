use albums; 

 /* order of top 100 (( trendy artist))*/
SELECT 
    artist_first_name, no_weeks_top_100
FROM
    artists
ORDER BY no_weeks_top_100 DESC; 



/* AVREGE_OF_AGES_THE_AUDIENCES-----*/
select round(AVG(AGE)) AS AVERGE_OF_age_AUDIENCE
from audienceS;


/*num _of artists _in youtube*/
SELECT count(ARTISTS_ARTIST_ID) AS NUMBER_OF_ARTIST_in_youtube
FROM INDEPENDANT 
where SITE="YOUTUBE";



/*--NUMBER_OF_INDEPENDENT_ARTIST_in_anghamy*/


SELECT count(ARTISTS_ARTIST_ID) AS NUMBER_OF_ARTIST_in_anghamy
FROM INDEPENDANT 
where SITE="anghami";

/*NUMBER_OF_INDEPENDENT_ARTIST_in sound_cloud*/

SELECT count(ARTISTS_ARTIST_ID) AS NUMBER_OF_ARTIST_in_sound_cloud
FROM INDEPENDANT 
where SITE="soundcloud";

/* name of albums and its genre*/


SELECT 
    a.album_name AS album_name, g.genre_name AS gener_of_music
FROM
    albums a
        JOIN   genre g 
  ON album_id = g.albums_album_id
 order by  album_name ;
--   

/*sort phone start +20*/
select* from audiences
where phone like "(+20)%"
order by age desc;



/*first_album*/



select min(release_date) as first_album
from albums;

/**/

/*arist and Record_labels_contract_srart*/

select artist_first_name , Record_labels_contract_srart
from dependant , artists
where artist_id = artists_artist_id ;
/*artist_first_name start "m"*/
select  artist_first_name
from artists
where artist_first_name like'M%';

/* artist name and his birth date*/

select  artist_first_name , birth_date
from artists;

/*artists names contain "a"*/
select artist_last_name
from artists 
where artist_last_name like '%a%';
/*total_no_artists contract in record_labels*/
select record_label_name ,total_no_artists
from record_labels
;
/*Record_labels_contract_end for artists  */
select Record_labels_contract_end,artist_first_name
from dependant join artists 
on artists_artist_id=artist_id;


                               

















