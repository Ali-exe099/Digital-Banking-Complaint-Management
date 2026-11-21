# Digital Banking Complaint Management
## Project Charter

| Document control | Details |
|---|---|
| Document ID | DB-CM-PC-001 |
| Version | 1.0 |
| Status | Draft – portfolio case study |
| Project type | Product Business Analysis |
| Geography / context | India-focused digital banking concept |
| Prepared by | Business Analyst – portfolio project |
| Last updated | 20 November 2026 |

> **Project boundary:** This is a proposed product concept. It is not a live implementation and does not describe the internal process of a named bank. The current-state workflow is a hypothesis that would need validation with a bank's stakeholders. No private customer or bank complaint data has been used.

## 1. Project background

Digital banking customers may raise complaints about UPI, cards, ATM transactions, mobile banking, internet banking and account services. A complaint can require review by customer support, a specialist operations team, a team lead, fraud/security or a grievance-review function.

The proposed product is intended to provide a consistent record of each complaint, make its category and priority visible, identify an accountable team, monitor the applicable turnaround time (TAT), support customer updates and route cases for the appropriate operational or regulatory review.

## 2. Business problem

Without a consistent complaint record and controlled workflow, staff may have difficulty identifying the correct category, current owner, next action and applicable due date. These conditions can contribute to avoidable reassignment, delayed follow-up, poor customer visibility and an ageing unresolved backlog.

These are problem hypotheses for this case study. They have not been measured inside a particular bank.

## 3. Business objective

Analyse and design a complaint-management workflow that improves complaint visibility, classification, ownership, resolution tracking, customer communication and escalation handling.

The product concept aims to:

1. Capture complaints received through approved channels and create a traceable reference.
2. Classify complaints by service category and operational priority.
3. Assign ownership to the appropriate team and record handovers.
4. Monitor applicable TAT deadlines and identify approaching or overdue cases.
5. Support investigation updates and customer communication.
6. Reduce avoidable operational escalations caused by incorrect routing, unclear ownership or missed follow-up.
7. Preserve required fraud/security referrals and regulatory reviews; these must not be suppressed to improve an escalation metric.

## 4. Project objectives and success measures

The project will define measurable outcomes. It will not claim improvement until a reliable baseline and post-change data are available.

| Objective | Measure | Proposed calculation | Baseline / target |
|---|---|---|---|
| Improve classification consistency | Classification agreement rate | Quality-reviewed complaints whose category and priority agree with approved criteria ÷ complaints reviewed | To be baselined and approved |
| Improve first-time routing | First-time assignment rate | Complaints not reassigned after initial assignment during the agreed observation window ÷ complaints assigned | To be baselined and approved |
| Improve TAT performance | TAT attainment | Complaints reaching the applicable decision point within the applicable deadline ÷ complaints due in the period | To be baselined and approved by complaint type |
| Reduce aged work | Overdue open backlog | Count of open complaints past the applicable due date at the reporting cut-off | To be baselined; reduction target to be approved |
| Reduce avoidable escalation | Avoidable operational escalation rate | Complaints escalated for approved preventable operational reasons ÷ complaints received in the period | To be baselined and approved |
| Improve customer updates | Customer update compliance | Required updates sent within the approved communication window ÷ updates due | To be baselined and approved |
| Improve record quality | Record completeness | Sampled complaints containing all mandatory fields and required decision/audit data ÷ complaints sampled | To be baselined and approved |
| Maintain regulatory control | Applicable review/referral compliance | Eligible cases referred and decided within their applicable requirements ÷ eligible cases due | Compliance-approved measurement required |

**Measurement guardrail:** Mandatory Internal Ombudsman referrals, fraud/security referrals and other required escalations must be tracked separately from avoidable operational escalations. The objective is not to reduce all escalations indiscriminately.

## 5. Scope

### In scope

- Complaint registration and unique reference generation.
- Capture of customer, service, issue, channel and relevant transaction information under approved data-minimisation rules.
- Service category and subcategory classification.
- High, Medium or Low operational priority using bank-approved criteria.
- Agent confirmation or override, including a mandatory reason for overrides.
- Assignment to an approved team and accountable owner.
- Reassignment history and unassigned-work handling.
- Complaint status, investigation updates and next-action visibility.
- TAT rule selection, deadline display, ageing and alerts.
- Operational escalation to the appropriate team lead or operations manager.
- A separate referral path for suspected fraud or security-related complaints.
- Customer acknowledgement, status updates and final decision communication.
- Final disposition, authorised closure and audit history.
- Operational reporting on complaint volume, category, priority, assignment, ageing, TAT, reassignment and escalation reason.
- Support for applicable Internal Ombudsman review requirements, subject to entity and complaint eligibility.

### Out of scope

- Executing UPI/card/payment reversals, refunds, chargebacks or account adjustments.
- Replacing core banking, payment processing, fraud monitoring or case investigation systems.
- Making a substantive fraud determination.
- Replacing bank policy, Compliance or Legal interpretation.
- Designing the RBI Ombudsman's internal case-management system.
- Committing to a particular technology stack, production integration or deployment.
- Claiming actual reduction in TAT, escalation or backlog without measured results.

