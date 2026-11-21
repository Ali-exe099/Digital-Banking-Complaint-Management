# Digital Banking Complaint Management
## 07. Requirements Traceability Matrix (RTM)

| Document control | Details |
|---|---|
| Document ID | DB-CM-RTM-001 |
| Version | 1.0 |
| Status | Draft – for stakeholder and QA validation |
| Prepared as | Product Business Analysis case study |
| Source documents | BRD v1.0, FRD v1.0, User Stories and Acceptance Criteria v1.0 |
| Last updated | 20 November 2026 |

> **Traceability note:** This RTM is built from the project files currently in the repository. The BRD and FRD are drafts for stakeholder validation. Test IDs TC-01 to TC-17 are scenario definitions from the FRD; they are not evidence that testing has been executed or passed. Test-to-story mappings in this RTM are proposed trace links based on scenario intent and must be confirmed by the QA lead and business owner.

## 1. Purpose

The RTM connects business requirements to functional requirements, user stories, Given/When/Then acceptance criteria and the high-level validation scenarios already listed in the FRD. It is intended to help the Business Analyst, Product Manager, Development Team and Testing Team confirm that agreed scope is documented and that each requirement can be validated.

## 2. Traceability conventions

| Item | Meaning |
|---|---|
| BR-xx | Business requirement from the BRD |
| BRL-xx | Business rule from the BRD |
| FR-xx | Functional requirement from the FRD |
| NFR-xx | Non-functional requirement from the FRD |
| US-xx | User story from the User Stories document |
| AC-xx.x | Given/When/Then acceptance criterion under a user story |
| TC-xx | Existing high-level validation scenario in the FRD |

**Acceptance-criteria mapping limitation:** The User Stories document groups acceptance criteria under each story, while the source documents do not assign every individual AC to one individual FR. Accordingly, AC references below are shown at user-story level. They should not be interpreted as a one-to-one FR-to-AC allocation until detailed test design.

## 3. Coverage overview

| Traceability item | Source count | RTM result |
|---|---:|---|
| Business requirements | 18 | 18 mapped to FRD traceability and user-story coverage |
| Business rules | 16 | 16 reviewed for functional and story coverage; see Section 6 |
| Functional requirements | 68 | 68 linked to one or more user stories |
| User stories | 20 | 20 included in story-level traceability |
| Acceptance criteria | 82 | Referenced by story in BR/FR traceability; not individually test-executed |
| Existing high-level test scenarios | 17 | 17 mapped to relevant stories as a proposed crosswalk |

**Important:** Story-level linkage is not the same as complete test coverage. Section 7 identifies functional requirements that do not have a mapped existing test scenario.

## 4. Business requirement traceability

This table preserves the BRD requirement IDs and maps each business requirement to the FRD, user stories, story-level acceptance criteria and existing validation scenarios.

