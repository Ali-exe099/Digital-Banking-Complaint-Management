# Digital Banking Complaint Management
## Functional Requirements Document (FRD)

| Document control | Details |
|---|---|
| Document ID | DB-CM-FRD-001 |
| Version | 1.0 |
| Status | Draft – for stakeholder validation |
| Parent document | DB-CM-BRD-001 – Business Requirements Document, Version 1.0 |
| Project type | Product Business Analysis case study |
| Prepared by | Business Analyst (portfolio project) |
| Last updated | 20 November 2026 |

> **Document note:** This FRD translates the business requirements in the project BRD into proposed system behaviour. It describes a product concept for a generic Indian digital-banking context; it is not a specification of a named bank's existing platform. The requirements, role permissions, configuration, integrations and regulatory applicability require review by the relevant bank stakeholders before implementation.

---

## 1. Purpose

This document defines the functional behaviour expected from the proposed Digital Banking Complaint Management solution. It provides a basis for product design, development estimation, test planning and business acceptance.

The FRD is derived from the 18 business requirements (BR-01 to BR-18) and 16 business rules (BRL-01 to BRL-16) in the approved-for-review BRD draft. It does not replace the BRD. The BRD explains why the capability is needed; this document describes what the proposed system should do.

## 2. Product overview

The solution will maintain a traceable complaint record from intake through final decision and closure. It will support:

1. Complaint intake and registration.
2. Mandatory information validation and reference generation.
3. Service-category and operational-priority suggestions.
4. Agent confirmation and controlled override.
5. Team and owner assignment, including reassignment history.
6. Configurable TAT calculation and monitoring.
7. Complaint status, next-action and ageing visibility.
8. Operational escalation and a separate fraud/security referral path.
9. Customer acknowledgement and approved status/final-decision communication.
10. Applicable Internal Ombudsman referral support.
11. Audit history, role-based access and operational reporting.
12. Controlled maintenance of category, priority, routing and TAT rules.

The classification, priority, ownership, operational status and final disposition must be stored as separate attributes.

## 3. Scope and boundaries

### 3.1 In scope

- Receiving complaints through channels approved by the bank.
- Capturing complaint, customer, service and relevant transaction information, subject to access and privacy controls.
- Creating a unique complaint reference and recording the bank's receipt timestamp.
- Validating required fields and identifying potential duplicates for human review.
- Suggesting an approved category, priority and responsible team.
- Allowing authorised agents to confirm or override suggestions with a reason.
- Assigning and reassigning complaints while retaining history.
- Applying effective-dated TAT and escalation rules approved by the bank.
- Displaying status, age, due date, next action and ownership to authorised users.
- Sending approved acknowledgement, status and final-decision communications through configured channels.
- Routing suspected fraud/security cases to the designated specialist process.
- Supporting applicable Internal Ombudsman referral and decision tracking.
- Recording activity and decision history and producing the reports defined in the BRD.

### 3.2 Out of scope

- Executing payment reversals, refunds, chargebacks or account adjustments.
- Replacing core banking, UPI, card processing, fraud monitoring or investigation systems.
- Making a substantive fraud determination or independently deciding transaction liability.
- Providing legal or regulatory interpretation.
- Directly operating the RBI Complaint Management System or the RBI Ombudsman's case-management process.
- Defining a bank's final complaint policy, category taxonomy, priority thresholds or TAT values without business approval.
- Specifying a production architecture, vendor, API contract or named-bank integration.

## 4. User roles and access overview

The following is a proposed role model. The bank must confirm actual job roles, permissions and segregation-of-duty controls.

