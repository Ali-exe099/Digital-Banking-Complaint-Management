# Digital Banking Complaint Management
## Business Requirements Document (BRD)

| Document control | Details |
|---|---|
| Document ID | DB-CM-BRD-001 |
| Version | 1.0 |
| Status | Draft – for stakeholder validation |
| Project type | Product Business Analysis case study |
| Prepared by | Business Analyst (portfolio project) |
| Last updated | 20 November 2026 |

> **Document note:** This is a proposed product concept, not a description of an identified bank's production system. The current-state process and potential process gaps are hypotheses until validated with banking operations stakeholders. Regulatory requirements must be confirmed for the specific type of regulated entity and complaint scenario before implementation.

---

## 1. Executive summary

Customers use digital banking services for payments, cards, cash withdrawals and account access. When one of these services fails, a customer may raise a complaint through a bank's available channels. The bank needs to register the complaint, understand the issue, assign it to an accountable team, investigate it, keep the customer informed and make sure it reaches the appropriate review function when required.

This case study proposes a Digital Banking Complaint Management solution to improve visibility and control across that process. The product will support structured complaint capture, category and priority classification, team ownership, turnaround-time (TAT) monitoring, customer updates, operational escalation and management reporting.

The intended business outcome is to reduce avoidable delays and operational escalations caused by incomplete information, incorrect routing, unclear ownership or missed follow-up. The solution must not suppress valid escalations or regulatory reviews simply to reduce the escalation count.

## 2. Business context and problem statement

A complaint can move across customer support, specialist operations, fraud/security and management teams before a final decision is reached. Without a consistent view of the complaint's category, priority, owner, age and next action, it can be difficult for staff and managers to identify which cases need attention.

The following are problem hypotheses to validate, not confirmed findings about any specific bank:

- Complaint categories and priority may be applied inconsistently.
- A complaint may be assigned to a team that cannot resolve it, resulting in reassignment.
- The accountable owner and next action may not be obvious to the customer or support team.
- TAT deadlines and approaching breaches may not be visible in one operational view.
- Customer updates may be dependent on manual follow-up.
- Managers may need to combine information from multiple reports to understand the overdue backlog and escalation reasons.

**Business problem statement:** The bank needs a consistent complaint-management process that classifies complaints appropriately, assigns clear ownership, monitors applicable resolution timelines and escalates cases to the correct level without losing customer visibility or regulatory control.

## 3. Business objectives

| ID | Objective | Intended outcome |
|---|---|---|
| BO-01 | Standardise complaint capture and registration | Complaints are recorded with a unique reference and the information required for handling. |
| BO-02 | Improve complaint classification | Staff can identify the service category and apply an approved priority consistently. |
| BO-03 | Establish clear ownership | Each open complaint has an accountable team and, where applicable, an assigned case owner. |
| BO-04 | Improve TAT visibility | Staff can see the applicable deadline, elapsed time and cases approaching or exceeding it. |
| BO-05 | Reduce avoidable operational escalations | Preventable escalations caused by misrouting, unclear ownership or missed follow-up are reduced after a baseline is established. |
| BO-06 | Improve customer communication | Customers receive acknowledgement and status or decision updates at the points defined by bank policy. |
| BO-07 | Strengthen management visibility | Managers can review complaint volumes, priority, ageing, ownership, TAT performance and escalation reasons. |
| BO-08 | Support required governance and review | The workflow records decisions and supports applicable internal review and regulatory requirements. |

## 4. Scope

### 4.1 In scope

- Capture complaints received through bank-approved channels, such as mobile banking, internet banking, branch, contact centre, email or other approved channels.
- Generate a unique complaint reference and record the date and time of receipt.
- Capture complaint category, relevant transaction or service details, customer description and supporting documents where applicable.
- Classify complaints using an approved service category list.
- Assign a Low, Medium or High operational priority using bank-approved criteria.
- Allow an authorised agent to review and correct a suggested category or priority, with a reason recorded for an override.
- Assign complaints to the responsible team and record ownership changes.
- Maintain complaint status, action history, timestamps and next-action information.
- Apply approved TAT rules and display approaching or overdue deadlines.
- Support operational escalation to a Team Lead or Operations Manager under configurable rules.
- Route suspected fraud or security-related cases to the designated specialist process.
- Support customer acknowledgement and status or final-decision communication.
- Record final disposition and closure information.
- Provide operational dashboards and reports for complaint volume, category, priority, ageing, TAT and escalation analysis.
- Support Internal Ombudsman referral workflows where the relevant RBI directions apply to the regulated entity and complaint.

