<!-- Copied unchanged from qmsroot-mock-auditor v0.9.2: skills/mock-auditor/references/grading.md. Do not edit here; edit the master and re-copy. -->
# Indicative classifications in the mock audit report

Classify **only nonconformities** (established requirement + inspected evidence), and only where the evidence justifies it; otherwise write "classification not determinable from available evidence". Never classify observations/potential findings or preparation gaps. All classifications are indicative and educational and do not predict what an auditing organisation, Notified Body or regulator would decide. State this once in the report.

Choose the scheme by mode:

| Mode | Scheme |
|---|---|
| ISO 13485 (non-MDSAP), ISO 9001 | Indicative major / minor |
| MDSAP | Indicative MDSAP grade 1–5 (below) |
| FDA QMSR-style | No classification; list as inspectional observations |
| GMP | Only the regime's classification, if the user named the regime and supplied definitions; otherwise none |

## Typical major / minor

Present as typical definitions, not authoritative; the certification body's or Notified Body's own scheme governs.
- **Major:** absence or total breakdown of a required process, or a nonconformity raising significant doubt about the ability to achieve intended results or conforming product.
- **Minor:** a lapse, isolated instance or partial implementation that does not raise such doubt.
If seriousness cannot be judged from the evidence, write "classification not determinable from available evidence" rather than choosing.

## MDSAP grading

Source: GHTF/SG3/N19:2012 as applied by MDSAP AU P0037.001 (checked); whether .001 is still current is unverified. Tell the user to confirm the current version if the grade matters.

Inputs (all must be known):
1. Clause the nonconformity is written against (ISO 13485:2016 clause, or a jurisdiction-specific requirement mapped to one).
2. Repeat status (same sub-clause cited in previous audits as defined in P0037).
3. Whether the required process is both undocumented and not implemented.
4. Whether a nonconforming device was released to market (other than under an adequately justified concession).

Step 1: indirect impact → 1 (clauses 4.1–6.3 except 4.2.3, plus 8.2.4); direct impact → 3 (clauses 6.4–8.5 except 8.2.4, plus 4.2.3).
Step 2: +1 each for repeat; undocumented and not implemented (not when a procedure exists but is incomplete); nonconforming device released to market. Not escalated as repeat where previously accepted, timetabled actions are in progress unless shown ineffective.
Final: Step 1 + escalations, maximum 5. Later corrections do not change the grade. No cumulative audit grade.
Jurisdiction-specific requirements affecting safety/performance: grade under the relevant direct clause (e.g. missed jurisdictional adverse event reporting → 8.2.3). Other mappings: state the clause used and that it should be confirmed against P0037.

Missing inputs: write `MDSAP grade: not assignable — missing: …`, optionally with a conditional statement strictly from the rules ("8.2.3 is direct, Step 1 = 3; each confirmed escalation adds 1, maximum 5"). In practice, repeat status is usually unknown in a practice session: ask the user during close-out if it matters, otherwise report as not assignable. Never estimate or give a "likely" grade.
