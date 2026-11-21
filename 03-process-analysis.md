# Digital Banking Complaint Management
## AS-IS and TO-BE Process Analysis

| Document control | Details |
|---|---|
| Document ID | DB-CM-PA-001 |
| Version | 1.0 |
| Status | Draft – conceptual AS-IS; proposed TO-BE |
| Prepared as | Product Business Analysis case study |
| Last updated | 20 November 2026 |

> **Important:** No process documentation or interviews from a named bank were supplied. The AS-IS is therefore a working hypothesis, not a verified description of a bank's actual operations. Validate it with Customer Support, Operations, Security and Compliance before presenting it as a confirmed current state.

## 1. Purpose

Describe the complaint journey, identify process questions that require validation and define a proposed future workflow. The analysis focuses on complaint classification, ownership, TAT monitoring, customer communication and appropriate escalation.

## 2. Process boundary

**Start:** A customer submits a complaint through a bank-approved channel.

**End:** The bank records and communicates the final decision and completes authorised closure, including applicable review steps.

**Outside the process boundary:** Executing a payment reversal or refund, operating the core banking/payment rail, conducting the full fraud investigation and handling the RBI Ombudsman's internal case process.

## 3. Conceptual AS-IS process

### 3.1 Current-state hypothesis

1. The customer submits a complaint through an available channel.
2. The bank receives the complaint and a support function registers or reviews the available details.
3. An agent identifies the service or issue category.
4. The complaint is assigned to a relevant team or owner.
5. The resolution team investigates and records findings through the bank's existing process.
6. If the issue is not resolved, the complaint may be reviewed by a Team Lead or another authority and sent for further investigation.
7. The bank communicates a response or status to the customer.
8. An authorised function records the outcome and closes the complaint according to bank policy.

The sequence above is a conceptual model. It does not assert that every bank uses these exact steps, roles or systems.

### 3.2 AS-IS process questions and possible gaps

| Process area | Validation question | Potential gap if not controlled | Possible impact |
|---|---|---|---|
| Intake | Are complaints received from all supported channels captured in one record? | Channel records may be fragmented | Duplicate work or incomplete visibility |
| Registration | Is receipt time distinct from system registration time? | Timing may be difficult to evidence | Incorrect ageing or deadline calculation |
| Classification | Is an approved category and priority taxonomy used? | Inconsistent category/priority values | Misrouting and inconsistent prioritisation |
| Assignment | Is one team and accountable owner visible at all times? | Ownership may be unclear | Delayed action and reassignment |
| Investigation | Are actions, dependencies and next steps recorded? | Case history may be incomplete | Repeated investigation and poor handover |
| TAT | Is the correct service-specific deadline visible? | Generic or outdated deadline may be applied | Incorrect alert or missed obligation |
| Escalation | Are operational escalation and regulatory review separate? | Escalation reasons may be mixed | Wrong workflow or misleading KPI |
| Communication | Are acknowledgement and decision communications recorded? | Customer updates may be missed | Repeat follow-up contacts and complaints |
| Closure | Is closure performed by an authorised, appropriately independent function? | Separation-of-duty requirements may be missed | Governance and regulatory risk |
| Reporting | Can volumes, ageing, TAT, reassignment and causes be reconciled to records? | Reports may use inconsistent definitions | Weak management decisions |

These are discovery hypotheses, not confirmed findings.

### 3.3 AS-IS diagram

![Conceptual AS-IS workflow](../diagrams/01-as-is-workflow.png)

Editable source: [`01-as-is-workflow.drawio`](../diagrams/01-as-is-workflow.drawio).

## 4. Proposed TO-BE process

### 4.1 Future-state steps

| Step | Lane / role | Activity | Control or outcome |
|---:|---|---|---|
| 1 | Customer | Submit digital banking complaint | Complaint is received through an enabled channel |
| 2 | Complaint Management System | Register the complaint and record receipt/registration timestamps | Unique reference and traceable receipt time |
| 3 | System | Validate mandatory information | Missing or invalid fields are returned for correction; incomplete records are not silently treated as registered |
| 4 | System | Suggest category and operational priority | Suggestions use an approved category taxonomy and criteria |
| 5 | Support Agent | Review and confirm or override the suggestion | Override reason, user and timestamp are retained |
| 6 | System / Agent | Recommend team and confirm current owner | One accountable team/owner is visible; unassigned cases enter a controlled queue |
| 7 | System | Select the applicable TAT rule | Due date is based on an approved, effective-dated rule; no generic duration is assumed |
| 8 | Resolution Team | Investigate and record actions, findings and dependencies | Status, owner, next action and history remain visible |
| 9 | System / Team Lead | Monitor ageing and trigger operational review | Approaching/overdue cases follow approved triggers and recipients |
| 10 | Security / Fraud Team | Handle suspected fraud/security referral | Specialist path is separate from the general queue |
| 11 | Resolution / authorised reviewer | Record final disposition | Fully resolved, partially resolved or wholly rejected outcomes are distinct from operational status |
| 12 | Internal Ombudsman / Deputy IO | Independently review eligible partially resolved or wholly rejected complaints, where applicable | Required referral and review controls are applied only to the relevant entity and complaint scope |
| 13 | Authorised function / System | Communicate decision and complete authorised closure | Customer communication and closure history are retained |
| 14 | Operations / Management | Review reports and trends | Metrics use approved definitions and reconciled source data |

### 4.2 TO-BE diagram

![Proposed TO-BE workflow](../diagrams/02-to-be-workflow.png)

Editable source: [`02-to-be-workflow.drawio`](../diagrams/02-to-be-workflow.drawio).