### 4.2 Out of scope for this case study

- Making payment reversals, refunds, chargebacks or account adjustments.
- Replacing core banking, card processing, UPI, fraud monitoring or case investigation platforms.
- Making the substantive fraud determination or deciding whether a disputed transaction is legally valid.
- Replacing the bank's approved complaint policy, legal interpretation or regulatory compliance function.
- Directly operating or integrating with the RBI Complaint Management System on behalf of customers.
- Designing the RBI Ombudsman's internal case-management process.
- Committing to a specific bank integration, technology architecture or production deployment.
- Claiming measured improvements before a baseline and post-implementation data are available.

## 5. Stakeholders and user groups

| Stakeholder | Interest / responsibility in this project |
|---|---|
| Customer | Submits complaints, supplies requested details and receives status or decision communication. |
| Customer Support Agent | Registers, reviews, classifies and communicates about complaints within their authority. |
| Team Lead | Monitors team workload, reviews operational escalations and supports resolution. |
| Bank Manager | Reviews complaint performance and significant operational risks. |
| Product Manager | Owns product outcomes, scope and prioritisation. |
| Operations Manager | Owns operational workflow, team allocation and service performance. |
| Security / Fraud Team | Handles referrals involving suspected unauthorised activity or security risk. |
| Development Team | Assesses feasibility and implements approved system behaviour. |
| Business Analyst | Elicits, analyses, documents and traces requirements. |
| Testing Team | Validates requirements, business rules and exception scenarios. |
| Compliance / Grievance Redressal Officer | Confirms applicable policy, regulatory obligations and review routes. |
| Internal Ombudsman / Deputy Internal Ombudsman | Reviews eligible complaints already examined by the bank that are partially resolved or wholly rejected, where the applicable directions require referral. |

The stakeholder list and decision rights are proposed. The bank must confirm role names, approval authority and separation of duties.

## 6. Proposed solution overview

The proposed solution will provide a shared complaint record and a controlled workflow:

1. Receive and register the complaint.
2. Validate mandatory information and issue a reference number.
3. Identify the service category.
4. Suggest or assign an operational priority using bank-approved criteria.
5. Allow an authorised agent to confirm or correct the classification.
6. Assign the complaint to the responsible team and owner.
7. Calculate and display the applicable TAT deadline.
8. Track investigation activity, customer updates and status changes.
9. Identify approaching or overdue cases and trigger the appropriate operational escalation.
10. Record the final outcome and support any required independent or regulatory review.
11. Close the complaint through an authorised process and make it available for reporting.

Classification, priority, ownership and final disposition are separate data fields. They must not be combined into a single status or category.

## 7. Business requirements

The following requirements describe business capabilities. Detailed screen behaviour, field-level validation, integrations and system responses will be documented in the Functional Requirements Document (FRD).