| BR ID | Business requirement (BRD wording) | FR IDs | US IDs | AC references (story-level) | Existing TC IDs | Coverage note |
|---|---|---|---|---|---|---|
| BR-01 | The solution shall support complaint intake from bank-approved channels and retain the original source of each complaint. | FR-01, FR-03 | US-01, US-02 | AC-01.1, AC-01.2, AC-01.3, AC-02.1, AC-02.2, AC-02.3, AC-02.4 | TC-01, TC-02 | Scenario mapped; confirm detailed test coverage |
| BR-02 | The solution shall create a unique complaint reference and record the date and time the bank received the complaint. | FR-05, FR-06 | US-03 | AC-03.1, AC-03.2, AC-03.3 | TC-01 | Scenario mapped; confirm detailed test coverage |
| BR-03 | The solution shall capture the information required to identify the customer, service, issue and relevant transaction, subject to approved data-access and privacy rules. | FR-02, FR-03, FR-04, FR-07 | US-01, US-02, US-04 | AC-01.1, AC-01.2, AC-01.3, AC-02.1, AC-02.2, AC-02.3, AC-02.4, AC-04.1, AC-04.2, AC-04.3 | TC-01, TC-02 | Scenario mapped; confirm detailed test coverage |
| BR-04 | The solution shall classify each complaint using an approved banking-service category taxonomy. | FR-09, FR-10 | US-06 | AC-06.1, AC-06.2, AC-06.3, AC-06.4, AC-06.5 | TC-04 | Scenario mapped; confirm detailed test coverage |
| BR-05 | The solution shall support Low, Medium and High operational priority based on criteria approved by the bank. | FR-11, FR-12 | US-06 | AC-06.1, AC-06.2, AC-06.3, AC-06.4, AC-06.5 | TC-04 | Scenario mapped; confirm detailed test coverage |
| BR-06 | The solution shall allow authorised staff to review and override a suggested category or priority, recording the reason for the change. | FR-10, FR-12, FR-13, FR-14 | US-06, US-07 | AC-06.1, AC-06.2, AC-06.3, AC-06.4, AC-06.5, AC-07.1, AC-07.2, AC-07.3 | TC-04, TC-05 | Scenario mapped; confirm detailed test coverage |
| BR-07 | The solution shall assign each complaint to a responsible team and record the current owner and any reassignment history. | FR-16, FR-17, FR-18, FR-19, FR-20, FR-21, FR-64 | US-09, US-10, US-20 | AC-09.1, AC-09.2, AC-09.3, AC-10.1, AC-10.2, AC-10.3, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-10, TC-15 | Scenario mapped; confirm detailed test coverage |
| BR-08 | The solution shall apply the approved TAT rule relevant to the complaint type, service and applicable regulatory or network requirement. | FR-28, FR-29, FR-33, FR-34, FR-65 | US-12, US-13, US-20 | AC-12.1, AC-12.2, AC-12.3, AC-12.4, AC-13.1, AC-13.2, AC-13.3, AC-13.4, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-08, TC-09, TC-15 | Scenario mapped; confirm detailed test coverage |
| BR-09 | The solution shall show complaint status, age, next action and TAT position to authorised users. | FR-21, FR-22, FR-23, FR-24, FR-25, FR-26, FR-29, FR-30, FR-31, FR-32 | US-10, US-11, US-12, US-13 | AC-10.1, AC-10.2, AC-10.3, AC-11.1, AC-11.2, AC-11.3, AC-11.4, AC-11.5, AC-11.6, AC-12.1, AC-12.2, AC-12.3, AC-12.4, AC-13.1, AC-13.2, AC-13.3, AC-13.4 | TC-08, TC-09, TC-10 | Scenario mapped; confirm detailed test coverage |
| BR-10 | The solution shall support operational escalation to the defined management level when an approved trigger is met. | FR-31, FR-32, FR-35, FR-36, FR-37, FR-38, FR-39, FR-65 | US-13, US-14 | AC-13.1, AC-13.2, AC-13.3, AC-13.4, AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5 | TC-08, TC-09 | Scenario mapped; confirm detailed test coverage |
| BR-11 | The solution shall provide a separate referral path for suspected fraud or security-related complaints. | FR-15, FR-40 | US-08 | AC-08.1, AC-08.2, AC-08.3 | TC-06 | Scenario mapped; confirm detailed test coverage |
| BR-12 | The solution shall support customer acknowledgement and status or final-decision communications through approved channels. | FR-06, FR-25, FR-41, FR-42, FR-43, FR-44, FR-54, FR-68 | US-03, US-15, US-16 | AC-03.1, AC-03.2, AC-03.3, AC-15.1, AC-15.2, AC-15.3, AC-15.4, AC-15.5, AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-01, TC-11, TC-12, TC-13, TC-17 | Scenario mapped; confirm detailed test coverage |
| BR-13 | The solution shall record complaint actions, ownership changes, classification changes, decisions, communications and timestamps in an audit history. | FR-14, FR-20, FR-24, FR-27, FR-36, FR-38, FR-44, FR-53, FR-54, FR-55, FR-56, FR-66 | US-07, US-10, US-11, US-14, US-15, US-16, US-17, US-20 | AC-07.1, AC-07.2, AC-07.3, AC-10.1, AC-10.2, AC-10.3, AC-11.1, AC-11.2, AC-11.3, AC-11.4, AC-11.5, AC-11.6, AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5, AC-15.1, AC-15.2, AC-15.3, AC-15.4, AC-15.5, AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9, AC-17.1, AC-17.2, AC-17.3, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-05, TC-07, TC-09, TC-10, TC-11, TC-12, TC-13, TC-15, TC-17 | Scenario mapped; confirm detailed test coverage |
| BR-14 | The solution shall provide role-based access so users can view or update complaints only within their approved responsibilities. | FR-07, FR-26, FR-57, FR-58, FR-67 | US-04, US-11, US-18, US-20 | AC-04.1, AC-04.2, AC-04.3, AC-11.1, AC-11.2, AC-11.3, AC-11.4, AC-11.5, AC-11.6, AC-18.1, AC-18.2, AC-18.3, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-13, TC-14, TC-15 | Scenario mapped; confirm detailed test coverage |
| BR-15 | The solution shall support the applicable Internal Ombudsman review and auto-escalation process for regulated entities and complaints within the relevant RBI directions. | FR-39, FR-46, FR-47, FR-48, FR-49, FR-50, FR-51, FR-52, FR-53, FR-54, FR-68 | US-14, US-16 | AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5, AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-09, TC-12, TC-13, TC-17 | Scenario mapped; confirm detailed test coverage |
| BR-16 | The solution shall provide operational reports covering complaint volume, category, priority, ownership, ageing, TAT performance, reassignment and escalation reason. | FR-39, FR-59, FR-60 | US-14, US-19 | AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5, AC-19.1, AC-19.2, AC-19.3, AC-19.4 | TC-09, TC-16 | Scenario mapped; confirm detailed test coverage |
| BR-17 | The solution should identify potential duplicate complaints for authorised review without automatically merging or closing them. | FR-08, FR-61 | US-05 | AC-05.1, AC-05.2, AC-05.3 | TC-03 | Scenario mapped; confirm detailed test coverage |
| BR-18 | The solution should retain configurable category, priority, ownership and TAT rules with effective dates and authorised change history. | FR-34, FR-62, FR-63, FR-64, FR-65, FR-66, FR-67 | US-12, US-18, US-20 | AC-12.1, AC-12.2, AC-12.3, AC-12.4, AC-18.1, AC-18.2, AC-18.3, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-13, TC-14, TC-15 | Scenario mapped; confirm detailed test coverage |

## 5. Functional requirement traceability

Each FR below is mapped using the BRD references recorded in the FRD and the story references recorded in the User Stories document. Test IDs are associated by the story-level test crosswalk in Section 8.