| Role | View | Create / update | Classify / override | Assign / reassign | Escalation / review | Configure rules | Reports |
|---|---|---|---|---|---|---|---|
| Customer | Own complaint status and permitted messages | Submit complaint and permitted additional information | No | No | No | No | No |
| Customer Support Agent | Complaints assigned to the agent or permitted queue | Register, update investigation notes and status within authority | Confirm suggestions; override with reason if authorised | Assign or reassign within granted scope | Raise operational escalation | No | Limited operational views |
| Team Lead | Team complaints and team-level history | Update permitted case information | Override only if authorised | Allocate within team scope | Review operational escalations | No | Team-level reports |
| Operations Manager | Operational complaints and queues within scope | Update permitted operational decisions | As authorised by policy | Approve or manage cross-team assignment as defined | Review higher-level operational escalations | No | Operational reports |
| Security / Fraud Team | Referred fraud/security complaints | Update specialist investigation status within its system boundary | Apply security-specific decisions in authorised process | Specialist ownership only | Use designated security escalation | No | Restricted specialist reports |
| Compliance / Grievance Redressal Officer | Complaints and records required for compliance review | Record permitted compliance review information | Approve policy-controlled outcomes as authorised | No general assignment unless authorised | Review regulatory routing and exceptions | Approve rule changes as designated | Compliance reports |
| Internal Ombudsman / Deputy Internal Ombudsman | Eligible referrals and supporting complaint history | Record review outcome and decision within authority | Record required final decision category | No routine operational assignment | Conduct independent internal review | No | Review-specific reports |
| Bank Manager | Management-level complaint information | No routine case editing unless specifically authorised | No routine override | No | View significant escalations | No | Management dashboards |
| Product Manager | Product-level operational information | No routine complaint editing | No | No | No case-level decision unless separately authorised | Product-level views |
| Business Analyst | Approved non-production or masked requirements/test data | No production complaint updates by default | No | No | No | No | Analysis views subject to access policy |
| Development / Testing Team | Approved test data and technical diagnostics | Test-environment updates only | Test-only | Test-only | Test-only | Test-environment configuration | Test reports |

**Access principle:** users must see and perform only the actions permitted by their role and assigned scope. Access to customer and transaction information must be minimised. A role listed in this table does not automatically receive production access.

## 5. Functional requirements

Each requirement has a unique ID and traces to one or more BRD requirements. Unless a requirement is marked conditional, it applies to the proposed solution within the agreed scope.

### 5.1 Complaint intake and registration

| ID | Functional requirement | Priority | Traceability |
|---|---|---|---|
| FR-01 | The system shall accept a complaint from a channel enabled by the bank and store the originating channel with the complaint record. | Must | BR-01 |
| FR-02 | The system shall capture the customer identifier or approved reference, service type, complaint description, receipt channel and relevant transaction or service details when applicable. | Must | BR-03 |
| FR-03 | The system shall validate mandatory fields against the configured complaint-type rules before accepting a complaint as registered. | Must | BR-01, BR-03 |
| FR-04 | The system shall identify missing, invalid or inconsistent information and display a field-level message that explains what must be corrected or supplied. | Must | BR-03 |
| FR-05 | When a complaint is successfully registered, the system shall generate a unique complaint reference and store the bank's receipt date/time and registration date/time separately where they differ. | Must | BR-02 |
| FR-06 | The system shall display the complaint reference and registration confirmation to the submitting customer or originating channel. | Must | BR-02, BR-12 |
| FR-07 | The system shall record supporting document metadata and associate permitted attachments with the complaint, subject to approved file type, size, malware-scanning and retention rules. | Should | BR-03, BR-14 |
| FR-08 | The system shall compare a new complaint against configured duplicate indicators and present possible matches to an authorised user for review. It shall not automatically merge, reject or close the new complaint. | Should | BR-17 |

**Proposed core complaint fields**

| Field | Description | Requirement / control |
|---|---|---|
| Complaint reference | Unique identifier for the complaint | System-generated; must not be reused |
| Customer reference | Bank-approved customer identifier or token | Access restricted; avoid displaying unnecessary personal data |
| Source channel | Channel through which the complaint was received | Required from an approved channel list |
| Date/time received | Time the bank received the complaint | Required for TAT and applicable regulatory timing |
| Date/time registered | Time the complaint record was created | System-generated |
| Service category / subcategory | Banking service and issue classification | Selected from the approved taxonomy |
| Complaint description | Customer's description of the issue | Required subject to channel-specific validation |
| Transaction reference | Relevant transaction identifier, where applicable | Conditional; format and validation depend on service |
| Transaction date / amount | Relevant transaction details, where applicable | Conditional and subject to data minimisation |
| Attachments | Evidence supplied with the complaint | Subject to security and retention policy |

### 5.2 Classification and priority

