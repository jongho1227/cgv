select * from `structure` where th_name='1관' order by th_name, st_row, length(seat_number), seat_number; -- 정렬
select * from grade order by g_discount desc;
delete from th_info where th_name = '9관';
select * from th_info t join `structure` s on t.th_name = s.th_name where t.th_name = '1관' order by t.th_name, st_row, length(seat_number), seat_number; -- 관별로 뽑음.
set foreign_key_checks =1;
truncate movie;


show tables;

select * from structure;
select * from movie;
select * from runtime; 
select * from manager;
select * from th_info;
select * from coupon;
select * from grade;
select * from mb_cp;
select * from `member`;
select * from reservation;
select * from runtheater;

select * from th_info order by length(th_name);
select th_start from runtime where rt_withdrawal = true;
SELECT * FROM movie where mv_withdrawal = true;

update th_info
			set th_withdrawal = true
			where th_name = '9관';
select * from movie where mv_withdrawal = true limit 1;

select * from runtime where th_name='1관' and th_end > '2019-09-19 02:00:00' and th_start < '2019-09-19 04:30:00';

select * from runtime order by th_start;

select * from runtime order by rt_number desc limit 1;
select * from structure where th_name='1관' order by th_name, st_row, length(seat_number), seat_number;


select * from runtheater where rt_number = 1 and th_name='8관';

select * from runtheater; 
select * from runtime where rt_withdrawal = true order by th_start;
SELECT * FROM runtime WHERE DATE(th_start)='2019-09-30';
select * from runtime where rt_withdrawal = true order by th_start limit 1;

select * from runtime where rt_withdrawal = true and DATE(th_start)='2019-09-24' order by rt_name, th_name, th_start;

select distinct mv_number from runtime where rt_withdrawal = true and DATE(th_start)='2019-09-24' order by rt_name, th_name, th_start;

select  distinct th_name from runtime where rt_withdrawal = true and DATE(th_start)='2019-09-24' and mv_number=7 order by rt_name, th_name, th_start;


select * from runtime where rt_withdrawal = true and DATE(th_start)='2019-09-24' and mv_number=7 and th_name='1관' order by rt_name, th_name, th_start;