| Requirement ID | Business requirement | Priority | Business rationale |
|---|---|---|---|
| BR-01 | The solution shall support complaint intake from bank-approved channels and retain the original source of each complaint. | Must | Enables complaints from supported channels to be managed consistently. |
| BR-02 | The solution shall create a unique complaint reference and record the date and time the bank received the complaint. | Must | Provides traceability and a reliable starting point for timeline monitoring. |
| BR-03 | The solution shall capture the information required to identify the customer, service, issue and relevant transaction, subject to approved data-access and privacy rules. | Must | Gives the handling team sufficient information to investigate the complaint. |
| BR-04 | The solution shall classify each complaint using an approved banking-service category taxonomy. | Must | Supports consistent handling, routing and reporting. |
| BR-05 | The solution shall support Low, Medium and High operational priority based on criteria approved by the bank. | Must | Helps teams prioritise work using a common approach. |
| BR-06 | The solution shall allow authorised staff to review and override a suggested category or priority, recording the reason for the change. | Must | Retains human accountability and creates a review trail. |
| BR-07 | The solution shall assign each complaint to a responsible team and record the current owner and any reassignment history. | Must | Makes accountability and handovers visible. |
| BR-08 | The solution shall apply the approved TAT rule relevant to the complaint type, service and applicable regulatory or network requirement. | Must | Prevents use of a single generic deadline where different rules apply. |
| BR-09 | The solution shall show complaint status, age, next action and TAT position to authorised users. | Must | Helps teams identify pending, approaching-deadline and overdue cases. |
| BR-10 | The solution shall support operational escalation to the defined management level when an approved trigger is met. | Must | Makes unresolved or at-risk complaints visible to the right operational owner. |
| BR-11 | The solution shall provide a separate referral path for suspected fraud or security-related complaints. | Must | Ensures these cases reach the designated specialist process without waiting in a general queue. |
| BR-12 | The solution shall support customer acknowledgement and status or final-decision communications through approved channels. | Must | Improves customer visibility and reduces uncertainty about complaint progress. |
| BR-13 | The solution shall record complaint actions, ownership changes, classification changes, decisions, communications and timestamps in an audit history. | Must | Supports traceability, review and dispute handling. |
| BR-14 | The solution shall provide role-based access so users can view or update complaints only within their approved responsibilities. | Must | Protects customer and transaction information. |
| BR-15 | The solution shall support the applicable Internal Ombudsman review and auto-escalation process for regulated entities and complaints within the relevant RBI directions. | Must, where applicable | Helps the bank meet the applicable internal grievance-redress requirements. |
| BR-16 | The solution shall provide operational reports covering complaint volume, category, priority, ownership, ageing, TAT performance, reassignment and escalation reason. | Should | Gives management a consistent view of operational performance and recurring issues. |
| BR-17 | The solution should identify potential duplicate complaints for authorised review without automatically merging or closing them. | Should | Can reduce duplicate handling while avoiding accidental loss of separate customer issues. |
| BR-18 | The solution should retain configurable category, priority, ownership and TAT rules with effective dates and authorised change history. | Should | Allows policy changes without embedding business rules permanently in the workflow. |

## 8. Business rules

| Rule ID | Business rule |
|---|---|
| BRL-01 | Every accepted complaint must have a unique complaint reference. |
| BRL-02 | Complaint category identifies the service or issue; operational priority determines urgency; ownership identifies the accountable team or person. These are separate attributes. |
| BRL-03 | The category list and category-to-team mapping must be approved and maintained by the bank's business owner. |
| BRL-04 | Priority definitions and examples must be approved by Operations, Risk and Security as appropriate. The proposed labels are High, Medium and Low; they are not presented as RBI-defined categories. |
| BRL-05 | A suspected unauthorised transaction or security incident must follow the bank's designated fraud/security response process. It must not wait solely in a general complaint queue. |
| BRL-06 | An authorised agent may override a suggested category, priority or team assignment only within the permissions granted to that role. The reason and timestamp must be recorded. |
| BRL-07 | TAT must be calculated from an approved rule table that accounts for the complaint type and applicable RBI, NPCI, card-network and bank requirements. A single generic TAT must not be applied to all complaints. |
| BRL-08 | Operational escalation thresholds and recipients must be configurable and approved by the business owner. Thresholds are not fixed in this BRD. |
| BRL-09 | Operational escalation must be measured separately from mandatory Internal Ombudsman referral. A reduction in operational escalations must never be achieved by suppressing a required review. |
| BRL-10 | The operational complaint status must be separate from the final decision/disposition recorded for applicable regulatory review. |
| BRL-11 | For commercial banks covered by the RBI Commercial Banks – Internal Ombudsman Directions, 2026, the applicable Complaint Management System must support the required decision categories of Fully Resolved, Partially Resolved and Wholly Rejected before the relevant Internal Ombudsman referral, subject to the Directions and their stated exceptions. |
| BRL-12 | For commercial banks covered by those Directions, partially resolved or wholly rejected complaints within the Internal Ombudsman's purview must be auto-escalated to the Internal Ombudsman / Deputy Internal Ombudsman within the applicable timeline. Where RBI, NPCI or card-network rules prescribe a resolution timeline, the referral must be sufficiently in advance to allow at least 10 days for Internal Ombudsman review; in other applicable cases, referral is required within 20 days of receipt. The final decision must be communicated within the period specified in the Directions. |
| BRL-13 | For commercial banks covered by those Directions, a complaint must not be closed by the same branch, unit or other touchpoint that handled it; the required senior-level review and separation of responsibility must be supported. |
| BRL-14 | The Internal Ombudsman workflow is an internal review of eligible complaints already examined by the bank. It is not a direct customer-submission channel to the Internal Ombudsman. |
| BRL-15 | Any customer-facing guidance about approaching the RBI Ombudsman must reflect the applicable Reserve Bank – Integrated Ombudsman Scheme, 2026 and be reviewed by Compliance before release. |
| BRL-16 | The system must preserve the complaint history and must not silently delete a complaint, its decision or its escalation record. Corrections must be traceable. |

