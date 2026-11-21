-- 01. Annual bank complaint category trends and year-on-year change
WITH base AS (
    SELECT fiscal_year, fiscal_year_sort, complaint_category, complaint_count, reported_share_pct,
           LAG(complaint_count) OVER (PARTITION BY complaint_category ORDER BY fiscal_year_sort) AS prior_year_count
    FROM fact_bank_complaint_category
)
SELECT fiscal_year, complaint_category, complaint_count, reported_share_pct,
       prior_year_count,
       ROUND(100.0 * (complaint_count - prior_year_count) / NULLIF(prior_year_count,0), 2) AS yoy_change_pct
FROM base
ORDER BY fiscal_year_sort, complaint_count DESC;

-- 02. Top five bank complaint categories in FY2024-25
SELECT complaint_category, complaint_count, reported_share_pct
FROM fact_bank_complaint_category
WHERE fiscal_year='2024-25'
ORDER BY complaint_count DESC
LIMIT 5;

-- 03. Mobile / electronic banking trend (banks only)
SELECT fiscal_year, complaint_count, reported_share_pct
FROM fact_bank_complaint_category
WHERE complaint_category='Mobile / Electronic banking'
ORDER BY fiscal_year_sort;

-- 04. Channel shift at ORBIOs
SELECT fiscal_year, receipt_mode, complaint_count, reported_share_pct
FROM fact_orbio_channel_mix
ORDER BY fiscal_year_sort, complaint_count DESC;

-- 05. ORBIO disposal overview. Disposal rate is not an SLA / TAT measure.
SELECT fiscal_year, received_during_year, handled_during_year, disposed_during_year,
       reported_disposal_rate_pct, pending_at_year_end_derived
FROM fact_orbio_disposal_overview
ORDER BY fiscal_year_sort;

-- 06. Non-maintainable complaints by recorded reason (not an internal bank complaint dataset)
SELECT fiscal_year, closure_reason, complaint_count, reported_share_pct
FROM fact_orbio_nonmaintainable_reasons
WHERE fiscal_year='2024-25'
ORDER BY complaint_count DESC;

-- 07. State/UT complaint rates per lakh accounts (not absolute complaint counts)
SELECT state_ut, complaints_per_lakh_accounts
FROM dim_state_complaint_rate
ORDER BY complaints_per_lakh_accounts DESC;

-- 08. Latest quarterly category change (aggregate RB-IOS scope; not bank-only)
WITH q AS (
    SELECT complaint_category, period, period_sort, complaint_count,
           LAG(complaint_count) OVER (PARTITION BY complaint_category ORDER BY period_sort) AS prior_quarter_count
    FROM fact_quarterly_category_all_entities
)
SELECT complaint_category, prior_quarter_count AS oct_dec_2025,
       complaint_count AS jan_mar_2026,
       ROUND(100.0 * (complaint_count-prior_quarter_count)/NULLIF(prior_quarter_count,0),2) AS qoq_change_pct
FROM q
WHERE period_sort=2
ORDER BY qoq_change_pct DESC;

-- 09. Entity group trends
SELECT fiscal_year, regulated_entity_group, complaint_count, share_of_orbio_receipts_pct
FROM fact_orbio_entity_group
ORDER BY fiscal_year_sort, complaint_count DESC;

-- 10. Maintainable vs non-maintainable disposition mix
SELECT fiscal_year, disposition_class, complaint_count, share_of_disposed_pct
FROM fact_orbio_disposal_nature
ORDER BY fiscal_year_sort, complaint_count DESC;
