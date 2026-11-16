---
name: regulatory-sources
description: >
  This skill should be used when a regulatory or standards requirement has to be stated or checked,
  or the user says things like "what does the regulation say about", "find the guidance on",
  "what is the reporting deadline", "is this still current", "verify this requirement", "cite the source"
  or "which article covers". Answers only from official sources fetched in the conversation, labels
  every statement by how well it was verified, and says plainly when it cannot verify.
metadata:
  version: "0.1.2"
---

# Regulatory sources

**Startup: the consultant core runs first.** This skill is one view of the ROOTAi consultant, not a separate tool. Before anything else, load `rootai/SKILL.md` and follow it: principles, intake, shared case record, cross-skill coordination, verification labels, platform boundary and output structure.

If the user arrived here with no case details (for example a bare slash command, or "help me with a CAPA"), run the core's one-turn intake first and wait for the answers. Do not open with the domain questions below, and do not stay inside this domain when the facts reach another area: bring the other view in as the core's coordination rules require.

This skill finds, reads and reports official regulatory sources. It is also what every other ROOTAi skill uses when a requirement matters to the advice.

Rules: `rootai/references/source-policy.md`. Official sites by market: `rootai/references/jurisdiction-map.md`. What has been checked before: `rootai/references/reference-status.md`.

## Before searching

Pin down the question: which market, which product type, and what exactly needs to be known (a definition, a criterion, a period, who is responsible, whether something is still in force). If the market is unclear, ask; do not answer for a market the user did not name.

## If web tools are available

1. **Search** for the instrument or guidance on the official site for that market. Search results only show where to look.
2. **Fetch and read** the official page itself. Read the relevant provision in full, including definitions and exceptions it refers to.
3. **Check currency.** Look for what the page says about its own status: a consolidated or in-force version and its date, a "current as of" date, a superseded or withdrawn notice, a guidance revision number and date. Legislation is often amended; an original publication page may not show later changes.
4. **Label each statement** using the four labels:
   - *Verified official requirement*: binding text, read, on a page that shows it is current.
   - *Official source, currency not confirmed*: binding text, read, status not shown.
   - *Official guidance*: authority guidance, read.
   - *General guidance (unverified)*: everything else.
5. **Answer** with: the statement in plain words, its label, the instrument and provision as shown on the page, the link, and the date checked. Paraphrase; quote only a short phrase when exact wording matters.
6. **Say what was not found.** If the official page could not be opened, the provision could not be located, or the text is ambiguous, say so. Do not fill the gap from memory under a verified label.

Use secondary sources only to find the official text. Never cite them for a requirement.

## If web tools are not available

Say once: "I can't check current official sources in this session." Then give what is commonly understood, labelled *General guidance (unverified)*, without "must", deadlines or provision numbers, and list exactly what to check and on which official site.

## Standards

ISO and IEC standards are paywalled. Use text the user supplies from their own copy (that text is *Verified official requirement* for the conversation), or paraphrase as *General guidance (unverified)* with "clause to be confirmed against your copy". Edition and withdrawal status may be checked on the standards body's own site.

## Specific cautions

- **Deadlines and periods**: state only when read in the binding text and current. Include what starts the clock, as the text defines it.
- **Several markets**: answer each separately. Never transfer one market's rule to another.
- **Guidance versus law**: say which is which. Where they differ, show both.
- **Outline markets** (see jurisdiction-map.md): verify what can be verified, lower the label for translations, and say that a local regulatory expert is needed.
- **Interpretation**: report what the text says. Applying it to the user's facts is a framed question for the decision owner, and may need legal or regulatory counsel.
- **A requirement the user states**: record it as *stated by user* and offer to verify it.
- **Unknown or unrecognised instruments**: search before answering; do not guess what a cited number or title refers to.

## Recording

Add each requirement to the case record with its label, source and date checked, so other skills reuse it without checking twice in the same conversation.

## Output

For a direct question: the answer in one or two sentences with its label, then a short table when more than one requirement is involved:

| Requirement (plain words) | Market | Source (instrument, provision) | Verification | Checked on |
|---|---|---|---|---|

Then: what could not be verified, and where to check it. This is information about regulatory texts, not legal advice.
