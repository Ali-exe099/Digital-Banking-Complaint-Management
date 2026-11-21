# Digital Banking Complaint Management
## User Stories and Given/When/Then Acceptance Criteria

| Document control | Details |
|---|---|
| Document ID | DB-CM-US-001 |
| Version | 1.0 |
| Status | Draft – for stakeholder validation |
| Parent documents | DB-CM-BRD-001 – Business Requirements Document, Version 1.0; DB-CM-FRD-001 – Functional Requirements Document, Version 1.0 |
| Project type | Product Business Analysis case study |
| Prepared by | Business Analyst (portfolio project) |
| Last updated | 20 November 2026 |

> **Document note:** These stories describe the proposed product concept for a generic Indian digital-banking context. They are not evidence of a named bank's production workflow. Role permissions, policy rules, integrations, thresholds and regulatory applicability remain subject to stakeholder confirmation. Acceptance criteria are intended to be testable; any value or rule left as configurable must be approved before implementation.

---

## 1. Purpose

This document converts the functional requirements in the FRD into backlog-ready user stories and testable Given/When/Then acceptance criteria. Each story includes traceability to the relevant FRD and BRD requirement IDs.

The stories cover complaint intake, classification, ownership, status tracking, TAT, escalation, customer communication, final disposition, access control, audit history and reporting.

## 2. User story format

Each story follows this format:

> **As a** [user or role], **I want** [capability], **so that** [business value].

Acceptance criteria use:

- **Given** – the starting condition or context.
- **When** – the action or event.
- **Then** – the expected system outcome.

## 3. Roles referenced

The roles below follow the FRD role model. Actual bank job titles, access scope and approval authority must be confirmed by the bank.

| Role | Main interaction with the proposed solution |
|---|---|
| Customer | Submits a complaint and receives permitted acknowledgement and updates. |
| Customer Support Agent | Reviews, classifies, assigns and updates complaints within authorised scope. |
| Team Lead | Reviews team workload and operational escalations. |
| Operations Manager | Reviews cross-team or higher-level operational escalations and operational performance. |
| Security / Fraud Team | Handles referrals involving suspected unauthorised activity or security incidents. |
| Compliance / Grievance Redressal Officer | Confirms policy, regulatory configuration and applicable review routes. |
| Internal Ombudsman / Deputy Internal Ombudsman | Records the independent internal review outcome for eligible cases, where applicable. |
| Designated Administrator | Maintains approved complaint and workflow configuration. |
| Bank Manager / authorised manager | Reviews management-level complaint information and dashboards. |

---

## 4. User stories and acceptance criteria

### US-01 – Submit a complaint through an approved channel

**User story**  
As a customer, I want to submit a complaint through a bank-approved channel, so that the bank can receive and manage my issue.

**Priority:** Must  
**FRD traceability:** FR-01, FR-02  
**BRD traceability:** BR-01, BR-03

**Acceptance criteria**

**AC-01.1 – Capture the originating channel**  
Given a complaint channel is enabled by the bank, when a complaint is received through that channel, then the system records the originating channel against the complaint.

**AC-01.2 – Capture complaint details**  
Given the complaint is submitted, when the system receives the complaint information, then it captures the customer identifier or approved reference, service type, complaint description and relevant transaction or service details when applicable.

**AC-01.3 – Do not assume unsupported channels**  
Given a channel is not enabled, when a complaint is submitted through that channel, then the system does not treat it as an accepted complaint through the configured intake process.

### US-02 – Validate complaint information before registration

**User story**  
As a customer support agent, I want the system to validate complaint information, so that incomplete or inconsistent records can be corrected before successful registration.

**Priority:** Must  
**FRD traceability:** FR-03, FR-04  
**BRD traceability:** BR-01, BR-03

**Acceptance criteria**

**AC-02.1 – Validate mandatory fields**  
Given a complaint type has configured mandatory fields, when the complaint is submitted for registration, then the system validates the submitted fields against the rules for that complaint type.

**AC-02.2 – Identify missing or invalid information**  
Given one or more mandatory fields are missing, invalid or inconsistent, when validation is performed, then the system identifies the affected fields and displays a message explaining what must be corrected or supplied.

