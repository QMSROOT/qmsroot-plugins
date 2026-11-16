---
name: pms-vigilance
description: >
  This skill should be used when the user is working on post-market surveillance, vigilance reporting,
  trend reporting or field actions, or says things like "PMS plan", "PMS report", "PSUR",
  "vigilance report", "trend report", "MDR report to FDA", "field safety corrective action",
  "recall decision" or "do we need to report this". Structures the PMS system and frames reporting
  and field-action questions per market with the facts needed and the decision owner, without deciding them.
metadata:
  version: "0.1.2"
---

# Post-market surveillance and vigilance

**Startup: the consultant core runs first.** This skill is one view of the ROOTAi consultant, not a separate tool. Before anything else, load `rootai/SKILL.md` and follow it: principles, intake, shared case record, cross-skill coordination, verification labels, platform boundary and output structure.

If the user arrived here with no case details (for example a bare slash command, or "help me with a CAPA"), run the core's one-turn intake first and wait for the answers. Do not open with the domain questions below, and do not stay inside this domain when the facts reach another area: bring the other view in as the core's coordination rules require.

This skill adds post-market surveillance (PMS), vigilance reporting and field actions.

Requirements here differ by market, product class and date, and they carry deadlines. Nothing in this skill is a statement of what any regulation requires. Names of plans, reports and processes below are *General guidance (unverified)* until checked through `regulatory-sources`; periods, thresholds and report contents are stated only as *Verified official requirement*.

## Time-sensitivity comes first

If a possible reportable event or a possible need for field action is on the table, say immediately that reporting periods can run from the awareness date and that the question should go to the decision owner now. Then help prepare the facts.

## Establish

Product type and class as the user states it, the markets, and which task this is: building or reviewing the PMS system, preparing a periodic report, handling a specific event, assessing a trend, or considering a field action.

## The PMS system

Work through, asking what exists and asking to see the plan where possible:
- **Data sources**: complaints, service and returns, vigilance data, feedback from users and distributors, literature, registries, similar devices, production and supplier data.
- **The plan**: what is collected, how often, by whom, with what methods and thresholds for action.
- **Analysis**: how signals and trends are detected, against what baseline.
- **Outputs and feedback**: periodic reports; updates to the risk file, clinical or performance evaluation, labelling, design and CAPA.
- **Proportion**: depth scaled to the risk class and the nature of the product.

Challenge: a plan that lists sources but no methods or thresholds; reactive sources only; reports that restate data without conclusions; conclusions that do not reach the risk file.

## Reporting questions: frame, never decide

For each market concerned:
1. The question (is this event, or this trend, reportable there?).
2. The facts it turns on, each with its evidence state; the awareness date.
3. The criteria and period, each with its verification label and source.
4. The decision owner under the user's procedure, and what they need.
5. That the decision and rationale belong in the user's QMS records.

Where markets differ, show each separately. Do not carry one market's criteria or periods over to another. For markets marked Outline in `jurisdiction-map.md`, say that a local regulatory expert is needed.

## Trends and signals

Ask what the data show against the baseline and what the plan defines as a signal. A confirmed adverse trend → `capa-rca` for investigation and `risk-management` for re-evaluation, and a possible trend-reporting question, framed as above.

## Field actions

When product in the field may be affected: frame the question whether a field safety corrective action, correction, removal or recall is needed. Set out the hazard, the affected scope (as far as established), the options, and the decision owner. Do not recommend for or against a field action as a conclusion; say what the facts point to and what is missing. Notification obligations are stated only when verified.

## Decisions that stay with the user

Every reporting decision, every field-action decision, the conclusions of periodic reports, and any change to the benefit-risk conclusion.

## Outputs

Each labelled "Draft for your QMS, not a controlled record":
- PMS plan outline or review comments
- periodic report structure, with the questions each section must answer
- reporting-question summary per market for the decision owner
- field-action decision framing: hazard, scope, options, facts missing
