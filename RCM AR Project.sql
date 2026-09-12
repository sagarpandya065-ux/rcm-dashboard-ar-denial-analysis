use rcm_db;
show tables;
select payer, AR_balance from rcm_5000_rows limit 5;
select payer, count(*) as no_of_claims, Sum(AR_Balance) as total_pending_money from rcm_5000_rows group by payer;
select payer, Count(*) as denied_claims, sum(AR_balance) as Denied_amount from rcm_5000_rows where Denial_Code != 'no denial'  group by payer order by denied_amount desc;
select payer, count(*) as denied_claims, Sum(AR_Balance) as denied_amount from rcm_5000_rows where Denial_Code != 'no denial' group by payer having sum(AR_Balance) > 650000 order by denied_amount desc;
select denial_code, count(*) as denied_claims, Sum(AR_Balance) as loss_amount from rcm_5000_rows where denial_code != 'no denial' group by denial_code order by loss_amount desc;
select case when ar_days between 0 and 30 then "0-30 days"
when ar_days between 31 and 60 then "31-60 days"
when ar_days between 61 and 90 then "61-90 days"
else "90+ days - critical"
end as aging_bucket, count(*) as claims, sum(Ar_balance) as pending_amount from rcm_5000_rows group by aging_bucket order by PENDING_AMOUNT desc;
select denial_code, Count(*) as claims, Sum(Ar_Balance) as loss_in_90plus from rcm_5000_rows where Ar_Days > 90 and denial_code != "NO denial" group by denial_code order by loss_in_90plus desc;
select count(*) as total_claim, sum(billed_amt) as total_billed, sum(Paid_Amt) as total_collected, sum(AR_balance) as total_pending, Sum(case when denial_code != "no denial" then 
ar_balance else 0 end) as total_denied_loss, 
count(case when denial_code != "no denial" then 1 end ) as total_denial_claims, round(count(case when denial_code != "no denial" then 1 end)*100.0/COUNT(*),2) AS denied_rate_percentage
from rcm_5000_rows;