**AC-02.3 – Prevent false registration success**  
Given mandatory validation has failed, when the customer or agent attempts to complete registration, then the system does not mark the complaint as successfully registered until the required information is supplied or an approved exception applies.

**AC-02.4 – Accept valid information**  
Given all applicable mandatory fields pass validation, when the complaint is submitted, then the system allows the registration process to continue.

### US-03 – Generate a complaint reference and registration confirmation

**User story**  
As a customer, I want to receive a unique complaint reference and confirmation, so that I can identify and follow up on my complaint.

**Priority:** Must  
**FRD traceability:** FR-05, FR-06  
**BRD traceability:** BR-02, BR-12

**Acceptance criteria**

**AC-03.1 – Generate a unique reference**  
Given a complaint has passed the applicable registration validation, when the complaint is successfully registered, then the system generates a unique complaint reference that is not reused for another complaint.

**AC-03.2 – Preserve receipt and registration timestamps**  
Given the complaint is successfully registered, when the system saves the complaint, then it records the bank receipt date/time and registration date/time separately where they differ.

**AC-03.3 – Display confirmation**  
Given registration is successful, when the registration process completes, then the system displays the complaint reference and registration confirmation to the submitting customer or originating channel.

### US-04 – Attach supporting documents

**User story**  
As a customer support agent, I want to associate permitted supporting documents with a complaint, so that the investigation team can review relevant evidence.

**Priority:** Should  
**FRD traceability:** FR-07  
**BRD traceability:** BR-03, BR-14

**Acceptance criteria**

**AC-04.1 – Associate a permitted attachment**  
Given an attachment meets the bank-approved file type, size, security and retention rules, when an authorised user adds it to a complaint, then the system associates the attachment with the complaint and records its required metadata.

**AC-04.2 – Apply attachment controls**  
Given an attachment does not meet an approved file type, size or security rule, when the user attempts to upload it, then the system prevents the attachment from being accepted and indicates that it does not meet the configured rule.

**AC-04.3 – Restrict attachment access**  
Given a user does not have permission to view the complaint evidence, when that user attempts to access the attachment, then the system denies access in accordance with the approved role and data-access rules.

### US-05 – Review potential duplicate complaints

**User story**  
As an authorised customer support agent, I want to see potential duplicate complaints, so that I can review possible matches without losing a separate customer issue.

**Priority:** Should  
**FRD traceability:** FR-08, FR-61  
**BRD traceability:** BR-17

**Acceptance criteria**

**AC-05.1 – Identify possible matches**  
Given duplicate indicators have been configured, when a new complaint is received, then the system compares it with existing complaints and presents potential matches to an authorised user for review.

**AC-05.2 – Do not automatically merge or close**  
Given one or more potential matches are found, when the system displays the possible duplicates, then it does not automatically merge, reject or close the new complaint.

**AC-05.3 – Retain the review decision**  
Given an authorised user reviews a potential match, when the user records whether the complaints are duplicates or separate issues, then the system retains the review decision and the reviewer information.

### US-06 – Review category and priority suggestions

**User story**  
As a customer support agent, I want the system to display a suggested complaint category and priority, so that I can classify the complaint consistently before final assignment.

**Priority:** Must  
**FRD traceability:** FR-09, FR-10, FR-11, FR-12  
**BRD traceability:** BR-04, BR-05, BR-06

**Acceptance criteria**

**AC-06.1 – Display approved category values**  
Given a complaint has a service type, when the agent opens the classification control, then the system displays the approved category and subcategory values applicable to that service type.

**AC-06.2 – Display a category suggestion**  
Given an approved classification method is configured, when the complaint is processed for classification, then the system generates or displays a category suggestion using that method.

**AC-06.3 – Suggest an operational priority**  
Given effective High, Medium and Low criteria have been approved and configured, when a complaint is assessed, then the system suggests an operational priority using those criteria.

**AC-06.4 – Present suggestions for confirmation**  
Given category and priority suggestions are available, when the complaint is ready for final assignment, then the system presents both suggestions to an authorised agent for confirmation unless a bank-approved channel-specific control applies.