| FR ID | Functional requirement summary (FRD) | Parent BR / BRL | User story | AC references (story-level) | Existing TC IDs | Test linkage |
|---|---|---|---|---|---|---|
| FR-01 | The system shall accept a complaint from a channel enabled by the bank and store the originating channel with the complaint record. | BR-01 | US-01 | AC-01.1, AC-01.2, AC-01.3 | TC-01 | Mapped via story; verify scenario assertions |
| FR-02 | The system shall capture the customer identifier or approved reference, service type, complaint description, receipt channel and relevant transaction or service details when applicable. | BR-03 | US-01 | AC-01.1, AC-01.2, AC-01.3 | TC-01 | Mapped via story; verify scenario assertions |
| FR-03 | The system shall validate mandatory fields against the configured complaint-type rules before accepting a complaint as registered. | BR-01, BR-03 | US-02 | AC-02.1, AC-02.2, AC-02.3, AC-02.4 | TC-01, TC-02 | Mapped via story; verify scenario assertions |
| FR-04 | The system shall identify missing, invalid or inconsistent information and display a field-level message that explains what must be corrected or supplied. | BR-03 | US-02 | AC-02.1, AC-02.2, AC-02.3, AC-02.4 | TC-01, TC-02 | Mapped via story; verify scenario assertions |
| FR-05 | When a complaint is successfully registered, the system shall generate a unique complaint reference and store the bank's receipt date/time and registration date/time separately where they differ. | BR-02 | US-03 | AC-03.1, AC-03.2, AC-03.3 | TC-01 | Mapped via story; verify scenario assertions |
| FR-06 | The system shall display the complaint reference and registration confirmation to the submitting customer or originating channel. | BR-02, BR-12 | US-03 | AC-03.1, AC-03.2, AC-03.3 | TC-01 | Mapped via story; verify scenario assertions |
| FR-07 | The system shall record supporting document metadata and associate permitted attachments with the complaint, subject to approved file type, size, malware-scanning and retention rules. | BR-03, BR-14 | US-04 | AC-04.1, AC-04.2, AC-04.3 | — | **Gap:** no existing TC mapped |
| FR-08 | The system shall compare a new complaint against configured duplicate indicators and present possible matches to an authorised user for review. It shall not automatically merge, reject or close the new complaint. | BR-17 | US-05 | AC-05.1, AC-05.2, AC-05.3 | TC-03 | Mapped via story; verify scenario assertions |
| FR-09 | The system shall present the approved service-category and subcategory values applicable to the complaint's service type. | BR-04, BRL-03 | US-06 | AC-06.1, AC-06.2, AC-06.3, AC-06.4, AC-06.5 | TC-04 | Mapped via story; verify scenario assertions |
| FR-10 | The system shall generate or display a category suggestion using the classification method approved for the product. The method may be rule-based or another bank-approved mechanism; a specific model is not mandated by this FRD. | BR-04, BR-06 | US-06 | AC-06.1, AC-06.2, AC-06.3, AC-06.4, AC-06.5 | TC-04 | Mapped via story; verify scenario assertions |
| FR-11 | The system shall suggest an operational priority of High, Medium or Low using the effective criteria approved by the bank. | BR-05, BRL-04 | US-06 | AC-06.1, AC-06.2, AC-06.3, AC-06.4, AC-06.5 | TC-04 | Mapped via story; verify scenario assertions |
| FR-12 | The system shall display the suggested category and priority to the authorised agent for confirmation before the complaint proceeds to final assignment, unless the bank approves a different control for a specific channel. | BR-05, BR-06 | US-06 | AC-06.1, AC-06.2, AC-06.3, AC-06.4, AC-06.5 | TC-04 | Mapped via story; verify scenario assertions |
| FR-13 | The system shall allow an authorised agent to change the suggested category or priority and shall require a reason when an override is made. | BR-06, BRL-06 | US-07 | AC-07.1, AC-07.2, AC-07.3 | TC-05 | Mapped via story; verify scenario assertions |
| FR-14 | The system shall retain the original suggestion, confirmed value, override reason, user and timestamp for each classification change. | BR-06, BR-13 | US-07 | AC-07.1, AC-07.2, AC-07.3 | TC-05 | Mapped via story; verify scenario assertions |
| FR-15 | The system shall route a complaint flagged as suspected unauthorised activity or a security incident to the designated specialist path without waiting solely in the general complaint queue. | BR-11, BRL-05 | US-08 | AC-08.1, AC-08.2, AC-08.3 | TC-06 | Mapped via story; verify scenario assertions |
| FR-16 | The system shall suggest a responsible team using the approved category-to-team mapping and any additional approved routing conditions. | BR-07, BRL-03 | US-09 | AC-09.1, AC-09.2, AC-09.3 | TC-07 | Mapped via story; verify scenario assertions |
| FR-17 | The system shall display the proposed team and allow an authorised user to confirm or change the assignment within their permission scope. | BR-07, BRL-06 | US-09 | AC-09.1, AC-09.2, AC-09.3 | TC-07 | Mapped via story; verify scenario assertions |
| FR-18 | The system shall record the current responsible team, current owner, assignment timestamp and assignment status for each open complaint. | BR-07 | US-09 | AC-09.1, AC-09.2, AC-09.3 | TC-07 | Mapped via story; verify scenario assertions |
| FR-19 | The system shall allow an authorised user to reassign a complaint and require a reason or approved reassignment code. | BR-07, BRL-06 | US-10 | AC-10.1, AC-10.2, AC-10.3 | TC-10 | Mapped via story; verify scenario assertions |
| FR-20 | The system shall retain the prior team, prior owner, new team, new owner, reason, user and timestamp for each reassignment. | BR-07, BR-13 | US-10 | AC-10.1, AC-10.2, AC-10.3 | TC-10 | Mapped via story; verify scenario assertions |
| FR-21 | The system shall identify complaints without a valid current owner or route them to a configured unassigned-work queue for authorised allocation. | BR-07, BR-09 | US-10 | AC-10.1, AC-10.2, AC-10.3 | TC-10 | Mapped via story; verify scenario assertions |
| FR-22 | The system shall maintain a controlled operational status for each complaint using the bank-approved status catalogue. | BR-09 | US-11 | AC-11.1, AC-11.2, AC-11.3, AC-11.4, AC-11.5, AC-11.6 | — | **Gap:** no existing TC mapped |
| FR-23 | The system shall display complaint age, current status, current owner, responsible team, applicable due date and next action to authorised users. | BR-09 | US-11 | AC-11.1, AC-11.2, AC-11.3, AC-11.4, AC-11.5, AC-11.6 | — | **Gap:** no existing TC mapped |
| FR-24 | The system shall record an investigation update with the user, timestamp, update type and permitted notes. | BR-09, BR-13 | US-11 | AC-11.1, AC-11.2, AC-11.3, AC-11.4, AC-11.5, AC-11.6 | — | **Gap:** no existing TC mapped |
| FR-25 | The system shall support a status indicating that additional information is awaited from the customer or an external dependency, where approved by the bank. | BR-09, BR-12 | US-11 | AC-11.1, AC-11.2, AC-11.3, AC-11.4, AC-11.5, AC-11.6 | — | **Gap:** no existing TC mapped |
| FR-26 | The system shall prevent a user from moving a complaint to a status transition that is not permitted by the configured workflow or the user's role. | BR-09, BR-14 | US-11 | AC-11.1, AC-11.2, AC-11.3, AC-11.4, AC-11.5, AC-11.6 | — | **Gap:** no existing TC mapped |
| FR-27 | The system shall retain prior status values and the user, timestamp and reason for each status change. | BR-13 | US-11 | AC-11.1, AC-11.2, AC-11.3, AC-11.4, AC-11.5, AC-11.6 | — | **Gap:** no existing TC mapped |
| FR-28 | The system shall identify the applicable TAT rule using the approved complaint type, service, channel and relevant regulatory or network conditions. | BR-08, BRL-07 | US-12 | AC-12.1, AC-12.2, AC-12.3, AC-12.4 | — | **Gap:** no existing TC mapped |
| FR-29 | The system shall calculate and store the applicable due date/time using the selected effective-dated rule and the approved starting timestamp. | BR-08, BR-09, BRL-07 | US-12 | AC-12.1, AC-12.2, AC-12.3, AC-12.4 | — | **Gap:** no existing TC mapped |
| FR-30 | The system shall display elapsed age, remaining time or overdue duration and the applicable TAT rule reference to authorised users. | BR-09 | US-13 | AC-13.1, AC-13.2, AC-13.3, AC-13.4 | TC-08, TC-09 | Mapped via story; verify scenario assertions |
| FR-31 | The system shall identify complaints approaching a configured operational threshold and notify the configured owner or queue. | BR-09, BR-10, BRL-08 | US-13 | AC-13.1, AC-13.2, AC-13.3, AC-13.4 | TC-08, TC-09 | Mapped via story; verify scenario assertions |
| FR-32 | The system shall identify complaints beyond an applicable deadline and flag them as overdue without changing the complaint's underlying operational status automatically. | BR-09, BR-10 | US-13 | AC-13.1, AC-13.2, AC-13.3, AC-13.4 | TC-08, TC-09 | Mapped via story; verify scenario assertions |
| FR-33 | The system shall support approved pause, resume or exclusion conditions only where the applicable policy or regulatory rule explicitly permits them, retaining the reason and timestamps. | BR-08, BRL-07 | US-13 | AC-13.1, AC-13.2, AC-13.3, AC-13.4 | TC-08, TC-09 | Mapped via story; verify scenario assertions |
| FR-34 | The system shall retain the TAT rule version applied to a complaint so later rule changes do not silently rewrite the historical calculation. | BR-08, BR-18 | US-12 | AC-12.1, AC-12.2, AC-12.3, AC-12.4 | — | **Gap:** no existing TC mapped |
| FR-35 | The system shall evaluate approved operational escalation triggers, such as approaching or exceeded TAT, defined ageing thresholds or an authorised manual escalation. | BR-10, BRL-08 | US-14 | AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5 | TC-09 | Mapped via story; verify scenario assertions |
| FR-36 | When an operational escalation trigger is met, the system shall create an escalation record containing complaint reference, trigger, reason, timestamp, source status, current owner and receiving role/queue. | BR-10, BR-13 | US-14 | AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5 | TC-09 | Mapped via story; verify scenario assertions |
| FR-37 | The system shall notify the configured Team Lead or Operations Manager and make the escalated complaint visible in the appropriate work queue. | BR-10 | US-14 | AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5 | TC-09 | Mapped via story; verify scenario assertions |
| FR-38 | The system shall allow an authorised reviewer to record an escalation action, decision, next owner and next review date. | BR-10, BR-13 | US-14 | AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5 | TC-09 | Mapped via story; verify scenario assertions |
| FR-39 | The system shall distinguish avoidable operational escalations from mandatory or policy-required specialist and Internal Ombudsman referrals in records and reports. | BR-10, BR-15, BR-16, BRL-09 | US-14 | AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5 | TC-09 | Mapped via story; verify scenario assertions |
| FR-40 | The system shall create or transmit a referral to the designated fraud/security process when the approved trigger is met, and retain the referral reference and timestamp where the receiving process provides them. | BR-11, BRL-05 | US-08 | AC-08.1, AC-08.2, AC-08.3 | TC-06 | Mapped via story; verify scenario assertions |
| FR-41 | The system shall generate or initiate an acknowledgement using a bank-approved template after successful registration, through the applicable configured channel. | BR-12 | US-15 | AC-15.1, AC-15.2, AC-15.3, AC-15.4, AC-15.5 | TC-11 | Mapped via story; verify scenario assertions |
| FR-42 | The system shall support status and information-request notifications at the points and intervals approved by the bank. | BR-12 | US-15 | AC-15.1, AC-15.2, AC-15.3, AC-15.4, AC-15.5 | TC-11 | Mapped via story; verify scenario assertions |
| FR-43 | The system shall generate or initiate communication of the final decision using an approved template and channel. | BR-12, BRL-15 | US-15 | AC-15.1, AC-15.2, AC-15.3, AC-15.4, AC-15.5 | TC-11 | Mapped via story; verify scenario assertions |
| FR-44 | The system shall record the communication type, template/version, destination reference, initiation timestamp and delivery result when available from the communication service. | BR-12, BR-13 | US-15 | AC-15.1, AC-15.2, AC-15.3, AC-15.4, AC-15.5 | TC-11 | Mapped via story; verify scenario assertions |
| FR-45 | The system shall prevent users from sending unapproved customer-facing regulatory guidance and shall use Compliance-approved content for any information about external redress options. | BRL-15 | US-15 | AC-15.1, AC-15.2, AC-15.3, AC-15.4, AC-15.5 | TC-11 | Mapped via story; verify scenario assertions |
| FR-46 | The system shall record the complaint's final disposition separately from its operational status. | BR-15, BRL-10, BRL-11 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 | Mapped via story; verify scenario assertions |
| FR-47 | For applicable entities and cases, the system shall support the decision categories Fully Resolved, Partially Resolved and Wholly Rejected as required by the approved regulatory workflow. | BR-15, BRL-11 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 | Mapped via story; verify scenario assertions |
| FR-48 | For applicable entities and cases, the system shall identify partially resolved or wholly rejected complaints within Internal Ombudsman purview and create an automatic referral task or referral record. | BR-15, BRL-12 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 | Mapped via story; verify scenario assertions |
| FR-49 | The system shall calculate and monitor the applicable Internal Ombudsman referral deadline using the approved regulatory rule configuration and the correct receipt timestamp. | BR-15, BRL-12 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 | Mapped via story; verify scenario assertions |
| FR-50 | For commercial banks and complaints within the scope of the applicable 2026 Directions, the system shall calculate the referral date early enough to allow at least 10 days for Internal Ombudsman review where an RBI, NPCI or card-network resolution timeline applies; in other applicable cases, it shall support referral within 20 days of complaint receipt. | BR-15, BRL-12 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 | Mapped via story; verify scenario assertions |
| FR-51 | The system shall allow the authorised Internal Ombudsman / Deputy Internal Ombudsman user to record the review outcome, decision date/time and required notes or reason. | BR-15, BRL-12 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 | Mapped via story; verify scenario assertions |
| FR-52 | The system shall enforce the approved separation of duties so a touchpoint that handled a complaint cannot perform a closure action prohibited by the applicable directions. | BR-15, BRL-13 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 | Mapped via story; verify scenario assertions |
| FR-53 | The system shall prevent final closure where mandatory review or approval steps required by the configured workflow remain incomplete. | BR-13, BR-15, BRL-13 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 | Mapped via story; verify scenario assertions |
| FR-54 | The system shall retain the final decision, decision authority, decision timestamp, customer communication and closure timestamp. | BR-12, BR-13, BR-15 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 | Mapped via story; verify scenario assertions |
| FR-55 | The system shall maintain an audit history for complaint creation, field changes, classification suggestions and overrides, assignments, status transitions, escalations, communications, decisions and closure. | BR-13, BRL-16 | US-17 | AC-17.1, AC-17.2, AC-17.3 | — | **Gap:** no existing TC mapped |
| FR-56 | The system shall record the acting user or system process, action, timestamp and before/after values for auditable changes, subject to the approved audit design. | BR-13, BRL-16 | US-17 | AC-17.1, AC-17.2, AC-17.3 | — | **Gap:** no existing TC mapped |
| FR-57 | The system shall enforce role-based access to complaint records, customer/transaction fields and actions. | BR-14 | US-18 | AC-18.1, AC-18.2, AC-18.3 | TC-13, TC-14 | Mapped via story; verify scenario assertions |
| FR-58 | The system shall restrict sensitive-field display and update actions according to approved data-access rules. | BR-14 | US-18 | AC-18.1, AC-18.2, AC-18.3 | TC-13, TC-14 | Mapped via story; verify scenario assertions |
| FR-59 | The system shall provide operational views and reports for complaint volume, category, priority, owner/team, ageing, TAT, reassignment and escalation reason. | BR-16 | US-19 | AC-19.1, AC-19.2, AC-19.3, AC-19.4 | TC-16 | Mapped via story; verify scenario assertions |
| FR-60 | The system shall allow authorised users to filter and group reports by agreed dimensions and reporting periods. | BR-16 | US-19 | AC-19.1, AC-19.2, AC-19.3, AC-19.4 | TC-16 | Mapped via story; verify scenario assertions |
| FR-61 | The system shall identify potential duplicate complaints in a review view and retain the reviewer decision, including whether the complaints are separate issues. | BR-17 | US-05 | AC-05.1, AC-05.2, AC-05.3 | TC-03 | Mapped via story; verify scenario assertions |
| FR-62 | The system shall allow designated administrators to maintain the approved complaint category and subcategory list. | BR-18, BRL-03 | US-20 | AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-15 | Mapped via story; verify scenario assertions |
| FR-63 | The system shall allow designated administrators to maintain priority definitions and criteria with effective dates and approval records. | BR-18, BRL-04 | US-20 | AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-15 | Mapped via story; verify scenario assertions |
| FR-64 | The system shall allow designated administrators to maintain category-to-team and team-to-role routing mappings with effective dates. | BR-07, BR-18, BRL-03 | US-20 | AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-15 | Mapped via story; verify scenario assertions |
| FR-65 | The system shall allow designated administrators to maintain TAT and escalation rules, including applicable service conditions, effective dates and approval records. | BR-08, BR-10, BR-18, BRL-07, BRL-08 | US-20 | AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-15 | Mapped via story; verify scenario assertions |
| FR-66 | The system shall preserve the previous configuration values and identify who approved and changed each rule. | BR-13, BR-18, BRL-16 | US-20 | AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-15 | Mapped via story; verify scenario assertions |
| FR-67 | The system shall prevent unauthorised users from changing category, priority, routing, TAT, escalation or regulatory configuration. | BR-14, BR-18 | US-18, US-20 | AC-18.1, AC-18.2, AC-18.3, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-13, TC-14, TC-15 | Mapped via story; verify scenario assertions |
| FR-68 | For commercial banks and complaints within the scope of the applicable 2026 Directions, the system shall calculate and monitor the required final-decision communication deadline of 30 days from receipt, subject to the Directions and applicable exclusions. | BR-12, BR-15, BRL-12 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 | Mapped via story; verify scenario assertions |

