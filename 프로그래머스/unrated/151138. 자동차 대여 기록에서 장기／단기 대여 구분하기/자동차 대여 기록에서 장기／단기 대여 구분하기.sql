-- 코드를 입력하세요
(SELECT history_id,car_id,DATE_FORMAT(start_date,'%Y-%m-%d') as start_date,DATE_FORMAT(end_date,'%Y-%m-%d') as end_date, '단기 대여' as rent_type from car_rental_company_rental_history 
where start_date >= '2022-09-01' and start_date<='2022-09-30' and end_date < DATE_ADD(start_date, INTERVAL 29 DAY))
union 
(SELECT history_id,car_id,DATE_FORMAT(start_date,'%Y-%m-%d') as start_date,DATE_FORMAT(end_date,'%Y-%m-%d') as end_date, '장기 대여' as rent_type from car_rental_company_rental_history 
where start_date >= '2022-09-01' and start_date<='2022-09-30' and end_date >= DATE_ADD(start_date, INTERVAL 29 DAY)) order by history_id desc