## 6. Key stakeholders

Customer; Customer Support Agent; Team Lead; Bank Manager; Product Manager; Operations Manager; Security/Fraud Team; Development Team; Business Analyst; Testing Team; Compliance/Grievance Redressal Officer; and, where applicable, Internal Ombudsman / Deputy Internal Ombudsman.

Detailed interests, responsibilities and engagement are documented in [02 – Stakeholder Analysis](02-stakeholder-analysis.md).

## 7. High-level solution approach

The proposed workflow is:

1. Customer submits a complaint through an enabled channel.
2. The system registers the complaint, records receipt time and generates a reference.
3. The system validates required information.
4. The system suggests a category and operational priority; an authorised agent confirms or corrects the suggestion.
5. The system recommends a team using approved routing rules; the accountable owner is recorded.
6. The applicable TAT rule is selected and the due date is visible.
7. The resolution team investigates and records updates.
8. The system monitors ageing and routes approaching/overdue cases for operational review.
9. Suspected fraud/security cases follow a specialist referral path.
10. The final disposition is recorded; eligible partially resolved or wholly rejected complaints follow the applicable Internal Ombudsman process.
11. The approved decision is communicated and an authorised function completes closure.

## 8. Main deliverables

| Deliverable | File |
|---|---|
| Project Charter | `docs/01-project-charter.md` |
| Stakeholder Analysis | `docs/02-stakeholder-analysis.md` |
| AS-IS / TO-BE Process Analysis | `docs/03-process-analysis.md` |
| Business Requirements Document | `docs/04-business-requirements-document.md` |
| Functional Requirements Document | `docs/05-functional-requirements-document.md` |
| User Stories and Acceptance Criteria | `docs/06-user-stories-and-acceptance-criteria.md` |
| Requirements Traceability Matrix | `docs/07-requirements-traceability-matrix.md` and companion CSV |
| Detailed Test Scenarios and Cases | `docs/08-test-scenarios-and-cases.md` |
| AS-IS / TO-BE workflow diagrams | `diagrams/` (PNG preview and editable draw.io source) |

## 9. Assumptions

- The reference context is an Indian digital bank; the target legal entity has not been selected.
- The bank will provide or approve its complaint taxonomy, priority rules, team mapping and escalation hierarchy.
- Applicable TATs differ by service, transaction type, network and regulatory instruction; no universal value is assumed.
- Customer identity is established by an approved bank process outside this product concept.
- Customer communication channels and templates are approved by the bank.
- Compliance/Legal determines the applicability of each regulatory requirement.
- Public information may be used for context, but no private customer-level records are assumed.

## 10. Dependencies and constraints

- Approved policy and complaint taxonomy.
- Approved High / Medium / Low priority criteria.
- Team ownership and escalation matrix.
- Compliance-approved TAT and regulatory-rule catalogue.
- Identity, access, privacy, audit and attachment-security standards.
- Confirmed systems of record, notification service and interface contracts.
- Baseline and post-implementation data to evaluate actual outcomes.

## 11. High-level risks

| Risk | Potential effect | Proposed response |
|---|---|---|
| Priority definitions are unclear | Inconsistent handling or overuse of High priority | Approve criteria and review override patterns |
| Team mapping is inaccurate | Reassignment and delay continue | Assign a business owner to the effective-dated routing matrix |
| TAT rules are incomplete | Incorrect due dates or missed obligations | Compliance-approved, effective-dated rule catalogue |
| Automation is treated as final authority | Incorrect classification or routing | Agent confirmation, override reason and audit history |
| Escalation reduction becomes a volume target | Required referrals could be discouraged | Separate avoidable operational escalation from mandatory review |
| Customer information is exposed | Privacy and trust impact | Data minimisation, access control and security testing |
| No reliable historical data is available | Improvement cannot be quantified | Establish a baseline before setting targets |

## 12. Governance and approvals

The document set is a portfolio design proposal. In a real engagement, the Product Manager/business owner would approve scope and priorities; Operations would approve process, category, priority and routing rules; Compliance/Legal would approve regulatory interpretation; Security would approve controls; and Development/QA would confirm feasibility and testability.

| Role | Approver / reviewer | Status |
|---|---|---|
| Product Manager / Business Owner | To be confirmed | Pending |
| Operations Manager | To be confirmed | Pending |
| Compliance / Grievance Redressal Officer | To be confirmed | Pending |
| Security Representative | To be confirmed | Pending |
| Development Lead | To be confirmed | Pending |
| Testing Lead | To be confirmed | Pending |

## 13. Project status and completion boundary

This portfolio package contains the business-analysis documentation and proposed process design listed in Section 8. It does not include a deployed banking application, live bank integrations, executed software tests, an actual bank complaint dataset or measured operational improvements. Those activities require a bank sponsor, approved data, implementation resources and formal sign-off.

---

**End of document**