**AC-06.5 – Keep the fields separate**  
Given a category, priority and team have been selected, when the complaint is saved, then the system stores category, operational priority and ownership as separate attributes.

### US-07 – Override a category or priority suggestion

**User story**  
As an authorised customer support agent, I want to correct an incorrect category or priority suggestion, so that the complaint is handled using an accountable human decision.

**Priority:** Must  
**FRD traceability:** FR-13, FR-14  
**BRD traceability:** BR-06, BR-13

**Acceptance criteria**

**AC-07.1 – Restrict override to authorised users**  
Given a user does not have permission to override classification, when that user attempts to change the suggested category or priority, then the system blocks the action.

**AC-07.2 – Require an override reason**  
Given an authorised agent changes a suggested category or priority, when the agent saves the override, then the system requires a reason before accepting the change.

**AC-07.3 – Retain suggestion and confirmed value**  
Given an override is saved, when the classification history is viewed by an authorised user, then the original suggestion, confirmed value, override reason, acting user and timestamp are available.

### US-08 – Route suspected fraud or security complaints

**User story**  
As a customer support agent, I want suspected unauthorised activity or security complaints to follow a specialist referral path, so that they are not left waiting only in the general complaint queue.

**Priority:** Must  
**FRD traceability:** FR-15, FR-40  
**BRD traceability:** BR-11; BRL-05

**Acceptance criteria**

**AC-08.1 – Trigger the specialist path**  
Given a complaint meets an approved suspected-unauthorised-activity or security-incident trigger, when the trigger is identified, then the system routes or refers the complaint to the designated fraud/security process.

**AC-08.2 – Retain referral details**  
Given a referral is created or transmitted, when the receiving process provides a referral reference, then the system stores that reference and the referral timestamp against the complaint.

**AC-08.3 – Preserve the product boundary**  
Given a complaint is referred to the fraud/security process, when the complaint-management system records the referral, then it does not represent the referral as a substantive fraud determination or replace the specialist investigation process.

### US-09 – Assign a complaint to a responsible team and owner

**User story**  
As a customer support agent, I want the system to suggest and record the responsible team and owner, so that every open complaint has clear accountability.

**Priority:** Must  
**FRD traceability:** FR-16, FR-17, FR-18  
**BRD traceability:** BR-07; BRL-03, BRL-06

**Acceptance criteria**

**AC-09.1 – Suggest a responsible team**  
Given an approved category-to-team mapping and applicable routing conditions exist, when the complaint is ready for assignment, then the system suggests a responsible team using the effective mapping and conditions.

**AC-09.2 – Confirm or change the proposed team**  
Given a team has been suggested, when an authorised user confirms or changes the proposed assignment, then the system accepts the action only within that user's permission scope and records the reason where the assignment is overridden.

**AC-09.3 – Record current ownership**  
Given the complaint is assigned, when the assignment is saved, then the system records the current responsible team, current owner, assignment timestamp and assignment status.

### US-10 – Reassign a complaint and retain ownership history

**User story**  
As an authorised team lead or agent, I want to reassign a complaint with a recorded reason, so that work can move to the appropriate team without losing accountability history.

**Priority:** Must  
**FRD traceability:** FR-19, FR-20, FR-21  
**BRD traceability:** BR-07, BR-09, BR-13

**Acceptance criteria**

**AC-10.1 – Require a reassignment reason**  
Given an authorised user reassigns a complaint, when the user submits the reassignment, then the system requires a reason or an approved reassignment code.

**AC-10.2 – Retain prior and new ownership**  
Given a reassignment is completed, when the complaint history is viewed, then the prior team, prior owner, new team, new owner, reason, acting user and timestamp are retained.

**AC-10.3 – Identify unassigned complaints**  
Given an open complaint has no valid current owner, when the system evaluates ownership, then it identifies the complaint and routes it to the configured unassigned-work queue for authorised allocation.

### US-11 – Track complaint status and investigation activity