### 4.3 Key decision gateways

| Gateway | Yes path | No / exception path |
|---|---|---|
| Are mandatory complaint details available? | Continue validation and classification | Request missing details or hold in an approved validation state |
| Is a fraud/security concern suspected? | Refer to the approved specialist process immediately | Continue the standard complaint path |
| Is the complaint resolved? | Record the decision and continue to the disposition/closure checks | Continue investigation and monitor ageing |
| Is the operational escalation trigger met? | Refer to the approved Team Lead / Operations level | Continue investigation with visible next action and due date |
| Is the final disposition partially resolved or wholly rejected and within Internal Ombudsman purview? | Apply the applicable internal review/referral process | Continue the applicable fully resolved or other approved decision path |
| Is the complaint ready for closure and is the closing function authorised? | Complete closure and communication | Keep the case open or route for required review |

## 5. Classification model

Classification is split into three independent attributes:

| Attribute | Question answered | Proposed examples | Business owner |
|---|---|---|---|
| Complaint category | What service or issue is involved? | UPI, debit card, credit card, ATM, mobile banking, internet banking, account services | Operations / Product; taxonomy approval required |
| Operational priority | How urgently should the case be handled? | High, Medium, Low | Operations with Risk/Security input |
| Ownership | Which team/person is accountable for the next action? | UPI Operations, Card Operations, Digital Banking Support, Fraud/Security | Operations |

The High/Medium/Low framework is a proposed operational scale, not an RBI priority taxonomy. Criteria must be approved and tested before use.

## 6. TAT and escalation design principles

- TAT must be selected from an approved rule catalogue using the applicable complaint/service conditions.
- The system must preserve the receipt timestamp used for the relevant clock.
- The rule effective at the applicable time must be retained for audit and historical reporting.
- Any pause/resume conditions must be approved; they must not be assumed from a status name alone.
- Operational escalation to a Team Lead or Operations Manager is separate from mandatory Internal Ombudsman review.
- Fraud/security referral is a specialist route and should not wait for ordinary operational escalation.
- Required statutory or regulatory review must not be suppressed to improve an operational escalation metric.

## 7. Regulatory process considerations

The BRD records the RBI Commercial Banks – Internal Ombudsman Directions, 2026 and the Reserve Bank – Integrated Ombudsman Scheme, 2026 as regulatory context. Applicability is entity-specific and complaint-specific. For covered commercial banks, the internal review of eligible partially resolved or wholly rejected complaints is distinct from an ordinary overdue-case escalation. The actual rule set, exceptions and timing must be confirmed by the bank's Compliance/Legal team.

Official RBI references:

- [RBI – Commercial Banks – Internal Ombudsman Directions, 2026](https://www.rbi.org.in/scripts/NotificationUser.aspx?Id=13271)
- [RBI – Reserve Bank – Integrated Ombudsman Scheme, 2026 FAQs](https://rbi.org.in/scripts/FAQDisplay.aspx?Id=153)
- [RBI – Press release on Internal Ombudsman Directions, 2026](https://rbi.org.in/Scripts/BS_PressReleaseDisplay.aspx?prid=62034)

## 8. Process KPIs

| KPI | Definition | Use |
|---|---|---|
| First-time assignment rate | Complaints not reassigned after initial routing ÷ complaints assigned | Evaluate routing and mapping quality |
| Reassignment rate | Complaints reassigned at least once ÷ complaints assigned | Identify mapping or ownership issues |
| TAT attainment | Complaints meeting their applicable deadline ÷ complaints due | Monitor service performance |
| Overdue open backlog | Count of open complaints past applicable due date at cut-off | Identify cases needing attention |
| Avoidable operational escalation rate | Operational escalations for approved preventable reasons ÷ complaints received | Track preventable escalation separately |
| Mandatory review compliance | Eligible complaints referred/reviewed within applicable rules ÷ eligible complaints due | Preserve regulatory control |
| Customer update compliance | Required updates sent within approved communication window ÷ updates due | Monitor customer communication |

All measures require agreed definitions, data sources, reporting windows and baselines before targets are set.

## 9. AS-IS to TO-BE change summary

| Area | AS-IS hypothesis | Proposed TO-BE capability |
|---|---|---|
| Intake | Receipt and registration steps may vary by channel | Standard registration, reference and timestamp capture |
| Classification | Agent-led categorisation may be inconsistent | Approved taxonomy and system suggestion with human confirmation |
| Priority | Criteria may not be consistently documented | Approved High/Medium/Low operational criteria and override history |
| Ownership | Team/owner visibility may be limited | Routing recommendation, accountable owner and full reassignment history |
| TAT | Deadline tracking may be fragmented | Effective-dated TAT rules, ageing and due-date view |
| Escalation | Follow-up may rely on manual review | Configured operational escalation; separate fraud/security and regulatory paths |
| Communication | Customer updates may be inconsistent | Event-based approved communications and outcome record |
| Reporting | Performance view may be fragmented | Reconciled reporting by category, priority, owner, ageing and outcome |

## 10. Validation required before sign-off

1. Confirm the actual complaint channels and systems of record.
2. Walk through the current process with an agent and team lead.
3. Confirm all team names, role responsibilities and approval authority.
4. Validate category and subcategory taxonomy.
5. Approve priority examples and override rules.
6. Confirm TAT start events, calendars, exceptions and applicable network/regulatory rules.
7. Validate operational escalation thresholds and recipients.
8. Confirm fraud/security routing and handover.
9. Confirm Internal Ombudsman purview, exemptions, referral and closure requirements for the target entity.
10. Confirm customer communication templates, channels and retention.

---

**End of document**
