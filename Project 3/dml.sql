
set search_path to stackoverflow_filtered;


select c.city from 
(select city, count(1)
from results
group by city) c
where c.count >2;


select count( distinct date(users_created_at)) from results;

select display_name, answers_score from results
order by answers_score desc
limit 1;


/*select  b.display_name,b.answer_score from
(select u.*, v.*,w.score answer_score from stackoverflow.users as u
join stackoverflow.questions v on (u.id = v.user_id)
join stackoverflow.answers w on (w.user_id = u.id)) b
order by b.answer_score desc
limit 1 */