**User story**  
As a customer support agent or authorised reviewer, I want to see and update complaint status and investigation activity, so that the handling progress and next action are clear.

**Priority:** Must  
**FRD traceability:** FR-22, FR-23, FR-24, FR-25, FR-26, FR-27  
**BRD traceability:** BR-09, BR-13, BR-14

**Acceptance criteria**

**AC-11.1 – Use approved operational statuses**  
Given the bank-approved status catalogue is configured, when an authorised user views or updates a complaint, then the system uses the controlled operational status values.

**AC-11.2 – Display case position**  
Given an authorised user opens a complaint, when the complaint details are displayed, then the system shows the current status, complaint age, current owner, responsible team, applicable due date and next action where available.

**AC-11.3 – Record investigation updates**  
Given an authorised user adds an investigation update, when the update is saved, then the system records the acting user, timestamp, update type and permitted notes.

**AC-11.4 – Support approved waiting statuses**  
Given the bank has approved waiting statuses, when a complaint is awaiting customer information or an external dependency, then the system allows the appropriate status and records the relevant reason or next action where required.

**AC-11.5 – Enforce permitted transitions**  
Given a status transition is not allowed for the current workflow state or user role, when the user attempts that transition, then the system blocks it.

**AC-11.6 – Retain status history**  
Given a complaint status changes, when the change is saved, then the previous status, new status, acting user, timestamp and reason are retained.

### US-12 – Apply the correct TAT rule to a complaint

**User story**  
As an operations manager, I want the applicable TAT rule to be selected and stored for each complaint, so that the complaint is measured against the correct service and policy timeline.

**Priority:** Must  
**FRD traceability:** FR-28, FR-29, FR-34  
**BRD traceability:** BR-08, BR-09, BR-18; BRL-07

**Acceptance criteria**

**AC-12.1 – Select the applicable rule**  
Given effective-dated TAT rules have been approved and configured, when a complaint is registered or reaches the configured TAT calculation point, then the system identifies the applicable rule using complaint type, service, channel and relevant regulatory or network conditions.

**AC-12.2 – Calculate the due date/time**  
Given an applicable TAT rule and approved starting timestamp are available, when the system calculates the complaint deadline, then it stores the due date/time using that rule.

**AC-12.3 – Retain the applied rule version**  
Given a TAT rule is later changed, when an authorised user reviews an existing complaint, then the system retains and displays the rule version applied to that complaint rather than silently recalculating its historical deadline under the new rule.

**AC-12.4 – Avoid a universal TAT**  
Given complaints have different service or regulatory conditions, when their deadlines are calculated, then the system applies the relevant configured rules rather than one generic deadline to every complaint.

### US-13 – Monitor complaint ageing and TAT deadlines

**User story**  
As a customer support agent or team lead, I want to see approaching and overdue complaint deadlines, so that I can take action before or after an applicable TAT is missed.

**Priority:** Must for FR-30, FR-31 and FR-32; Should for FR-33  
**FRD traceability:** FR-30, FR-31, FR-32, FR-33  
**BRD traceability:** BR-08, BR-09, BR-10; BRL-07, BRL-08

**Acceptance criteria**

**AC-13.1 – Display TAT position**  
Given a complaint has an applicable due date/time, when an authorised user views the complaint, then the system displays elapsed age, remaining time or overdue duration and the applicable TAT rule reference.

**AC-13.2 – Alert on approaching threshold**  
Given an approved approaching-deadline threshold is configured, when a complaint reaches that threshold, then the system identifies the complaint and notifies the configured owner or queue.

**AC-13.3 – Flag an overdue complaint**  
Given the applicable due date/time has passed, when the system evaluates the complaint, then it flags the complaint as overdue without automatically changing the underlying operational status.

**AC-13.4 – Apply pause or exclusion only when permitted**  
Given an approved policy or regulatory rule explicitly permits a TAT pause, resume or exclusion, when an authorised user applies that condition, then the system records the reason and relevant timestamps. Otherwise, the system does not apply an unapproved pause or exclusion.

### US-14 – Manage operational escalation