## 6. Business rule traceability

Business rules constrain how the solution behaves. These mappings are derived from the BRL references attached to FRD requirements and the BRL references in user-story traceability.

| Rule ID | Business rule (BRD) | FR IDs referencing rule | User stories | AC references (story-level) | Existing TC IDs |
|---|---|---|---|---|---|
| BRL-01 | Every accepted complaint must have a unique complaint reference. | — | — | — | — |
| BRL-02 | Complaint category identifies the service or issue; operational priority determines urgency; ownership identifies the accountable team or person. These are separate attributes. | — | — | — | — |
| BRL-03 | The category list and category-to-team mapping must be approved and maintained by the bank's business owner. | FR-09, FR-16, FR-62, FR-64 | US-06, US-09, US-20 | AC-06.1, AC-06.2, AC-06.3, AC-06.4, AC-06.5, AC-09.1, AC-09.2, AC-09.3, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-04, TC-07, TC-15 |
| BRL-04 | Priority definitions and examples must be approved by Operations, Risk and Security as appropriate. The proposed labels are High, Medium and Low; they are not presented as RBI-defined categories. | FR-11, FR-63 | US-06, US-20 | AC-06.1, AC-06.2, AC-06.3, AC-06.4, AC-06.5, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-04, TC-07, TC-15 |
| BRL-05 | A suspected unauthorised transaction or security incident must follow the bank's designated fraud/security response process. It must not wait solely in a general complaint queue. | FR-15, FR-40 | US-08 | AC-08.1, AC-08.2, AC-08.3 | TC-06 |
| BRL-06 | An authorised agent may override a suggested category, priority or team assignment only within the permissions granted to that role. The reason and timestamp must be recorded. | FR-13, FR-17, FR-19 | US-07, US-09, US-10 | AC-07.1, AC-07.2, AC-07.3, AC-09.1, AC-09.2, AC-09.3, AC-10.1, AC-10.2, AC-10.3 | TC-05, TC-07, TC-10 |
| BRL-07 | TAT must be calculated from an approved rule table that accounts for the complaint type and applicable RBI, NPCI, card-network and bank requirements. A single generic TAT must not be applied to all complaints. | FR-28, FR-29, FR-33, FR-65 | US-12, US-13, US-20 | AC-12.1, AC-12.2, AC-12.3, AC-12.4, AC-13.1, AC-13.2, AC-13.3, AC-13.4, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-08, TC-09, TC-15 |
| BRL-08 | Operational escalation thresholds and recipients must be configurable and approved by the business owner. Thresholds are not fixed in this BRD. | FR-31, FR-35, FR-65 | US-13, US-14, US-20 | AC-13.1, AC-13.2, AC-13.3, AC-13.4, AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-08, TC-09, TC-15 |
| BRL-09 | Operational escalation must be measured separately from mandatory Internal Ombudsman referral. A reduction in operational escalations must never be achieved by suppressing a required review. | FR-39 | US-14 | AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5 | TC-09 |
| BRL-10 | The operational complaint status must be separate from the final decision/disposition recorded for applicable regulatory review. | FR-46 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 |
| BRL-11 | For commercial banks covered by the RBI Commercial Banks – Internal Ombudsman Directions, 2026, the applicable Complaint Management System must support the required decision categories of Fully Resolved, Partially Resolved and Wholly Rejected before the relevant Internal Ombudsman referral, subject to the Directions and their stated exceptions. | FR-46, FR-47 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 |
| BRL-12 | For commercial banks covered by those Directions, partially resolved or wholly rejected complaints within the Internal Ombudsman's purview must be auto-escalated to the Internal Ombudsman / Deputy Internal Ombudsman within the applicable timeline. Where RBI, NPCI or card-network rules prescribe a resolution timeline, the referral must be sufficiently in advance to allow at least 10 days for Internal Ombudsman review; in other applicable cases, referral is required within 20 days of receipt. The final decision must be communicated within the period specified in the Directions. | FR-48, FR-49, FR-50, FR-51, FR-68 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 |
| BRL-13 | For commercial banks covered by those Directions, a complaint must not be closed by the same branch, unit or other touchpoint that handled it; the required senior-level review and separation of responsibility must be supported. | FR-52, FR-53 | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 |
| BRL-14 | The Internal Ombudsman workflow is an internal review of eligible complaints already examined by the bank. It is not a direct customer-submission channel to the Internal Ombudsman. | — | US-16 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | TC-12, TC-13, TC-17 |
| BRL-15 | Any customer-facing guidance about approaching the RBI Ombudsman must reflect the applicable Reserve Bank – Integrated Ombudsman Scheme, 2026 and be reviewed by Compliance before release. | FR-43, FR-45 | US-15 | AC-15.1, AC-15.2, AC-15.3, AC-15.4, AC-15.5 | TC-11 |
| BRL-16 | The system must preserve the complaint history and must not silently delete a complaint, its decision or its escalation record. Corrections must be traceable. | FR-55, FR-56, FR-66 | US-17, US-20 | AC-17.1, AC-17.2, AC-17.3, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | TC-07, TC-15 |