## 9. Success measures and measurement approach

No numerical performance target is set at this stage. The baseline must be collected from an approved source, and the business owner must approve a target and review period before implementation.

| Measure | Proposed definition | Baseline / target |
|---|---|---|
| Classification agreement rate | Complaints whose category and priority agree with an approved quality-review sample, divided by complaints reviewed. | To be baselined and approved. |
| First-time assignment rate | Complaints not reassigned after initial routing, divided by complaints assigned. | To be baselined and approved. |
| TAT attainment | Complaints reaching the applicable decision point within the applicable deadline, divided by complaints due in the period. | To be baselined and approved by complaint type. |
| Overdue open backlog | Count of open complaints past the applicable deadline at the reporting cut-off. | Baseline and reduction target to be approved. |
| Avoidable operational escalation rate | Complaints escalated for defined preventable operational reasons, divided by complaints received in the period. Mandatory Internal Ombudsman referrals are excluded and reported separately. | To be baselined and approved. |
| Customer update compliance | Required customer updates sent within the bank-approved communication window, divided by updates due. | To be baselined and approved. |
| Reopened complaint rate | Closed complaints reopened within the agreed observation window, divided by complaints closed. | To be baselined and approved. |
| Record completeness | Complaints containing all mandatory fields and required decision/audit data, divided by complaints sampled. | To be baselined and approved. |

**Measurement controls:** report by category and priority where meaningful; document excluded cases; use a consistent reporting period; and do not compare periods unless definitions and data coverage are consistent.

## 10. High-level business acceptance conditions

The proposed solution will be considered ready for business acceptance when the following conditions are demonstrated in an agreed test environment:

1. A complaint can be registered with a unique reference and a receipt timestamp.
2. The complaint can be classified using the approved category list and assigned an approved operational priority.
3. An authorised agent can correct a suggested classification, with the reason retained in the history.
4. Each open complaint has a visible responsible team and current owner.
5. The applicable TAT rule is applied and the deadline is visible to authorised users.
6. Approaching-deadline and overdue cases can be identified, and operational escalation follows the approved trigger and ownership hierarchy.
7. Suspected fraud/security complaints can be routed to the designated specialist path.
8. Customers can receive the approved acknowledgement and status/final-decision communications.
9. Complaint actions, ownership changes, overrides, communications and decisions are traceable.
10. Role-based access is enforced and validated by the Security Team.
11. Where applicable, the required Internal Ombudsman referral rules, timers, decision categories and separation of closure responsibility are tested against Compliance-approved scenarios.
12. The operational reports reconcile to the underlying complaint records for the agreed reporting period.

Detailed test cases and Given/When/Then acceptance criteria will be maintained in the FRD and test documentation.

## 11. Assumptions

- The project represents a generic Indian digital bank and does not describe a named bank's internal process.
- The bank has or will approve complaint categories, ownership mappings, priority criteria and an escalation hierarchy.
- Applicable TATs can differ by service, payment rail, card network, regulatory instruction and bank policy.
- Customers can be identified through an approved bank process; the solution will not independently establish customer identity.
- The bank will provide approved communication channels and message templates.
- The bank's Compliance function will confirm which entity-specific RBI directions and other requirements apply.
- The project will use public information for its portfolio analysis. No private customer or bank complaint data is assumed to be available.

## 12. Constraints and dependencies

- Access to complaint-level operational data is not currently established.
- Actual baseline values for classification, reassignment, TAT, backlog and escalation are not available in this case study.
- TAT configuration depends on an approved regulatory and policy rule catalogue.
- Final priority rules depend on agreement among Operations, Risk, Security and Compliance.
- Implementation depends on integration feasibility, identity/access controls, notification channels and system-of-record decisions that are outside this BRD.
- Legal and regulatory interpretation must be confirmed by the bank's Compliance/Legal function; this document is not legal advice.

## 13. Risks and mitigations