**User story**  
As a team lead or operations manager, I want complaints that meet approved operational escalation triggers to be brought to my attention, so that at-risk and unresolved cases receive management review.

**Priority:** Must  
**FRD traceability:** FR-35, FR-36, FR-37, FR-38, FR-39  
**BRD traceability:** BR-10, BR-13, BR-15, BR-16; BRL-08, BRL-09

**Acceptance criteria**

**AC-14.1 – Evaluate approved escalation triggers**  
Given approved operational escalation triggers are configured, when a complaint meets a trigger such as approaching or exceeded TAT, a defined ageing threshold or an authorised manual escalation, then the system identifies the complaint for operational escalation.

**AC-14.2 – Create an escalation record**  
Given an operational escalation trigger is met, when the escalation is created, then the system records the complaint reference, trigger, reason, timestamp, source status, current owner and receiving role or queue.

**AC-14.3 – Notify the responsible reviewer**  
Given an escalation is created, when the configured notification process runs, then the Team Lead or Operations Manager is notified and the complaint is made visible in the appropriate work queue.

**AC-14.4 – Record the review action**  
Given an authorised reviewer acts on an escalated complaint, when the reviewer records the action, then the system retains the decision, next owner and next review date.

**AC-14.5 – Keep escalation types separate**  
Given an operational escalation, fraud/security referral or mandatory Internal Ombudsman referral is recorded, when escalation reporting is produced, then each type is distinguishable and mandatory referrals are not counted as avoidable operational escalations.

### US-15 – Communicate complaint acknowledgement and updates

**User story**  
As a customer, I want to receive acknowledgement and relevant complaint updates through approved channels, so that I know the bank has received my complaint and can follow its progress.

**Priority:** Must  
**FRD traceability:** FR-41, FR-42, FR-43, FR-44, FR-45  
**BRD traceability:** BR-12, BR-13; BRL-15

**Acceptance criteria**

**AC-15.1 – Send acknowledgement**  
Given a complaint has been successfully registered and an approved communication channel is configured, when registration completes, then the system initiates an acknowledgement using the approved template and channel.

**AC-15.2 – Send approved status or information-request updates**  
Given a status update or request for additional information is due under the bank-approved communication rules, when the relevant event occurs, then the system supports initiation of the approved notification through the configured channel.

**AC-15.3 – Record communication details**  
Given a communication is initiated, when the communication service returns an outcome, then the system records the communication type, template/version, destination reference, initiation timestamp and delivery result when available.

**AC-15.4 – Restrict regulatory guidance**  
Given a user attempts to send customer-facing guidance about external redress, when the content is not approved by Compliance, then the system prevents the use of that unapproved content.

**AC-15.5 – Communicate the final decision using approved content**  
Given a final decision is ready for communication, when the communication is initiated, then the system uses the approved template and channel for the relevant complaint type.

### US-16 – Record final disposition and support applicable Internal Ombudsman review

**User story**  
As a compliance reviewer or authorised complaint-handling user, I want the final disposition and applicable independent review steps to be recorded separately from operational status, so that eligible complaints follow the required review and closure process.

**Priority:** Must, where applicable  
**FRD traceability:** FR-46, FR-47, FR-48, FR-49, FR-50, FR-51, FR-52, FR-53, FR-54, FR-68  
**BRD traceability:** BR-12, BR-13, BR-15; BRL-10 to BRL-14

**Acceptance criteria**

**AC-16.1 – Keep final disposition separate from operational status**  
Given a complaint has an operational status, when an authorised user records the final disposition, then the system stores the final disposition as a separate attribute and does not infer it only from the operational status.

**AC-16.2 – Support applicable decision categories**  
Given the relevant Internal Ombudsman Directions apply to the regulated entity and complaint, when the bank records its decision, then the system supports the applicable categories Fully Resolved, Partially Resolved and Wholly Rejected.

**AC-16.3 – Identify eligible complaints for referral**  
Given a complaint is Partially Resolved or Wholly Rejected and is within the applicable Internal Ombudsman purview, when the decision is recorded, then the system identifies the complaint and creates the required automatic referral task or referral record.