## 7. Test coverage matrix and gaps

### 7.1 Existing FRD validation scenarios

The following are the 17 scenario definitions already present in the FRD. The RTM proposes the user-story links shown here; QA must confirm or amend them when detailed test cases are prepared.

| TC ID | Existing scenario (FRD) | Proposed US mapping | FR IDs via stories | BR IDs via stories | AC references (story-level) | Execution status |
|---|---|---|---|---|---|---|
| TC-01 | Customer submits a complete complaint through an enabled channel | US-01, US-02, US-03 | FR-01, FR-02, FR-03, FR-04, FR-05, FR-06 | BR-01, BR-02, BR-03, BR-12 | AC-01.1, AC-01.2, AC-01.3, AC-02.1, AC-02.2, AC-02.3, AC-02.4, AC-03.1, AC-03.2, AC-03.3 | Not executed / evidence not supplied |
| TC-02 | Required complaint information is missing | US-02 | FR-03, FR-04 | BR-01, BR-03 | AC-02.1, AC-02.2, AC-02.3, AC-02.4 | Not executed / evidence not supplied |
| TC-03 | A complaint is received through two enabled channels | US-05 | FR-08, FR-61 | BR-17 | AC-05.1, AC-05.2, AC-05.3 | Not executed / evidence not supplied |
| TC-04 | Classification suggestion is displayed | US-06 | FR-09, FR-10, FR-11, FR-12 | BR-04, BR-05, BR-06 | AC-06.1, AC-06.2, AC-06.3, AC-06.4, AC-06.5 | Not executed / evidence not supplied |
| TC-05 | Agent overrides a suggested priority | US-07 | FR-13, FR-14 | BR-06, BR-13 | AC-07.1, AC-07.2, AC-07.3 | Not executed / evidence not supplied |
| TC-06 | A complaint is identified as suspected unauthorised activity | US-08 | FR-15, FR-40 | BR-11 | AC-08.1, AC-08.2, AC-08.3 | Not executed / evidence not supplied |
| TC-07 | Category-to-team mapping changes with an effective date | US-09, US-20 | FR-16, FR-17, FR-18, FR-62, FR-63, FR-64, FR-65, FR-66, FR-67 | BR-07, BR-08, BR-13, BR-14, BR-18 | AC-09.1, AC-09.2, AC-09.3, AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | Not executed / evidence not supplied |
| TC-08 | Complaint approaches its operational TAT threshold | US-13 | FR-30, FR-31, FR-32, FR-33 | BR-08, BR-09, BR-10 | AC-13.1, AC-13.2, AC-13.3, AC-13.4 | Not executed / evidence not supplied |
| TC-09 | Complaint exceeds an applicable deadline | US-13, US-14 | FR-30, FR-31, FR-32, FR-33, FR-35, FR-36, FR-37, FR-38, FR-39 | BR-08, BR-09, BR-10, BR-13, BR-15, BR-16 | AC-13.1, AC-13.2, AC-13.3, AC-13.4, AC-14.1, AC-14.2, AC-14.3, AC-14.4, AC-14.5 | Not executed / evidence not supplied |
| TC-10 | Complaint is reassigned | US-10 | FR-19, FR-20, FR-21 | BR-07, BR-09, BR-13 | AC-10.1, AC-10.2, AC-10.3 | Not executed / evidence not supplied |
| TC-11 | Customer status update is initiated | US-15 | FR-41, FR-42, FR-43, FR-44, FR-45 | BR-12, BR-13 | AC-15.1, AC-15.2, AC-15.3, AC-15.4, AC-15.5 | Not executed / evidence not supplied |
| TC-12 | Applicable complaint is partially resolved or wholly rejected | US-16 | FR-46, FR-47, FR-48, FR-49, FR-50, FR-51, FR-52, FR-53, FR-54, FR-68 | BR-12, BR-13, BR-15 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | Not executed / evidence not supplied |
| TC-13 | User without closure permission attempts to close a complaint | US-16, US-18 | FR-46, FR-47, FR-48, FR-49, FR-50, FR-51, FR-52, FR-53, FR-54, FR-57, FR-58, FR-67, FR-68 | BR-12, BR-13, BR-14, BR-15, BR-18 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9, AC-18.1, AC-18.2, AC-18.3 | Not executed / evidence not supplied |
| TC-14 | User searches for a complaint outside their access scope | US-18 | FR-57, FR-58, FR-67 | BR-14, BR-18 | AC-18.1, AC-18.2, AC-18.3 | Not executed / evidence not supplied |
| TC-15 | An administrator updates a TAT or category rule | US-20 | FR-62, FR-63, FR-64, FR-65, FR-66, FR-67 | BR-07, BR-08, BR-13, BR-14, BR-18 | AC-20.1, AC-20.2, AC-20.3, AC-20.4, AC-20.5, AC-20.6 | Not executed / evidence not supplied |
| TC-16 | Manager opens the operational report | US-19 | FR-59, FR-60 | BR-16 | AC-19.1, AC-19.2, AC-19.3, AC-19.4 | Not executed / evidence not supplied |
| TC-17 | An eligible complaint is subject to the applicable Internal Ombudsman review timeline | US-16 | FR-46, FR-47, FR-48, FR-49, FR-50, FR-51, FR-52, FR-53, FR-54, FR-68 | BR-12, BR-13, BR-15 | AC-16.1, AC-16.2, AC-16.3, AC-16.4, AC-16.5, AC-16.6, AC-16.7, AC-16.8, AC-16.9 | Not executed / evidence not supplied |