| ID | Functional requirement | Priority | Traceability |
|---|---|---|---|
| FR-09 | The system shall present the approved service-category and subcategory values applicable to the complaint's service type. | Must | BR-04, BRL-03 |
| FR-10 | The system shall generate or display a category suggestion using the classification method approved for the product. The method may be rule-based or another bank-approved mechanism; a specific model is not mandated by this FRD. | Must | BR-04, BR-06 |
| FR-11 | The system shall suggest an operational priority of High, Medium or Low using the effective criteria approved by the bank. | Must | BR-05, BRL-04 |
| FR-12 | The system shall display the suggested category and priority to the authorised agent for confirmation before the complaint proceeds to final assignment, unless the bank approves a different control for a specific channel. | Must | BR-05, BR-06 |
| FR-13 | The system shall allow an authorised agent to change the suggested category or priority and shall require a reason when an override is made. | Must | BR-06, BRL-06 |
| FR-14 | The system shall retain the original suggestion, confirmed value, override reason, user and timestamp for each classification change. | Must | BR-06, BR-13 |
| FR-15 | The system shall route a complaint flagged as suspected unauthorised activity or a security incident to the designated specialist path without waiting solely in the general complaint queue. | Must | BR-11, BRL-05 |

**Classification controls**

- Category answers: “What banking service or issue is involved?”
- Priority answers: “How urgently must the complaint be handled under approved criteria?”
- Ownership answers: “Which team or person is accountable for the next action?”
- Priority definitions and examples must be maintained by the bank. This FRD does not assign a fixed financial threshold or declare that a particular category is always High priority.
- Suspected fraud/security handling must follow the bank's specialist procedure. The complaint record may remain visible in the complaint-management solution, but the solution does not replace the specialist investigation platform.

### 5.3 Assignment and ownership

| ID | Functional requirement | Priority | Traceability |
|---|---|---|---|
| FR-16 | The system shall suggest a responsible team using the approved category-to-team mapping and any additional approved routing conditions. | Must | BR-07, BRL-03 |
| FR-17 | The system shall display the proposed team and allow an authorised user to confirm or change the assignment within their permission scope. | Must | BR-07, BRL-06 |
| FR-18 | The system shall record the current responsible team, current owner, assignment timestamp and assignment status for each open complaint. | Must | BR-07 |
| FR-19 | The system shall allow an authorised user to reassign a complaint and require a reason or approved reassignment code. | Must | BR-07, BRL-06 |
| FR-20 | The system shall retain the prior team, prior owner, new team, new owner, reason, user and timestamp for each reassignment. | Must | BR-07, BR-13 |
| FR-21 | The system shall identify complaints without a valid current owner or route them to a configured unassigned-work queue for authorised allocation. | Must | BR-07, BR-09 |

### 5.4 Complaint status and investigation tracking

| ID | Functional requirement | Priority | Traceability |
|---|---|---|---|
| FR-22 | The system shall maintain a controlled operational status for each complaint using the bank-approved status catalogue. | Must | BR-09 |
| FR-23 | The system shall display complaint age, current status, current owner, responsible team, applicable due date and next action to authorised users. | Must | BR-09 |
| FR-24 | The system shall record an investigation update with the user, timestamp, update type and permitted notes. | Must | BR-09, BR-13 |
| FR-25 | The system shall support a status indicating that additional information is awaited from the customer or an external dependency, where approved by the bank. | Should | BR-09, BR-12 |
| FR-26 | The system shall prevent a user from moving a complaint to a status transition that is not permitted by the configured workflow or the user's role. | Must | BR-09, BR-14 |
| FR-27 | The system shall retain prior status values and the user, timestamp and reason for each status change. | Must | BR-13 |

**Proposed operational statuses**

| Status | Meaning | Notes |
|---|---|---|
| New | Complaint received but not yet reviewed | Initial registered state |
| Under Validation | Mandatory information is being checked | May be used before assignment |
| Assigned | A responsible team/owner has been allocated | Ownership must be visible |
| In Progress | Investigation or action is underway | Investigation updates should be recorded |
| Awaiting Customer | Additional information is required from the customer | Communication should be recorded |
| Awaiting External Dependency | Action is pending with an external party or service provider | Reason and next review date should be recorded where available |
| Escalated | Complaint has been referred through an operational or approved review path | Escalation type must be separately identified |
| Pending Internal Review | Complaint is awaiting an applicable Internal Ombudsman review | Only for eligible cases and regulated entities within scope |
| Resolved | A resolution has been recorded | Not necessarily the same as final closure in every case |
| Closed | Authorised closure has been completed | Closure rules and permissions apply |

The final decision/disposition is a separate attribute and must not be inferred only from the operational status.

### 5.5 TAT configuration and monitoring