**AC-16.4 – Calculate the applicable referral timeline**  
Given the applicable regulatory rule and receipt timestamp are configured and confirmed by Compliance, when the system calculates the referral deadline, then it applies the relevant rule. For commercial banks and cases within the scope of the applicable 2026 Directions, this includes allowing at least 10 days for Internal Ombudsman review where an RBI, NPCI or card-network resolution timeline applies, and supporting referral within 20 days of receipt in other applicable cases.

**AC-16.5 – Record Internal Ombudsman review**  
Given an eligible complaint has been referred, when an authorised Internal Ombudsman / Deputy Internal Ombudsman user records the review, then the system retains the review outcome, decision date/time and required notes or reason.

**AC-16.6 – Enforce separation of duties**  
Given the applicable policy or Directions prohibit the handling touchpoint from closing the complaint, when a user from that touchpoint attempts the prohibited closure action, then the system blocks the action.

**AC-16.7 – Prevent closure before required review**  
Given a mandatory review or approval step remains incomplete, when an authorised user attempts final closure, then the system prevents closure until the required step is completed.

**AC-16.8 – Retain final decision and closure details**  
Given the final decision and required reviews are complete, when the complaint is closed through the authorised process, then the system retains the final decision, decision authority, decision timestamp, customer communication and closure timestamp.

**AC-16.9 – Monitor final-decision communication deadline**  
Given the relevant 2026 Directions apply to the commercial bank and complaint, when the system monitors the case, then it calculates and flags the applicable 30-day final-decision communication deadline from receipt, subject to the Directions and applicable exclusions.

**Applicability note:** The regulatory criteria above are conditional. They must be activated only after Compliance/Legal confirms the regulated entity, complaint type, purview, exceptions and the applicable current rule configuration. This story does not treat every overdue complaint as an Internal Ombudsman referral.

### US-17 – Maintain an auditable complaint history

**User story**  
As a compliance officer or authorised reviewer, I want complaint actions and changes to be traceable, so that the handling history can be reviewed when required.

**Priority:** Must  
**FRD traceability:** FR-55, FR-56  
**BRD traceability:** BR-13; BRL-16

**Acceptance criteria**

**AC-17.1 – Record auditable events**  
Given an auditable complaint action occurs, when the action is saved, then the system records the relevant event, including complaint creation, field changes, classification suggestions or overrides, assignments, status transitions, escalations, communications, decisions and closure.

**AC-17.2 – Record actor and change details**  
Given an auditable field change occurs, when the change is saved, then the system records the acting user or system process, action, timestamp and before/after values where applicable.

**AC-17.3 – Preserve history**  
Given a complaint record requires correction, when an authorised correction is made, then the system retains a traceable history rather than silently deleting the original complaint, decision or escalation record.

### US-18 – Enforce role-based access and sensitive-data restrictions

**User story**  
As a security administrator, I want users to access only the complaint records, fields and actions permitted by their role and scope, so that customer and transaction information remains protected.

**Priority:** Must  
**FRD traceability:** FR-57, FR-58, FR-67  
**BRD traceability:** BR-14, BR-18

**Acceptance criteria**

**AC-18.1 – Enforce role permissions**  
Given a user has an approved role and access scope, when the user opens a complaint or performs an action, then the system permits only the records and actions allowed for that role and scope.

**AC-18.2 – Restrict sensitive fields**  
Given a user is not authorised to view or update a sensitive customer or transaction field, when the user attempts to access or change that field, then the system masks or blocks the action according to the approved data-access rule.

**AC-18.3 – Prevent unauthorised configuration changes**  
Given a user is not a designated administrator with the required permission, when the user attempts to change category, priority, routing, TAT, escalation or regulatory configuration, then the system blocks the change.

### US-19 – View complaint operational reports

**User story**  
As an operations manager or authorised manager, I want to review complaint volumes and operational performance by agreed dimensions, so that I can identify backlogs, recurring issues and process bottlenecks.

**Priority:** Should  
**FRD traceability:** FR-59, FR-60  
**BRD traceability:** BR-16

**Acceptance criteria**