### 7.2 Functional requirements without a mapped existing test scenario

The proposed story-level crosswalk maps 56 of 68 FRs to at least one existing high-level test scenario. The following 12 FRs have no mapped scenario in TC-01 to TC-17:

| Gap reference | FR IDs | Related user story | Missing validation focus | Suggested test-design action |
|---|---|---|---|---|
| G-01 | FR-07 | US-04 | Attachment metadata, permitted file handling, security scanning and access restrictions. | Add positive, invalid-file, malware-scan failure, size-limit and unauthorised-access cases. |
| G-02 | FR-22, FR-23, FR-24, FR-25, FR-26, FR-27 | US-11 | Status catalogue, status/owner/age/next-action view, investigation updates, awaiting states, permitted transitions and status history. | Add a lifecycle suite covering valid/invalid transitions, investigation notes, waiting states and full status history. |
| G-03 | FR-28, FR-29, FR-34 | US-12 | Selecting the effective TAT rule, calculating the due date and retaining the rule version. | Add calculation tests for service/channel conditions, start timestamps, effective dates and historical rule version. |
| G-04 | FR-55, FR-56 | US-17 | Comprehensive audit event coverage, actor/process, timestamps and before/after values. | Add an end-to-end audit test across create, update, override, assignment, status, escalation, communication, decision and closure events. |