| ID | Functional requirement | Priority | Traceability |
|---|---|---|---|
| FR-28 | The system shall identify the applicable TAT rule using the approved complaint type, service, channel and relevant regulatory or network conditions. | Must | BR-08, BRL-07 |
| FR-29 | The system shall calculate and store the applicable due date/time using the selected effective-dated rule and the approved starting timestamp. | Must | BR-08, BR-09, BRL-07 |
| FR-30 | The system shall display elapsed age, remaining time or overdue duration and the applicable TAT rule reference to authorised users. | Must | BR-09 |
| FR-31 | The system shall identify complaints approaching a configured operational threshold and notify the configured owner or queue. | Must | BR-09, BR-10, BRL-08 |
| FR-32 | The system shall identify complaints beyond an applicable deadline and flag them as overdue without changing the complaint's underlying operational status automatically. | Must | BR-09, BR-10 |
| FR-33 | The system shall support approved pause, resume or exclusion conditions only where the applicable policy or regulatory rule explicitly permits them, retaining the reason and timestamps. | Should | BR-08, BRL-07 |
| FR-34 | The system shall retain the TAT rule version applied to a complaint so later rule changes do not silently rewrite the historical calculation. | Must | BR-08, BR-18 |

**TAT design constraints**

- TAT values, start events, calendar rules, exclusions and pause conditions are configuration decisions requiring business and Compliance approval.
- The product must not apply one generic TAT to all complaint types.
- A rule change must have an effective date and an authorised change history.
- The exact treatment of business days, holidays, cut-off times and clock pauses remains an open configuration item.
- The TAT engine must distinguish operational target timers from regulatory or network timelines.

### 5.6 Operational escalation and specialist referral

| ID | Functional requirement | Priority | Traceability |
|---|---|---|---|
| FR-35 | The system shall evaluate approved operational escalation triggers, such as approaching or exceeded TAT, defined ageing thresholds or an authorised manual escalation. | Must | BR-10, BRL-08 |
| FR-36 | When an operational escalation trigger is met, the system shall create an escalation record containing complaint reference, trigger, reason, timestamp, source status, current owner and receiving role/queue. | Must | BR-10, BR-13 |
| FR-37 | The system shall notify the configured Team Lead or Operations Manager and make the escalated complaint visible in the appropriate work queue. | Must | BR-10 |
| FR-38 | The system shall allow an authorised reviewer to record an escalation action, decision, next owner and next review date. | Must | BR-10, BR-13 |
| FR-39 | The system shall distinguish avoidable operational escalations from mandatory or policy-required specialist and Internal Ombudsman referrals in records and reports. | Must | BR-10, BR-15, BR-16, BRL-09 |
| FR-40 | The system shall create or transmit a referral to the designated fraud/security process when the approved trigger is met, and retain the referral reference and timestamp where the receiving process provides them. | Must | BR-11, BRL-05 |

### 5.7 Customer communication

| ID | Functional requirement | Priority | Traceability |
|---|---|---|---|
| FR-41 | The system shall generate or initiate an acknowledgement using a bank-approved template after successful registration, through the applicable configured channel. | Must | BR-12 |
| FR-42 | The system shall support status and information-request notifications at the points and intervals approved by the bank. | Must | BR-12 |
| FR-43 | The system shall generate or initiate communication of the final decision using an approved template and channel. | Must | BR-12, BRL-15 |
| FR-44 | The system shall record the communication type, template/version, destination reference, initiation timestamp and delivery result when available from the communication service. | Must | BR-12, BR-13 |
| FR-45 | The system shall prevent users from sending unapproved customer-facing regulatory guidance and shall use Compliance-approved content for any information about external redress options. | Must | BRL-15 |

The exact channel (such as SMS, email, in-app message or letter), message content, delivery retry behaviour and communication frequency are not prescribed by this FRD. They require bank approval.

### 5.8 Final decision, closure and Internal Ombudsman review

