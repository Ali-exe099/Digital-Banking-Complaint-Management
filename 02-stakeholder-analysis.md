# Digital Banking Complaint Management
## Stakeholder Analysis

| Document control | Details |
|---|---|
| Document ID | DB-CM-SA-001 |
| Version | 1.0 |
| Status | Draft – stakeholder validation required |
| Prepared as | Product Business Analysis case study |
| Last updated | 20 November 2026 |

> Stakeholder roles and decision rights below are proposed for a generic banking context. A specific bank may use different role names, reporting lines or approval authorities.

## 1. Purpose

Identify the people and teams affected by the proposed complaint-management solution, understand their needs and responsibilities, and define how they should be involved in requirements, process design, delivery and operational governance.

## 2. Stakeholder register

| ID | Stakeholder | Main responsibilities / interest | Key needs from the solution | Involvement |
|---|---|---|---|---|
| SH-01 | Customer | Raises a complaint and provides relevant information | Reference number, acknowledgement, understandable status updates and final decision | Customer research, journey validation and usability feedback |
| SH-02 | Customer Support Agent | Registers, reviews, classifies and communicates about complaints | Complete complaint context, clear category/priority guidance, ownership and next action | Process walkthroughs, story review and user acceptance testing |
| SH-03 | Team Lead | Monitors team workload and reviews operational exceptions | Team queue, ageing, pending actions, reassignment and escalation visibility | Rule definition, workflow review and operational acceptance |
| SH-04 | Bank Manager | Oversees complaint performance and significant service risks | Reliable management reports and trend visibility | KPI definition and periodic review |
| SH-05 | Product Manager | Owns product outcomes, scope and prioritisation | Clear problem statement, evidence, requirements and prioritised backlog | Scope approval and product decisions |
| SH-06 | Operations Manager | Owns operational workflow, team allocation and service performance | Approved categories, routing matrix, TAT rules and escalation controls | Process owner; approves operational rules |
| SH-07 | Security / Fraud Team | Handles suspected unauthorised activity and security incidents; reviews security controls | Fast specialist referral, minimum necessary information and access control | Fraud/security path and security review |
| SH-08 | Development Team | Assesses feasibility and implements approved behaviour | Testable functional requirements, rules, interfaces and exception handling | Solution design and implementation clarification |
| SH-09 | Business Analyst | Elicits, analyses and documents business needs and traces requirements | Access to stakeholders, decisions, process details and acceptance feedback | Coordinates analysis, documentation and change control |
| SH-10 | Testing Team | Designs and executes tests against approved requirements | Stable requirement IDs, testable criteria, test data and expected results | Test design, defect validation and test summary |
| SH-11 | Compliance / Grievance Redressal Officer | Confirms policy, regulatory applicability, complaint purview and customer-facing wording | Accurate rule catalogue, auditable referrals and controlled communications | Reviews regulatory and policy-dependent requirements |
| SH-12 | Internal Ombudsman / Deputy Internal Ombudsman | Independently reviews eligible complaints referred under applicable rules | Eligible case data, review chronology and independent decision records | Conditional stakeholder for eligible regulated entities and complaint classes |

## 3. Influence and interest assessment

Ratings are initial analysis assumptions. They should be confirmed with the actual bank sponsor.

| Stakeholder | Influence | Interest | Engagement approach |
|---|---|---|---|
| Customer | Medium | High | User research, service journey review and usability testing |
| Customer Support Agent | Medium | High | Workshops, observation and acceptance-criteria review |
| Team Lead | High | High | Process and escalation workshops; regular review of operational rules |
| Bank Manager | High | Medium | Management checkpoints and KPI review |
| Product Manager | High | High | Scope, backlog and outcome reviews |
| Operations Manager | High | High | Process-owner workshops and operational sign-off |
| Security / Fraud Team | High | High | Specialist-path and control reviews |
| Development Team | Medium | High | Refinement sessions and technical feasibility review |
| Business Analyst | High | High | Requirements ownership and cross-functional coordination |
| Testing Team | Medium | High | Testability review and coverage reconciliation |
| Compliance Officer | High | High | Regulatory interpretation and rule approval |
| Internal Ombudsman / Deputy IO | High for applicable review | Medium / High | Consult on referral data and independent review workflow, where appropriate |

## 4. Decision ownership (proposed RACI)

