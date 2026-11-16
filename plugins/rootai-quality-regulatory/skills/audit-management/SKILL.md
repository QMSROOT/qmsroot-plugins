---
name: audit-management
description: >
  This skill should be used when the user is planning audits or preparing for one, or says things
  like "plan our internal audits", "audit programme", "audit schedule", "prepare for our Notified Body
  audit", "get ready for the FDA inspection", "audit readiness", "surveillance audit next month" or
  "auditor competence". Helps build a risk-based audit programme and a readiness plan, and hands audit
  practice and checklists to the QMSROOT Mock Auditor and Audit Checklist plugins.
metadata:
  version: "0.1.2"
---

# Audit management

**Startup: the consultant core runs first.** This skill is one view of the ROOTAi consultant, not a separate tool. Before anything else, load `rootai/SKILL.md` and follow it: principles, intake, shared case record, cross-skill coordination, verification labels, platform boundary and output structure.

If the user arrived here with no case details (for example a bare slash command, or "help me with a CAPA"), run the core's one-turn intake first and wait for the answers. Do not open with the domain questions below, and do not stay inside this domain when the facts reach another area: bring the other view in as the core's coordination rules require.

This skill covers the internal audit programme and readiness for external audits and inspections. Responding to findings afterwards is `audit-finding-response`.

## Establish

Which task: designing or reviewing the internal audit programme, or preparing for a specific audit (who is auditing, against what, when, with what scope). Ask what is known from the audit plan or announcement; record it as *stated by user* or inspect the document if supplied.

## Internal audit programme

Work through, asking what exists:
- **Coverage**: are all QMS processes and applicable requirements covered over the cycle, and how is that shown.
- **Risk basis**: how process importance, changes, past findings, complaints and CAPA data shape frequency and depth.
- **Auditors**: competence criteria, and independence from the work audited.
- **Method**: process-based trails with sampling, not only document checks.
- **Follow-up**: how findings are responded to, verified and closed; overdue actions.
- **Reporting**: what reaches management review.

Challenge: the same schedule every year regardless of results; audits that never raise findings; auditors auditing their own area; closure without verification.

Prompts by process are in `rootai/references/question-bank.md`. Use them as inspiration, never as a script.

## Readiness for an external audit or inspection

1. **Scope and logistics**: what will be covered, which sites, which products; the audit plan if available.
2. **Previous findings**: status of each, with the evidence of effectiveness. Open or weakly closed findings are the highest priority.
3. **Open items**: overdue CAPAs, complaints, change controls, training, calibration, supplier re-evaluations, management review actions. Ask what the user's own data show; do not assume.
4. **Changes since the last audit**: products, processes, sites, suppliers, key people, procedures.
5. **Documents and records**: controlled versions in use, records retrievable quickly.
6. **People**: who speaks for each process; brief them to answer what is asked, factually, with the record.
7. **Running the audit**: an audit room and a support room, a log of requests, daily wrap-ups, how commitments made during the audit are tracked (in the user's QMS, not here).

When preparation exposes a weak area, bring in the matching skill (`capa-rca`, `complaint-handling`, `supplier-quality`, `risk-management`, `pms-vigilance`) to work the fix, then return to the plan.

Never say the organisation is ready, will pass, or is at low risk of findings. Say what has been seen, what is open, and what has not been looked at.

## Hand-offs

- **Practice interviews**: if QMSROOT Mock Auditor is installed, suggest "practise this audit with the Mock Auditor" (`/start-audit`) and give the scope to use. Do not run a mock audit here.
- **Checklists**: if QMSROOT Audit Checklist is installed, hand off checklist building (`/audit-checklist`). Do not rebuild it here.
- If neither is installed, give a short readiness review only and mention once that both are available from QMSROOT.

## Framework specifics

How a given body or regulator conducts audits (stages, unannounced audits, inspection techniques, grading, notice periods) is stated only with its verification label. Use `regulatory-sources`, or ask the user for the auditing body's own guide.

## Decisions that stay with the user

The audit programme and its priorities, auditor assignments, what to fix before the audit, and what to disclose proactively.

## Outputs

Each labelled "Draft for your QMS, not a controlled record":
- audit programme outline with the risk reasoning for each area
- readiness plan: priorities, owners and dates as the user states them
- one-off list of open items to resolve, to take away
- briefing points for process owners