| ID | Functional requirement | Priority | Traceability |
|---|---|---|---|
| FR-46 | The system shall record the complaint's final disposition separately from its operational status. | Must | BR-15, BRL-10, BRL-11 |
| FR-47 | For applicable entities and cases, the system shall support the decision categories Fully Resolved, Partially Resolved and Wholly Rejected as required by the approved regulatory workflow. | Must, where applicable | BR-15, BRL-11 |
| FR-48 | For applicable entities and cases, the system shall identify partially resolved or wholly rejected complaints within Internal Ombudsman purview and create an automatic referral task or referral record. | Must, where applicable | BR-15, BRL-12 |
| FR-49 | The system shall calculate and monitor the applicable Internal Ombudsman referral deadline using the approved regulatory rule configuration and the correct receipt timestamp. | Must, where applicable | BR-15, BRL-12 |
| FR-50 | For commercial banks and complaints within the scope of the applicable 2026 Directions, the system shall calculate the referral date early enough to allow at least 10 days for Internal Ombudsman review where an RBI, NPCI or card-network resolution timeline applies; in other applicable cases, it shall support referral within 20 days of complaint receipt. | Must, where applicable | BR-15, BRL-12 |
| FR-51 | The system shall allow the authorised Internal Ombudsman / Deputy Internal Ombudsman user to record the review outcome, decision date/time and required notes or reason. | Must, where applicable | BR-15, BRL-12 |
| FR-52 | The system shall enforce the approved separation of duties so a touchpoint that handled a complaint cannot perform a closure action prohibited by the applicable directions. | Must, where applicable | BR-15, BRL-13 |
| FR-53 | The system shall prevent final closure where mandatory review or approval steps required by the configured workflow remain incomplete. | Must | BR-13, BR-15, BRL-13 |
| FR-54 | The system shall retain the final decision, decision authority, decision timestamp, customer communication and closure timestamp. | Must | BR-12, BR-13, BR-15 |
| FR-68 | For commercial banks and complaints within the scope of the applicable 2026 Directions, the system shall calculate and monitor the required final-decision communication deadline of 30 days from receipt, subject to the Directions and applicable exclusions. | Must, where applicable | BR-12, BR-15, BRL-12 |

**Regulatory configuration note:** Internal Ombudsman requirements must be activated only for a regulated entity and complaint type confirmed to be within the relevant Directions. The rules must be configured and approved by Compliance/Legal. This FRD does not treat every overdue complaint as an Internal Ombudsman referral. Operational escalation and Internal Ombudsman review are separate processes.

### 5.9 Audit, access control and reporting

| ID | Functional requirement | Priority | Traceability |
|---|---|---|---|
| FR-55 | The system shall maintain an audit history for complaint creation, field changes, classification suggestions and overrides, assignments, status transitions, escalations, communications, decisions and closure. | Must | BR-13, BRL-16 |
| FR-56 | The system shall record the acting user or system process, action, timestamp and before/after values for auditable changes, subject to the approved audit design. | Must | BR-13, BRL-16 |
| FR-57 | The system shall enforce role-based access to complaint records, customer/transaction fields and actions. | Must | BR-14 |
| FR-58 | The system shall restrict sensitive-field display and update actions according to approved data-access rules. | Must | BR-14 |
| FR-59 | The system shall provide operational views and reports for complaint volume, category, priority, owner/team, ageing, TAT, reassignment and escalation reason. | Should | BR-16 |
| FR-60 | The system shall allow authorised users to filter and group reports by agreed dimensions and reporting periods. | Should | BR-16 |
| FR-61 | The system shall identify potential duplicate complaints in a review view and retain the reviewer decision, including whether the complaints are separate issues. | Should | BR-17 |

### 5.10 Configuration and administration

| ID | Functional requirement | Priority | Traceability |
|---|---|---|---|
| FR-62 | The system shall allow designated administrators to maintain the approved complaint category and subcategory list. | Should | BR-18, BRL-03 |
| FR-63 | The system shall allow designated administrators to maintain priority definitions and criteria with effective dates and approval records. | Should | BR-18, BRL-04 |
| FR-64 | The system shall allow designated administrators to maintain category-to-team and team-to-role routing mappings with effective dates. | Should | BR-07, BR-18, BRL-03 |
| FR-65 | The system shall allow designated administrators to maintain TAT and escalation rules, including applicable service conditions, effective dates and approval records. | Should | BR-08, BR-10, BR-18, BRL-07, BRL-08 |
| FR-66 | The system shall preserve the previous configuration values and identify who approved and changed each rule. | Must | BR-13, BR-18, BRL-16 |
| FR-67 | The system shall prevent unauthorised users from changing category, priority, routing, TAT, escalation or regulatory configuration. | Must | BR-14, BR-18 |

---

## 6. Key business rules referenced by the FRD

The complete rule definitions remain in the BRD (BRL-01 to BRL-16). The following rules are particularly relevant to functional design and test coverage:

| BRL ID | Functional interpretation |
|---|---|
| BRL-01 | A registered complaint must have one unique reference. |
| BRL-02 | Category, priority and ownership are separate fields and must be separately maintained. |
| BRL-03 | Category taxonomy and routing mapping come from a bank-approved configuration. |
| BRL-04 | High/Medium/Low definitions are approved by the bank; they are not assumed to be regulatory categories. |
| BRL-05 | Suspected unauthorised activity follows the designated security/fraud route. |
| BRL-06 | Only authorised users may override suggestions; reasons and timestamps are recorded. |
| BRL-07 | TAT uses the approved service-specific rule, not a universal timer. |
| BRL-08 | Operational escalation thresholds and recipients are configurable and approved. |
| BRL-09 | Mandatory referrals are separate from avoidable operational escalation metrics. |
| BRL-10 | Operational status and regulatory final disposition are separate. |
| BRL-11 to BRL-14 | Applicable Internal Ombudsman categories, referral workflow, review timing and separation of duties must be supported only where the relevant Directions apply. |
| BRL-15 | Customer-facing external redress guidance must be Compliance-approved. |
| BRL-16 | Complaint, decision and escalation history must be retained and corrections traceable. |

## 7. Data requirements and field definitions

The following is a logical field inventory, not a physical database schema. Field names, formats, mandatory conditions, masking and retention must be confirmed during design.

| Data group | Proposed fields | Purpose / notes |
|---|---|---|
| Identification | Complaint reference, source-system reference, customer reference | Uniquely identify the complaint and approved customer reference |
| Intake | Source channel, received timestamp, registered timestamp, received-by reference | Preserve source and timing information |
| Complaint details | Service category, subcategory, issue description, transaction reference, transaction date, amount, attachment references | Provide information needed for investigation; conditional fields depend on service |
| Classification | Suggested category, confirmed category, suggested priority, confirmed priority, confidence/reason if applicable, override reason | Retain both suggestion and accountable confirmed value; no specific AI model is required |
| Ownership | Suggested team, current team, current owner, assignment date/time, reassignment history | Establish accountability and handover traceability |
| Timing | TAT rule ID/version, TAT start timestamp, due timestamp, elapsed duration, pause/resume entries where permitted | Support service-specific time monitoring |
| Status | Operational status, status reason, next action, next review date | Show the current handling stage and follow-up |
| Escalation | Escalation type, trigger, reason, source owner, receiving owner/queue, created timestamp, resolution action | Distinguish operational, fraud/security and regulatory referrals |
| Customer communication | Communication type, template version, channel, initiated timestamp, delivery result | Evidence acknowledgement and updates |
| Final decision | Final disposition, decision reason, decision authority, decision timestamp | Record outcome independently of operational status |
| Closure | Closure authority, closure timestamp, closure reason | Support authorised closure and reporting |
| Audit | Actor, action, timestamp, before/after value, reason | Trace changes and approvals |

### 7.1 Data handling requirements

- The system must collect only customer and transaction information necessary for complaint handling.
- Sensitive values must be masked or restricted according to bank policy.
- Attachments must be subject to approved file-security controls.
- The approved retention and deletion policy must be applied; this FRD does not invent a retention period.
- Audit records must be protected against unauthorised modification or deletion.

## 8. External systems and interfaces

The BRD does not identify a specific technology stack, vendor or interface. The FRD therefore defines logical interaction points only.

| Logical interface | Purpose | Details requiring confirmation |
|---|---|---|
| Approved complaint intake channels | Receive complaint details and source-channel metadata | Channel list, field mapping, authentication, error handling and retry rules |
| Customer identity/customer information source | Validate or reference customer identity | Authoritative source, permitted fields and access controls |
| Transaction/service information source | Retrieve or reference relevant transaction details where permitted | Systems of record, availability and access permissions |
| Notification service | Send acknowledgement, status and final-decision messages | Supported channels, templates, delivery receipts and retry policy |
| Fraud/security process | Refer suspected unauthorised activity or security incidents | Referral mechanism, response reference and ownership handoff |
| Reporting/analytics environment | Provide approved operational reporting data | Data refresh, masking, report access and reconciliation |

No API, field mapping, protocol or integration SLA is specified because those details are not present in the BRD and require architecture and system-owner input.

## 9. Non-functional requirements

The BRD includes security, privacy, traceability and reporting needs. The following requirements translate those needs into quality attributes. Numeric thresholds must be approved after technical and business review.

