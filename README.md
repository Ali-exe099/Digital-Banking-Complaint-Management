# Digital Banking Complaint Management | Business Analysis & Power BI Portfolio Project

A portfolio case study combining business analysis documentation, complaint-process design, SQL analysis and a Power BI dashboard using publicly available Reserve Bank of India (RBI) aggregated complaint statistics.

> **Project scope and evidence note:** This is an independent portfolio case study. It is not a deployed banking application and does not represent the internal process of a named bank. The analytics use public, aggregated RBI data—not private customer records or bank-internal case-level data. The proposed AS-IS process is a hypothesis and would require stakeholder validation in a real organisation.

## Project objective

Explore how a digital bank could improve complaint visibility, classification, ownership, turnaround-time monitoring, customer communication and escalation handling, while using public RBI complaint statistics to understand external complaint patterns.

## Dashboard overview

The Power BI report currently contains four pages:

| Page | Focus | Main analysis |
|---|---|---|
| 1. Executive Overview | High-level complaint picture | Key complaint indicators, entity groups, category distribution and annual trends |
| 2. Category Trends | Complaint types over time | Category-level volumes and year-on-year movement |
| 3. Channels & Geography | How and where complaints are received | Receipt-channel mix and state/UT complaints per lakh accounts |
| 4. Disposal Analysis | RBI Ombudsman disposal patterns | Complaints handled/disposed, disposal rate, pending cases, maintainable and non-maintainable outcomes, and closure reasons |

**Current visual note:** Page 3 uses a state-wise chart for complaints per lakh accounts. An India map was considered but has not yet replaced that chart.

## Business analysis documentation

The following project documents are available directly from the repository root. Select a document to open it on GitHub.

1. [Project Charter](01-project-charter.md)
2. [Stakeholder Analysis](02-stakeholder-analysis.md)
3. [Process Analysis](03-process-analysis.md)
4. [Business Requirements Document (BRD)](04-business-requirements-document.md)
5. [Functional Requirements Document (FRD)](05-functional-requirements-document.md)
6. [User Stories and Acceptance Criteria](06-user-stories-and-acceptance-criteria.md)
7. [Requirements Traceability Matrix (RTM)](07-requirements-traceability-matrix.md)
8. [RTM Functional Requirement Detail (CSV)](07-rtm-functional-requirement-detail.csv)
9. [Test Scenarios and Cases](08-test-scenarios-and-cases.md)
10. [Regulatory and Public References](09-regulatory-and-public-references.md)

These artefacts describe a proposed complaint-management capability, including complaint intake, categorisation, priority confirmation, team ownership, TAT monitoring, escalation, customer updates and reporting.

## Analytics and technical work

- **Power BI:** Four-page report with KPI cards, trend and comparison visuals, category analysis, channel analysis, state-level complaint-rate analysis and disposal analysis.
- **SQL:** Reproducible SQLite-compatible analysis queries.
- **DAX:** Measures used for report KPIs and analysis.
- **Data storage:** SQLite database containing the prepared analysis tables.
- **Documentation:** Analysis report and Power BI dashboard build guide.

Supporting analytics, workflow diagrams, the Power BI file and screenshots will be added to their respective folders as they are verified and uploaded.

## Key business questions

1. Which complaint categories account for a larger share of reported complaints?
2. How have reported complaint categories changed across financial years?
3. What is the reported mix of complaint receipt channels?
4. How do state/UT complaint rates compare when expressed per lakh accounts?
5. What do RBI Ombudsman disposal patterns and non-maintainable closure reasons indicate?
6. What product and process capabilities could improve complaint visibility, ownership and escalation governance?

## Data sources and limitations

The analytics workstream is based on published RBI aggregated complaint statistics, including the RBI Annual Report of Ombudsman Scheme 2024–25 and the RBI report containing quarterly category data for October 2025–March 2026.

The report distinguishes annual bank-complaint data from broader RB-IOS quarterly category data where the source scopes differ. Do not combine these datasets as though they represent the same population.

The available public data does **not** provide bank-internal case-level timestamps, agent assignments, reassignment history or internal workflow events. Therefore, this project does not claim to measure:

- Average bank complaint resolution time or internal TAT
- Internal bank SLA attainment
- Agent productivity or workload
- Internal complaint backlog by team
- Reassignment rate or operational escalation rate
- Before-and-after operational improvement

The RBI Ombudsman disposal rate is an external Ombudsman process metric; it is not a bank's internal SLA or an individual customer's resolution time.

## Current repository files

```text
Digital-Banking-Complaint-Management/
├── README.md
├── 01-project-charter.md
├── 02-stakeholder-analysis.md
├── 03-process-analysis.md
├── 04-business-requirements-document.md
├── 05-functional-requirements-document.md
├── 06-user-stories-and-acceptance-criteria.md
├── 07-requirements-traceability-matrix.md
├── 07-rtm-functional-requirement-detail.csv
├── 08-test-scenarios-and-cases.md
└── 09-regulatory-and-public-references.md
```

Additional folders and files (such as workflow diagrams, SQL scripts, analysis outputs, source data, the Power BI `.pbix` file and dashboard screenshots) should be added only after confirming they are present, accurate and suitable for public sharing. Keep large source datasets and files subject to licensing or redistribution restrictions out of the repository; link to the original public source where appropriate.

## How to review

1. Start with the project objective and scope in this README.
2. Review the [Project Charter](01-project-charter.md) and [Stakeholder Analysis](02-stakeholder-analysis.md).
3. Follow the requirements chain through the [BRD](04-business-requirements-document.md), [FRD](05-functional-requirements-document.md), [User Stories and Acceptance Criteria](06-user-stories-and-acceptance-criteria.md) and [RTM](07-requirements-traceability-matrix.md).
4. Review the [Process Analysis](03-process-analysis.md), [Test Scenarios and Cases](08-test-scenarios-and-cases.md) and [Regulatory and Public References](09-regulatory-and-public-references.md).
5. Inspect the Power BI report and supporting analytics when those files are added to the repository.

## Tools and skills demonstrated

Business Analysis · Requirements Elicitation & Documentation · Process Mapping · User Stories · Acceptance Criteria · RTM · SQL · SQLite · Power BI · DAX · Data Analysis · KPI Design · Data Interpretation

## Disclaimer

This project is for learning and portfolio demonstration. It is not legal, regulatory or operational advice, and it does not imply implementation or endorsement by RBI or any bank.