**AC-19.1 – Provide agreed reporting measures**  
Given the authorised user opens the operational reporting view, when the report is generated, then it provides the agreed measures for complaint volume, category, priority, owner/team, ageing, TAT, reassignment and escalation reason.

**AC-19.2 – Filter and group reports**  
Given a user has reporting permission, when the user selects an agreed dimension or reporting period, then the report filters or groups the results using the selected criteria.

**AC-19.3 – Distinguish escalation types**  
Given complaint records include operational, fraud/security and applicable Internal Ombudsman referrals, when escalation metrics are displayed, then these types remain distinguishable and mandatory referrals are not included in the avoidable operational escalation measure.

**AC-19.4 – Reconcile report data**  
Given a reporting period and filter criteria have been selected, when the report is produced, then the underlying complaint population and the report totals can be reconciled using the agreed reporting definitions.

### US-20 – Maintain approved complaint and workflow configuration

**User story**  
As a designated administrator, I want to maintain approved complaint categories, priority criteria, routing mappings, TAT and escalation rules, so that the product can reflect authorised policy changes without losing historical traceability.

**Priority:** Should for configuration maintenance; Must for configuration audit and access controls  
**FRD traceability:** FR-62, FR-63, FR-64, FR-65, FR-66, FR-67  
**BRD traceability:** BR-07, BR-08, BR-13, BR-14, BR-18; BRL-03, BRL-04, BRL-07, BRL-08, BRL-16

**Acceptance criteria**

**AC-20.1 – Maintain category and subcategory values**  
Given a designated administrator has the required permission, when the administrator adds or changes an approved complaint category or subcategory, then the system saves the configuration with its effective date and applicable approval record.

**AC-20.2 – Maintain priority criteria**  
Given priority definitions have been approved, when a designated administrator changes the High, Medium or Low criteria, then the system records the effective date and approval information.

**AC-20.3 – Maintain routing mappings**  
Given an approved category-to-team or team-to-role mapping is changed, when the designated administrator saves the change, then the system records the new mapping and effective date.

**AC-20.4 – Maintain TAT and escalation rules**  
Given a TAT or escalation rule change has been approved, when a designated administrator saves it, then the system records applicable service conditions, effective date and approval information.

**AC-20.5 – Preserve prior configuration**  
Given a configuration value is changed, when an authorised reviewer examines the configuration history, then the previous value and the identity of the approver and changer are available.

**AC-20.6 – Block unauthorised changes**  
Given a user lacks the required configuration permission, when the user attempts to change a business or regulatory rule, then the system blocks the change.

---

## 5. Cross-cutting non-functional acceptance considerations

The following checks relate to the FRD non-functional requirements (NFR-01 to NFR-10). They are not additional user stories; they apply across the relevant stories and will require detailed technical test cases once the architecture and operating requirements are confirmed.

| NFR ID | Quality attribute | Acceptance consideration | What remains to be agreed |
|---|---|---|---|
| NFR-01 | Security | Authenticated access and role-based permissions are verified, including unauthorised access attempts. | Identity controls, session rules and security standards. |
| NFR-02 | Privacy | Only necessary customer and transaction information is collected and displayed; masking and access controls are tested. | Data classification and masking rules. |
| NFR-03 | Auditability | Required user actions and changes are traceable through audit history. | Audit retention, access and protection standards. |
| NFR-04 | Performance | Registration, search, complaint view and reports are tested against approved response-time targets and workload. | Numeric response-time and load targets. |
| NFR-05 | Availability and recovery | Backup, restore and recovery tests demonstrate the approved service expectations. | Availability, RTO and RPO targets. |
| NFR-06 | Reliability | Failure-path tests confirm that registered complaints and their history are not silently lost and failed submissions/notifications have a recoverable outcome. | Retry, idempotency and recovery design. |
| NFR-07 | Usability | Agents and reviewers can identify status, owner, due date and next action through role-based task walkthroughs. | Usability test tasks and acceptance threshold. |
| NFR-08 | Accessibility | Customer and staff interfaces are assessed against the bank-approved accessibility and supported-device standards. | Applicable accessibility standard and device/browser list. |
| NFR-09 | Configurability | Approved categories, routing, priority and TAT rules can be maintained through controlled configuration. | Administrator workflow and approval model. |
| NFR-10 | Interoperability | Identified interfaces pass agreed integration contract and security tests. | Systems of record, interface contracts and integration standards. |

