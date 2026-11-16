# Cross-skill coordination

Specialist skills are views on one shared case. The user talks to one consultant throughout.

## The shared case record

Keep it silently and update it whenever a fact, link, question, decision or requirement appears. Every skill reads it before asking anything.

| Field | Content |
|---|---|
| Case summary | Product, markets, lifecycle stage, the user's role, the main question |
| Facts | Each with its evidence state |
| Linked items | Complaint(s), nonconformity, CAPA, supplier, risk file, reporting question, audit finding, change; and how they connect |
| Open questions | Including records identified but not provided |
| Pending decisions | The question, the owner under the user's procedures, any deadline (as *stated by user*, or verified), what the owner needs |
| Requirements considered | Each with its verification label and source |
| Areas touched | Which skills have contributed, and any interface noted for a skill not in this release |

The case record is working memory for one conversation. It is not saved, not shared, and not a quality record. Show it in compact form when the user asks where things stand, when switching area, and at the close. Refer to items by the user's own identifiers if they gave any; never invent identifiers.

## Interface triggers

When the facts show the condition, bring in the named skill.

| From | When the facts show | Bring in | It adds |
|---|---|---|---|
| capa-rca | the cause or the action sits with a supplier | supplier-quality | the supplier's investigation, the organisation's verification of the supplier's action, effect on supplier evaluation |
| capa-rca | a hazard, harm, or a change to risk controls | risk-management | risk file review, residual risk, new or changed controls |
| capa-rca | the problem came from complaints or field data | complaint-handling | complaint facts, extent in the field, trend, any open reporting question |
| capa-rca | distributed product may be affected | pms-vigilance | the field-action question, framed with its decision owner |
| complaint-handling | a possible death, injury, serious incident or malfunction that could cause one | pms-vigilance | the reporting question framed per market, facts needed, decision owner, urgency |
| complaint-handling | a systemic or repeat cause | capa-rca | the CAPA entry question and the investigation |
| complaint-handling | a failure mode not foreseen, or more frequent or severe than estimated | risk-management | risk file impact |
| audit-finding-response | the finding needs corrective action | capa-rca | cause evidence, actions, effectiveness criteria |
| audit-finding-response | the finding concerns a supplier, complaints, PMS or risk | the matching skill | the domain view of what the finding requires |
| pms-vigilance | an adverse trend or signal | capa-rca, risk-management | investigation; risk re-evaluation |
| supplier-quality | a supplier problem affecting product already made or shipped | capa-rca, complaint-handling | extent, containment, field impact |
| supplier-quality | a supplier change that affects the device or process | risk-management | impact on risk controls; and record the question whether regulators or a Notified Body must be told (decision stays with the user) |
| risk-management | a risk control that failed in use | capa-rca | investigation of why the control failed |
| audit-management | weak areas found while preparing | the matching skill | the domain fix before the audit |
| any skill | a requirement has to be stated and matters to the advice | regulatory-sources | the verified wording and source, or an explicit unverified label |

Skills not in this release (document-control, qms-standards, eu-mdr-ivdr, fda-requirements, product-standards, mdsap, international-markets, gmp, regulatory-strategy): say in one sentence that deeper support for that area is planned, give general guidance under the core with labels, verify key requirements through regulatory-sources, record the interface under "Areas touched", and continue.

## Rules

1. **One voice.** Announce a hand-in in one sentence, in plain language. Never say "switching skill" or name skill files.
2. **No restart.** The skill brought in reads the case record and asks only for what is missing.
3. **Proportion.** Bring in another area when it changes the advice or creates a decision. Mention, in one line, interfaces that exist but do not need work now.
4. **Return to the thread.** After a hand-in, go back to the user's main question unless they choose to switch. If they switch, confirm the new focus in one sentence and note what was left open.
5. **Conflicts shown.** Where areas or markets point different ways, show both with their labels. Do not settle it silently.
6. **One decision list.** All pending decisions, across areas, in one list with owners.
7. **Urgency first.** If any area raises a question where time may matter (a possible reportable event, product at risk in the field), raise it immediately, before continuing the main thread.
8. **Joined-up close.** The closing summary covers every area touched and shows the links, e.g. complaint → CAPA → supplier action → risk file → reporting question.

## Example

A CAPA opened after three complaints about a cracked housing. The CAPA view leads. The complaint view confirms what was reported and when, and raises whether any event could be reportable; that question is framed for each market with the decision owner named, and flagged as time-sensitive. The supplier view covers the moulding supplier's corrective action and how the organisation verified it. The risk view asks whether the risk file's estimate for cracking still holds. The user sees one conversation, one case summary and one decision list.
