# Dataset Data Dictionary

All source files in this folder contain public aggregated RBI statistics. One row is an aggregated observation, not an individual customer complaint.

| File | Grain | Key fields | Notes |
|---|---|---|---|
| `fact_bank_complaint_category.csv` | FY × category for banks | fiscal_year, complaint_category, complaint_count, reported_share_pct | Bank complaints received at ORBIOs; Appendix 1.6 |
| `fact_orbio_entity_group.csv` | FY × regulated entity group | fiscal_year, regulated_entity_group, complaint_count | Counts by regulated-entity group; Appendix 1.4 |
| `fact_orbio_channel_mix.csv` | FY × receipt mode | fiscal_year, receipt_mode, complaint_count, reported_share_pct | ORBIO receipt channels; Appendix 1.2 |
| `dim_state_complaint_rate.csv` | State/UT | state_ut, complaints_per_lakh_accounts | As at 31-Mar-2025; a rate, not a count |
| `fact_orbio_disposal_overview.csv` | FY | received_during_year, handled_during_year, disposed_during_year, reported_disposal_rate_pct | ORBIOs; contains derived pending count = handled − disposed |
| `fact_crpc_flow_metrics.csv` | FY × metric | metric, value, unit | CRPC processing flow; heterogeneous metrics should not be summed |
| `fact_orbio_disposal_nature.csv` | FY × disposition class | disposition_class, complaint_count, share_of_disposed_pct | Maintainable vs non-maintainable; plus total disposed |
| `fact_orbio_nonmaintainable_reasons.csv` | FY × closure reason | closure_reason, complaint_count, reported_share_pct | Appendix 1.7 |
| `fact_orbio_maintainable_outcomes.csv` | FY × disposal mode | maintainable_disposal_mode, complaint_count, reported_share_pct | Appendix 1.8 |
| `fact_quarterly_category_all_entities.csv` | Quarter × complaint category | period, complaint_category, complaint_count | Aggregate RB-IOS table for Oct-Dec 2025 and Jan-Mar 2026; not bank-only |
| `source_register.csv` | Source document | source_id, url, publication_date | Traceability to official RBI sources |

## Field conventions

- Counts are integer complaint counts as reported by RBI.
- Percentages are stored as numeric percentage points (e.g. 65.92, not 0.6592).
- Fiscal years use Indian financial-year notation (April through March).
- `reported_share_pct` is the value reported in the RBI table. Do not recompute unless the intended denominator is explicit.
- `pending_at_year_end_derived` is calculated as ORBIO complaints handled minus disposed. It is labelled derived, not presented as a separately transcribed RBI table field.
- Quarterly and annual category series have different coverage/aggregation; keep them separate.
- Blank/not-applicable values must not be converted to zero unless RBI's table explicitly reports zero.