| ID | Non-functional requirement | Proposed verification |
|---|---|---|
| NFR-01 Security | The solution shall enforce authenticated access and role-based permissions for complaint records and actions. | Security test of role/permission matrix and unauthorised access attempts. |
| NFR-02 Privacy | The solution shall minimise collection and display of personal and transaction data and apply approved masking and access controls. | Privacy review and field-level access tests. |
| NFR-03 Auditability | Auditable actions and changes shall be retained with actor/process, timestamp and before/after values where applicable. | Audit trail review and tamper/access-control tests. |
| NFR-04 Performance | Complaint registration, search, case view and report response-time targets shall be defined by the product owner and technical team. | Performance testing against approved workload and response targets. |
| NFR-05 Availability and recovery | Availability, backup, recovery-time and recovery-point requirements shall be agreed based on the bank's service criticality and technology standards. | Resilience, backup and recovery testing. |
| NFR-06 Reliability | The system shall prevent silent loss of a registered complaint or its history and shall provide a recoverable outcome for failed submissions or notifications. | Failure-path, duplicate-submission and recovery tests. |
| NFR-07 Usability | Agents and reviewers shall be able to identify complaint status, owner, due date and next action without navigating unrelated screens. | Role-based usability testing and task walkthroughs. |
| NFR-08 Accessibility | Customer and staff interfaces shall follow the bank's approved accessibility and supported-device standards. | Accessibility and supported-browser/device tests. |
| NFR-09 Configurability | Categories, routing, priority and TAT rules shall be maintainable through approved configuration rather than requiring an ungoverned code change for each policy update. | Configuration and effective-date tests. |
| NFR-10 Interoperability | Interfaces shall follow the integration and security standards approved by the bank. | Interface contract and integration testing after systems are identified. |

## 10. Validation and acceptance scenarios

The following are high-level scenarios to guide test design. Detailed test cases and Given/When/Then acceptance criteria may be maintained in a separate test specification.

| Test ID | Scenario | Expected result |
|---|---|---|
| TC-01 | Customer submits a complete complaint through an enabled channel | Complaint is registered, a unique reference is generated and the receipt timestamp is retained. |
| TC-02 | Required complaint information is missing | The system identifies the missing fields and does not mark the complaint as successfully registered until validation is satisfied or an approved exception applies. |
| TC-03 | A complaint is received through two enabled channels | Potential duplicate is surfaced for authorised review; neither record is automatically deleted or closed. |
| TC-04 | Classification suggestion is displayed | Approved category and priority suggestions are available to the authorised agent for confirmation. |
| TC-05 | Agent overrides a suggested priority | Confirmed value, original suggestion, reason, actor and timestamp are retained. |
| TC-06 | A complaint is identified as suspected unauthorised activity | The designated fraud/security path is triggered without relying only on the general complaint queue. |
| TC-07 | Category-to-team mapping changes with an effective date | Complaints are routed using the valid mapping for the applicable effective period; historical records retain the rule used. |
| TC-08 | Complaint approaches its operational TAT threshold | Configured owner/queue receives an alert and the complaint is visible as approaching deadline. |
| TC-09 | Complaint exceeds an applicable deadline | The complaint is flagged as overdue and the configured operational escalation is created where the trigger is met. |
| TC-10 | Complaint is reassigned | New ownership is updated and the prior owner, new owner, reason and timestamp remain in history. |
| TC-11 | Customer status update is initiated | Approved communication is sent through the configured channel and the initiation/delivery outcome is recorded when available. |
| TC-12 | Applicable complaint is partially resolved or wholly rejected | The configured Internal Ombudsman referral logic identifies the eligible case and creates the required referral within the applicable configured timeline. |
| TC-13 | User without closure permission attempts to close a complaint | The action is blocked and the attempt is recorded according to the security/audit design. |
| TC-14 | User searches for a complaint outside their access scope | The system does not disclose restricted complaint or customer information. |
| TC-15 | An administrator updates a TAT or category rule | The change requires authorised approval, has an effective date and leaves a configuration audit record. |
| TC-16 | Manager opens the operational report | Report totals and dimensions reconcile to the underlying complaint records for the agreed reporting period and filter criteria. |
| TC-17 | An eligible complaint is subject to the applicable Internal Ombudsman review timeline | The system calculates the applicable referral and final-decision dates from the correct receipt timestamp and flags approaching or missed deadlines according to the approved rule configuration. |

