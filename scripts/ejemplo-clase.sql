select
    distinct payment_date as fecha,
    MONTH(payment_date) as mes,
    YEAR(payment_date) as anno,
    quarter(payment_date) as trime,
    case when quarter(payment_date) <=2 then 1 else 2 end as semes,
    DAYOFWEEK(payment_date) as dia_sem
    from payment
    limit 5;