No numeric non-functional target is invented in this document. Targets remain open until agreed by the product owner, technical team and relevant control functions.

## 6. Story-to-requirement coverage summary

This summary maps the stories in this document to the functional requirements in the FRD and the business requirements in the BRD. A detailed requirement-to-test-case Requirements Traceability Matrix (RTM) is a separate deliverable.

| User story | FRD coverage | BRD coverage |
|---|---|---|
| US-01 Submit complaint | FR-01 to FR-02 | BR-01, BR-03 |
| US-02 Validate complaint | FR-03 to FR-04 | BR-01, BR-03 |
| US-03 Generate reference and confirmation | FR-05 to FR-06 | BR-02, BR-12 |
| US-04 Attach documents | FR-07 | BR-03, BR-14 |
| US-05 Review potential duplicates | FR-08, FR-61 | BR-17 |
| US-06 Review category and priority suggestions | FR-09 to FR-12 | BR-04 to BR-06 |
| US-07 Override classification | FR-13 to FR-14 | BR-06, BR-13 |
| US-08 Route fraud/security complaints | FR-15, FR-40 | BR-11 |
| US-09 Assign team and owner | FR-16 to FR-18 | BR-07 |
| US-10 Reassign and retain ownership history | FR-19 to FR-21 | BR-07, BR-09, BR-13 |
| US-11 Track status and investigation | FR-22 to FR-27 | BR-09, BR-13, BR-14 |
| US-12 Apply TAT rule | FR-28, FR-29, FR-34 | BR-08, BR-09, BR-18 |
| US-13 Monitor TAT | FR-30 to FR-33 | BR-08 to BR-10 |
| US-14 Manage operational escalation | FR-35 to FR-39 | BR-10, BR-13, BR-15, BR-16 |
| US-15 Communicate with customer | FR-41 to FR-45 | BR-12, BR-13 |
| US-16 Final disposition and Internal Ombudsman review | FR-46 to FR-54, FR-68 | BR-12, BR-13, BR-15 |
| US-17 Maintain audit history | FR-55 to FR-56 | BR-13 |
| US-18 Enforce access controls | FR-57 to FR-58, FR-67 | BR-14, BR-18 |
| US-19 View operational reports | FR-59 to FR-60 | BR-16 |
| US-20 Maintain configuration | FR-62 to FR-67 | BR-07, BR-08, BR-13, BR-14, BR-18 |

**Coverage check:** All FRD requirements FR-01 to FR-68 are referenced by at least one user story. Some requirements appear in more than one story where a cross-cutting control is relevant. This is a story-level coverage check, not formal test execution evidence.

## 7. Dependencies and open decisions

The following inputs are required before the stories can be treated as implementation-ready:

1. Confirm the regulated entity type and which regulatory directions apply to the intended product context.
2. Approve the complaint category and subcategory taxonomy.
3. Approve High, Medium and Low priority definitions, examples and override permissions.
4. Approve the category-to-team and team-to-role routing matrix.
5. Confirm the mandatory fields for each complaint type and channel.
6. Approve the duplicate indicators and human review procedure.
7. Confirm TAT start events, calendars, cut-offs, thresholds, exclusions and permitted pause/resume rules.
8. Confirm operational escalation triggers, recipients and review authority.
9. Confirm the fraud/security referral mechanism and ownership handoff.
10. Approve customer communication channels, templates, frequency and delivery handling.
11. Confirm Internal Ombudsman purview, exceptions, timing rules and separation-of-duty controls with Compliance/Legal.
12. Confirm role-based access, sensitive-field masking, audit retention and attachment security.
13. Confirm reporting definitions, source data and reconciliation rules.
14. Define numeric performance, availability, recovery and accessibility targets.
15. Confirm systems of record and interface contracts for any external integration.

## 8. Approval and sign-off

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