**Interpretation:** A requirement appearing in a user story does not prove that it is covered by an executable test. The gaps above are test-design gaps in the current high-level scenario list, not necessarily missing requirements.

### 7.3 Additional scenario areas to consider

| Proposed test area (not yet an assigned TC ID) | Related requirements | Reason to add |
|---|---|---|
| Attachment security and retention | FR-07; NFR-02, NFR-06 | Current test list has no attachment-specific scenario. |
| Complaint status lifecycle and investigation updates | FR-22 to FR-27 | Status transitions and history are not explicitly exercised by an existing scenario. |
| TAT rule selection, due-date calculation and versioning | FR-28, FR-29, FR-34 | Existing scenarios focus on monitoring/escalation, not the calculation and historical rule selection. |
| Complete audit history | FR-55, FR-56; BRL-16 | Existing scenarios test selected audit events but no single scenario validates the full audit scope. |
| Regulatory communication and review outcome | FR-43, FR-45, FR-51, FR-54, FR-68 | Current scenarios cover referral timing and closure restriction, but do not separately validate review outcome capture and all final communications. |
| Non-functional validation | NFR-01 to NFR-10 | Performance, recovery, accessibility, usability and interface requirements need dedicated quality test plans. |

## 8. Non-functional requirement traceability

NFRs are cross-cutting quality constraints. They are not all expressed as standalone user stories. The following links are suggested from the FRD definitions and existing story coverage; the listed TCs may provide only partial evidence.

| NFR ID | Quality attribute | Related FR / design area | Related stories | AC references | Existing TCs | Coverage assessment |
|---|---|---|---|---|---|---|
| NFR-01 | Security | FR-57, FR-58, FR-67 | US-18 | AC-18.1 to AC-18.3 | TC-13, TC-14, TC-15 | Partial; security/permission testing needs a full role-action matrix. |
| NFR-02 | Privacy | FR-02, FR-07, FR-58 | US-01, US-04, US-18 | AC-01.2, AC-04.1 to AC-04.3, AC-18.2 | TC-14 | Partial; add collection minimisation, masking and attachment-data tests. |
| NFR-03 | Auditability | FR-14, FR-20, FR-24, FR-27, FR-36, FR-38, FR-44, FR-54 to FR-56, FR-66 | US-07, US-10, US-11, US-14, US-15, US-16, US-17, US-20 | AC-07.3, AC-10.3, AC-11.6, AC-14.2, AC-15.3, AC-16.8, AC-17.1 to AC-17.3, AC-20.5 | TC-05, TC-09, TC-10, TC-11, TC-13, TC-15 | Partial; no single end-to-end audit scenario. |
| NFR-04 | Performance | To be confirmed after workload and response-time targets are approved | — | Cross-cutting; no numeric AC target in current documents | — | Gap; define response-time, throughput and load targets before test design. |
| NFR-05 | Availability and recovery | To be confirmed against service criticality and architecture | — | Cross-cutting; no numeric AC target in current documents | — | Gap; define availability, backup, RTO and RPO requirements. |
| NFR-06 | Reliability | FR-03, FR-05, FR-06, FR-41 to FR-44, FR-55, FR-56 | US-02, US-03, US-15, US-17 | AC-02.3, AC-03.1 to AC-03.3, AC-15.1 to AC-15.3, AC-17.1 to AC-17.3 | TC-01, TC-02, TC-11 | Partial; add failed submission, duplicate retry and notification recovery tests. |
| NFR-07 | Usability | FR-23, FR-30, FR-31 | US-11, US-13 | AC-11.1, AC-13.1, AC-13.2 | TC-08 | Gap for usability validation; add role-based task walkthroughs. |
| NFR-08 | Accessibility | Interface requirements to be confirmed against bank standard | — | Cross-cutting; no story-level AC in current set | — | Gap; identify applicable accessibility standard and supported devices. |
| NFR-09 | Configurability | FR-62 to FR-67 | US-20 | AC-20.1 to AC-20.6 | TC-07, TC-15 | Partial; test each configuration domain and effective-date history. |
| NFR-10 | Interoperability | FR-01, FR-40 to FR-44; logical interfaces in FRD Section 8 | US-01, US-08, US-15 | AC-01.1 to AC-01.3, AC-08.1 to AC-08.2, AC-15.1 to AC-15.3 | TC-01, TC-06, TC-11 | Partial; interface contracts and integration tests are pending identification of systems. |