**R = Responsible for doing the work; A = Accountable for the decision; C = Consulted; I = Informed.** RACI assignments below are a proposed starting point, not a bank-approved delegation of authority.

| Activity / decision | Customer | Agent | Team Lead | Ops Manager | Product Manager | BA | Security | Compliance | Dev | QA | Internal Ombudsman |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Submit complaint and supply information | R | I | I | I | I | I | — | — | — | — | — |
| Register complaint | I | R | A | C | I | C | — | — | C | C | — |
| Approve category taxonomy | I | C | C | A | C | R | C | C | I | C | — |
| Approve priority criteria | I | C | C | A | C | R | C | C | I | C | — |
| Approve team routing and reassignment rules | I | C | R | A | C | R | C | C | C | C | — |
| Approve operational TAT/escalation policy | I | C | R | A | C | R | C | C | C | C | — |
| Define product scope and release priorities | I | C | C | C | A | R | C | C | C | C | — |
| Design fraud/security referral controls | I | C | C | C | I | C | A/R | C | R | C | — |
| Confirm applicable regulatory requirements | I | I | C | C | I | R | C | A | C | C | C |
| Implement system behaviour | I | C | C | C | A | C | C | C | R | C | — |
| Validate requirements and test scenarios | I | C | C | C | A | R | C | C | C | R | C |
| Independent review of eligible complaints | I | I | I | I | I | I | — | C | — | — | A/R |

The accountable party for a real bank's policy decision, complaint closure or regulatory review must be confirmed against its approved governance documents.

## 5. Communication and involvement plan

| Stakeholder group | Information / decision required | Method | Suggested cadence / trigger |
|---|---|---|---|
| Customers | Acknowledgement, status and decision | Approved app, SMS, email or other channel | Event-driven according to bank policy |
| Agents | Queue, complaint detail, owner, due date and next action | System view and team briefing | Daily / as required |
| Team Leads | Ageing, workload, exceptions and operational escalations | Queue view and review meeting | Daily / weekly |
| Operations Manager | TAT, backlog, reassignment and escalation trends | Dashboard and operational review | Weekly / monthly |
| Bank Manager | Overall performance and material risks | Management report | Monthly / as agreed |
| Product Manager | Outcomes, scope, prioritisation and change requests | Product review / backlog refinement | At project milestones |
| Security / Fraud | Suspected fraud referral and security requirements | Approved specialist workflow / security review | Per case and at design milestones |
| Compliance | Regulatory applicability, time rules and customer wording | Compliance review and decision log | Before requirements approval and on policy change |
| Development | Functional behaviour and interface decisions | Refinement workshops and specification review | Throughout design and build |
| QA / Testing | Test conditions, expected results and defects | Test review and defect triage | During test design and execution |
| Internal Ombudsman / Deputy IO | Eligible referral data and decision outcomes | Controlled case referral process | Per eligible complaint, where applicable |

## 6. Stakeholder questions for discovery

1. Which teams currently receive and resolve each complaint category?
2. Who is authorised to change category, priority, owner, final disposition and closure status?
3. What information is mandatory for each complaint type and source channel?
4. Which categories or conditions trigger immediate fraud/security referral?
5. Who owns approval and maintenance of category, priority, routing and TAT configuration?
6. How are partial resolution, rejection, reopen and customer withdrawal handled?
7. Which roles can view sensitive customer or transaction fields?
8. Which cases fall within the Internal Ombudsman's purview for the target entity?
9. Which reports are required by Team Leads, Operations, senior management and Compliance?
10. What baseline data can be used to measure current performance?

## 7. Risks to stakeholder alignment

- Operations, Risk, Security and Compliance may define priority differently. Resolve through a formally approved decision table.
- A reduction in operational escalation may be interpreted as a reduction in all escalations. Define separate reporting measures and explicitly preserve mandatory referrals.
- Product, Operations and Compliance may disagree on workflow ownership. Capture the accountable decision-maker for each policy rule.
- Staff may treat a system suggestion as a final decision. Keep human review and override controls explicit where the BRD requires them.

## 8. Exit criteria

Stakeholder analysis is ready for approval when role names, responsibilities, decision rights, communication expectations and regulatory-review participants have been confirmed by the target bank's sponsor and relevant control functions.

---

**End of document**
