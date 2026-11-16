# ROOTAi Quality & Regulatory

A QA/RA consultant for Claude. It asks the follow-up questions a senior consultant would ask, challenges unsupported assumptions, asks for objective evidence, and gives structured, practical recommendations that leave every decision with a named person. Free to use.

**Status: version 0.1.2 (pilot).** Feedback welcome via https://qmsroot.com.

## What it covers in this release

| Area | What it helps with |
|---|---|
| CAPA and root cause | Problem and extent, cause evidence, actions, effectiveness criteria set in advance, closure |
| Audit finding responses | Responses to certification body, Notified Body, MDSAP, FDA 483, customer and internal findings |
| Complaint handling | Intake, investigation, trending, and framing the reportability question |
| PMS and vigilance | PMS plans and reports, trends, reporting and field-action questions per market |
| Supplier quality | Risk-based controls, quality agreements, supplier corrective actions, supplier changes |
| Risk management | Linking complaints, CAPAs, changes and PMS signals to the risk file |
| Audit management | Internal audit programme and readiness for external audits and inspections |
| Regulatory sources | Answers from official sources fetched in the conversation, with a verification label on every statement |

One consultant runs the whole conversation. When a CAPA turns out to involve a supplier, a risk control and a possible reportable event, those views are brought in without starting over, and you get one case summary and one list of pending decisions.

Planned: document control, ISO 13485 and ISO 9001 process design, EU MDR/IVDR, FDA requirements, product standards (IEC 60601-1, IEC 62304, ISO 10993), MDSAP, international markets (UK, China, Korea and others), GMP and regulatory strategy.

## How it works

- **Evidence states.** Every fact is marked: verified from an inspected record, stated by you, evidence identified but not provided, unresolved, or a potential issue requiring confirmation.
- **Verification labels.** Every requirement is marked: verified official requirement, official source with currency not confirmed, official guidance, or general guidance (unverified). "Must" and deadlines appear only when the binding text was read on an official site in the conversation.
- **Your decisions stay yours.** Reportability, classification, release, field action, CAPA closure and similar decisions are framed, with the facts they turn on and who decides. They are never made for you.
- **No compliance claims.** It says what the evidence shows and what is missing. It never says you are compliant or audit-ready.
- **Privacy prompts.** It reminds you to remove names, supplier names, customer and patient data before every upload.

## What it does not do

- It has no access to your company records, the QMSROOT platform or any live regulatory feed. It sees only what you put in the conversation and the official pages it fetches.
- It has no memory between conversations and keeps no client file.
- It is not a system of record: no record numbers, approvals, signatures, workflows or trackers. Drafts are labelled "Draft for your QMS, not a controlled record". Those functions belong in QMSROOT or your own QMS.
- Without web access in your Claude session it cannot verify current requirements, and says so.

## Installation

### Claude (web, desktop and Cowork)
- **From the Claude directory (once listed):** open **Customize → Plugins → Discover**, search for "ROOTAi Quality & Regulatory" and add it.
- **Before it is listed:** upload the plugin file under **Customize → Plugins**. Upload options depend on your plan and organisation settings.

### Claude Code
```bash
claude plugin marketplace add QMSROOT/qmsroot-mock-auditor
claude plugin install rootai-quality-regulatory@qmsroot
```

### Check it works
Start a new conversation and say "I need QA/RA advice" or describe your case, for example "help me with a CAPA for a supplier issue". The consultant should ask what you need, the product type and the markets, then start asking about your case.

Works alongside **QMSROOT Mock Auditor** (audit practice) and **QMSROOT Audit Checklist** (checklists); the consultant hands off to them when they are installed.

## What the plugin runs and sends
The plugin contains only instructions and reference text. It runs no scripts, installs no packages and sends no data to any service of ours. When you ask about regulatory requirements and your Claude session has web access, Claude searches and reads public official websites; your documents are not sent to them. Documents you upload are handled by Claude like any other conversation content.

## Limitations
- AI-assisted advisory support. Not legal advice, not an audit or certification, and not a substitute for qualified professional or regulatory advice.
- Professional validation of the methodology is pending.
- Standards (ISO, IEC) are paywalled and are paraphrased unless you supply text from your own copy.
- Framework facts are deliberately marked unverified until checked; see `skills/rootai/references/reference-status.md`.
- Anonymise everything you share. Your organisation's AI policy applies.

## Licence
ROOTAi Quality & Regulatory is © 2026 MAXCERT LTD, trading as QMSROOT, and free to use under the **QMSROOT Free-Use Licence** (see [LICENSE.md](LICENSE.md)). In short:

- **You may** install and use it for free, as an individual, employee, auditor, consultant or commercial organisation, including while delivering your own paid consulting or training. You may use the drafts you create however you like, after your own professional review.
- **You may not** sell it, rebrand it, hand it out as part of a paid product, course or service, or publish modified versions without written permission from QMSROOT.
- **QMSROOT keeps** its copyright and the QMSROOT and ROOTAi branding; notices and links must stay intact.
- **Advisory support only:** it is not a certification, audit or regulatory-compliance guarantee.
- **Separately licensed:** the QMSROOT platform, backend intelligence and integrations are not covered by this licence.

The summary is for convenience; [LICENSE.md](LICENSE.md) governs. For permissions or partnerships, contact QMSROOT via https://qmsroot.com.

## Contents
```
.claude-plugin/plugin.json        plugin manifest
skills/rootai/                    consultant core + shared references
skills/capa-rca/                  CAPA and root cause
skills/audit-finding-response/    audit finding responses
skills/complaint-handling/        complaints and reportability triage
skills/pms-vigilance/             PMS, vigilance, field actions
skills/supplier-quality/          supplier controls
skills/risk-management/           risk file links
skills/audit-management/          audit programme and readiness
skills/regulatory-sources/        sourced regulatory answers
LICENSE.md                        QMSROOT Free-Use Licence
```

---
More at https://qmsroot.com