## 9. Business objective and KPI traceability

The BRD records eight business objectives (BO-01 to BO-08) and eight proposed measures. The mapping below is an RTM interpretation of which measures provide evidence for each objective. Targets and baselines remain unapproved and must not be presented as achieved results.

| Objective ID | BRD objective | Related measure(s) | Linked BRs | KPI adequacy note |
|---|---|---|---|---|
| BO-01 | Standardise complaint capture and registration | Record completeness; complaint-volume reporting | BR-01, BR-02, BR-03 | Record completeness is a defined BRD measure; intake volume is available as a reporting dimension. |
| BO-02 | Improve complaint classification | Classification agreement rate | BR-04, BR-05, BR-06 | Defined in the BRD; baseline and target remain open. |
| BO-03 | Establish clear ownership | First-time assignment rate; reassignment reporting | BR-07 | First-time assignment rate is defined; reassignment is also a reporting dimension. |
| BO-04 | Improve TAT visibility | TAT attainment; overdue open backlog | BR-08, BR-09 | Both measures are defined in the BRD; TAT rules and targets require approval. |
| BO-05 | Reduce avoidable operational escalations | Avoidable operational escalation rate | BR-10, BR-16 | Defined separately from mandatory Internal Ombudsman referrals. |
| BO-06 | Improve customer communication | Customer update compliance | BR-12 | Defined in the BRD; approved update windows must be confirmed. |
| BO-07 | Strengthen management visibility | Complaint volume, category, priority, ageing, TAT, reassignment and escalation reason reporting | BR-16 | The BRD defines the reporting scope; dashboard definitions and reconciliation rules require agreement. |
| BO-08 | Support required governance and review | Record completeness; define separate timeliness measures for applicable Internal Ombudsman referral and final-decision deadlines | BR-13, BR-14, BR-15 | The current BRD does not define a dedicated regulatory-review timeliness KPI; add one only after Compliance confirms applicability and denominator. |

**KPI gap:** The current BRD KPI list does not define a dedicated measure for timely Internal Ombudsman referral or final-decision communication where applicable. Add such a measure only after Compliance confirms the applicable rule, population and denominator.

## 10. Traceability issues and decisions to resolve

| Issue ID | Observation from source documents | Impact on traceability | Recommended action |
|---|---|---|---|
| RTM-ISS-01 | FR-68 is placed after FR-54 in the FRD, while FR-55 to FR-67 appear in later sections. Its identifier is valid and referenced by US-16. | The FR sequence is visually non-consecutive and may be overlooked during review. | Preserve FR-68 as the existing ID; consider moving its row into a clearly labelled regulatory-timing subsection or renumbering only through formal document control. |
| RTM-ISS-02 | The FRD story coverage statement confirms that FR-01 to FR-68 are linked to at least one user story. | Story linkage is present, but does not demonstrate test execution or complete scenario coverage. | Keep story coverage and test coverage as separate measures; add the missing test scenarios from Section 7. |
| RTM-ISS-03 | Existing FRD test scenarios TC-01 to TC-17 do not explicitly exercise all functional requirements. | Some FRs have no mapped high-level test scenario. | Add dedicated scenarios for FR-07, FR-22 to FR-27, FR-28, FR-29, FR-34, FR-55 and FR-56 before test planning is baselined. |
| RTM-ISS-04 | The User Stories document groups ACs under US records rather than mapping individual ACs to individual FR IDs. | Exact FR-to-AC one-to-one coverage cannot be inferred from source wording alone. | During refinement, identify the primary FR covered by each AC or split/extend ACs where one criterion spans multiple FRs. |
| RTM-ISS-05 | NFR-04, NFR-05 and NFR-08 leave numeric/standard-specific acceptance thresholds open. | Performance, recovery and accessibility cannot be objectively passed/failed yet. | Obtain workload/response targets, availability/RTO/RPO and applicable accessibility standards before non-functional test execution. |
| RTM-ISS-06 | BR-15, FR-46 to FR-54 and FR-68 are conditional on regulated-entity and complaint applicability. | Regulatory test cases must not be run as universally applicable across every bank or complaint. | Compliance/Legal must record the entity category, covered complaints, exceptions and effective rule configuration. |
| RTM-ISS-07 | BO-08 is supported by governance and review requirements, but the BRD KPI table has no dedicated regulatory-review timeliness measure. | Management may not have an explicit KPI for applicable review/referral deadlines. | Define an approved compliance measure and denominator after Compliance confirms applicability. |

## 11. RTM maintenance and change control

Update this RTM whenever a BR, BRL, FR, NFR, user story, acceptance criterion or test case is added, changed, deferred or removed. Each change should include:

1. The changed ID and document version.
2. The reason for the change and approving stakeholder.
3. The affected upstream and downstream requirement/story/test references.
4. An impact assessment for scope, delivery, compliance and reporting.
5. Updated coverage status and test evidence reference after execution.

**Current test status:** All TC-01 to TC-17 entries are scenario definitions only. No execution result, defect reference or pass/fail evidence was supplied in the source documents.

## 12. Source documents

- [04 – Business Requirements Document](04-business-requirements-document.md)
- [05 – Functional Requirements Document](05-functional-requirements-document.md)
- [06 – User Stories and Acceptance Criteria](06-user-stories-and-acceptance-criteria.md)

**Document status:** Draft for stakeholder and QA validation.