## 11. Requirements traceability summary

This matrix maps the BRD business requirements to the functional requirements in this document. Detailed test-case-to-requirement traceability should be maintained in the separate RTM deliverable.

| BRD requirement | Functional requirements | Coverage |
|---|---|---|
| BR-01 Complaint intake and source channel | FR-01, FR-03 | Covered |
| BR-02 Reference and timestamps | FR-05, FR-06 | Covered |
| BR-03 Customer, service, issue and transaction information | FR-02, FR-03, FR-04, FR-07 | Covered |
| BR-04 Approved category classification | FR-09, FR-10 | Covered |
| BR-05 Operational priority | FR-11, FR-12 | Covered |
| BR-06 Human review and override | FR-12, FR-13, FR-14 | Covered |
| BR-07 Team ownership and reassignment history | FR-16 to FR-21 | Covered |
| BR-08 Applicable TAT rules | FR-28, FR-29, FR-33, FR-34 | Covered |
| BR-09 Status, age, next action and TAT visibility | FR-22 to FR-27, FR-30, FR-31, FR-32 | Covered |
| BR-10 Operational escalation | FR-35 to FR-39 | Covered |
| BR-11 Fraud/security specialist path | FR-15, FR-40 | Covered |
| BR-12 Customer communication | FR-06, FR-41 to FR-45, FR-54, FR-68 | Covered |
| BR-13 Audit history | FR-14, FR-20, FR-24, FR-27, FR-36, FR-38, FR-44, FR-54 to FR-56, FR-66 | Covered |
| BR-14 Role-based access | FR-57, FR-58, FR-67 | Covered |
| BR-15 Applicable Internal Ombudsman workflow | FR-46 to FR-54, FR-68 | Conditional on regulatory applicability |
| BR-16 Operational reporting | FR-39, FR-59, FR-60 | Covered |
| BR-17 Potential duplicate identification | FR-08, FR-61 | Covered |
| BR-18 Configurable rules and history | FR-34, FR-62 to FR-67 | Covered |

## 12. Assumptions, dependencies and open decisions

### 12.1 Assumptions carried forward from the BRD

- The solution is a generic product concept for an Indian digital-banking context, not a description of a named bank.
- Bank-approved complaint categories, priority definitions, routing mappings, TAT rules and escalation hierarchy will be provided.
- Customer identity will be established through an approved bank process; this system does not independently verify identity.
- The bank will provide approved communication channels and message templates.
- Compliance/Legal will determine the applicability of relevant regulatory directions to the entity and complaint type.
- No private bank complaint records are assumed to be available for the portfolio case study.

### 12.2 Dependencies

- Approved business policy and complaint taxonomy.
- Approved priority and routing matrix.
- Compliance-approved TAT and regulatory rule catalogue.
- Identity and access-management standards.
- Security and privacy requirements for customer and transaction data.
- Confirmed systems of record and integration owners.
- Notification service and approved message templates.
- Reporting definitions and data-quality standards.

### 12.3 Open decisions

1. Which bank entity type and regulatory category is the intended reference context?
2. Which intake channels are included in the first release?
3. What are the mandatory and conditional fields for each service category?
4. Which classification method is intended for category and priority suggestions?
5. Is agent confirmation required for all channels, or are there approved exceptions?
6. Which roles may override priority, category, ownership and final disposition?
7. What category-to-team mapping and reassignment approval rules apply?
8. What TAT starts, business calendars, holidays, exclusions and clock-pause conditions are approved?
9. What operational escalation thresholds and notification recipients apply?
10. Which communication channels, templates and retry rules are approved?
11. What data retention, masking and attachment-security standards apply?
12. Which interfaces and systems of record will be used?
13. Which specific complaint classes fall within the Internal Ombudsman's purview, and what exclusions apply?
14. What performance, availability, recovery and accessibility targets are required?

## 13. Approval and sign-off

| Role | Name | Review / approval | Date |
|---|---|---|---|
| Product Manager | To be confirmed | Pending | — |
| Operations Manager | To be confirmed | Pending | — |
| Compliance / Grievance Redressal Officer | To be confirmed | Pending | — |
| Security Representative | To be confirmed | Pending | — |
| Development Lead | To be confirmed | Pending | — |
| Testing Lead | To be confirmed | Pending | — |
| Business Owner | To be confirmed | Pending | — |

---

**End of document**