| Risk | Potential impact | Proposed mitigation |
|---|---|---|
| Priority rules are unclear or too broad | High-priority queue becomes overloaded or urgent cases are missed. | Approve criteria and examples; review priority distribution and overrides. |
| Incorrect category-to-team mapping | Reassignment and delays continue. | Maintain an approved mapping owner and test representative scenarios. |
| TAT rules are incomplete or outdated | Incorrect alerts or missed regulatory timelines. | Use a controlled, effective-dated rule catalogue with Compliance approval. |
| Staff over-rely on automated suggestions | Incorrect decisions may go unchallenged. | Allow authorised confirmation/override and retain reasons. |
| Escalation reduction is treated as the only success measure | Necessary regulatory or risk escalation could be discouraged. | Report avoidable operational escalation separately from mandatory referrals. |
| Customer information is exposed to unauthorised users | Privacy, security and trust impact. | Apply role-based access, data minimisation, audit logging and security testing. |
| Historical data is incomplete | KPI baselines may be misleading. | Profile data quality and document exclusions before setting targets. |

## 14. Regulatory and policy considerations

This section records requirements relevant to the proposed concept. It is not a substitute for a bank-specific compliance assessment.

### 14.1 RBI Internal Ombudsman Directions, 2026

The RBI Commercial Banks – Internal Ombudsman Directions, 2026 apply to the commercial banks defined in the Directions that have 10 or more banking outlets in India as on 31 March 2025, with the stated treatment for banks that meet the criteria later. Separate 2026 directions exist for other categories of regulated entities; the commercial-bank requirements must not automatically be applied to every bank or payment provider.

For commercial banks within scope, the Directions require a fully automated Complaints Management System with access for the Internal Ombudsman / Deputy Internal Ombudsman. Partially resolved or wholly rejected complaints within the applicable purview must be auto-escalated for review. Where RBI, NPCI or card-network rules prescribe a resolution timeline, the referral must be made sufficiently in advance to allow at least 10 days for Internal Ombudsman review; in other applicable cases, referral is required within 20 days of receipt. The Directions also require the final decision to be communicated within 30 days from receipt, prescribe the relevant decision categories, and require separation between the touchpoint handling the complaint and the closure process as specified in the Directions.

The detailed applicability, exclusions, timelines and process design must be validated against the complete Directions by the bank's Compliance/Legal function.

### 14.2 Reserve Bank – Integrated Ombudsman Scheme, 2026

The Reserve Bank – Integrated Ombudsman Scheme, 2026 came into force on 1 July 2026 and replaced the 2021 Scheme for complaints covered by the 2026 Scheme. The RBI's published FAQs state that a customer must first approach the regulated entity. The customer may approach the RBI Ombudsman if no reply is received within 30 days or within the applicable RBI, NPCI or card-network timeline, whichever is higher, or if the customer is dissatisfied with the reply/resolution. The Scheme also sets a filing window and maintainability conditions. Customer-facing guidance must be approved by Compliance and should not be generated from a generic timer alone.

### 14.3 Official sources

- [RBI – Commercial Banks - Internal Ombudsman Directions, 2026](https://www.rbi.org.in/scripts/BS_ViewMasDirections.aspx?id=13271)
- [RBI – Reserve Bank - Integrated Ombudsman Scheme, 2026 FAQs](https://www.rbi.org.in/commonman/English/Scripts/PressReleases.aspx?Id=3407)
- [RBI – Press release on the Integrated Ombudsman Scheme, 2026](https://www.rbi.org.in/Scripts/FS_PressReleaseDisplay.aspx?prid=62052)

## 15. Open questions for stakeholder confirmation

1. Which legal entity and bank category is the target for this product concept?
2. Which complaint channels must be included in the first release?
3. What exact complaint categories and subcategories does the bank use?
4. What criteria distinguish High, Medium and Low priority?
5. Which complaint types require immediate fraud/security referral?
6. What are the approved TATs for UPI, cards, ATM, mobile banking, internet banking and other services?
7. Which business function owns each category and who may reassign a case?
8. Which operational escalation levels and triggers are approved?
9. Which complaint outcomes require Internal Ombudsman review, and what exclusions apply?
10. What is the authoritative system of record for customer, transaction and complaint details?
11. Which customer communication channels and templates are approved?
12. What baseline period and data sources will be used to set measurable improvement targets?

## 16. Approval and sign-off

| Role | Name | Approval / comments | Date |
|---|---|---|---|
| Product Manager | To be confirmed | Pending | — |
| Operations Manager | To be confirmed | Pending | — |
| Compliance / Grievance Redressal | To be confirmed | Pending | — |
| Security Representative | To be confirmed | Pending | — |
| Business Owner | To be confirmed | Pending | — |

---

**End of document**
