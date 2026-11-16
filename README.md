# QMSROOT plugins

Claude plugins from QMSROOT (MAXCERT LTD) for quality and regulatory professionals.

| Plugin | Folder | What it is |
|---|---|---|
| ROOTAi Quality & Regulatory | `plugins/rootai-quality-regulatory` | A QA/RA consultant: CAPA, audit findings, complaints, PMS and vigilance, supplier quality, risk management, sourced regulatory answers |

Two earlier plugins live in their own repositories: [QMSROOT Mock Auditor](https://github.com/QMSROOT/qmsroot-mock-auditor) and QMSROOT Audit Checklist.

## Install (Claude Code)

```bash
claude plugin marketplace add QMSROOT/qmsroot-mock-auditor
claude plugin install rootai-quality-regulatory@qmsroot
```

See each plugin's README for Claude web and desktop.

## Shared files

ROOTAi reuses the CAPA methodology and grading notes from the Mock Auditor and the question bank from the Audit Checklist. The copies must stay identical to their masters. Before each release run:

```bash
tools/check-shared-copies.sh
```

It fails if a copy differs. Edit the master, then re-copy, keeping the one-line header that names the source.

## Licence

Each plugin carries its own `LICENSE.md` (QMSROOT Free-Use Licence). © 2026 MAXCERT LTD, trading as QMSROOT.
