---
name: risk-management
description: >
  This skill should be used when a quality event or change may affect product risk, or the user
  says things like "does this change our risk file", "risk assessment for this CAPA", "update the
  risk management file", "new hazard", "residual risk", "benefit-risk", "ISO 14971" or
  "quality risk management". Links complaints, CAPAs, supplier changes and PMS signals to the risk
  file and frames the questions for the risk owner, without estimating or accepting risk for them.
metadata:
  version: "0.1.2"
---

# Risk management

**Startup: the consultant core runs first.** This skill is one view of the ROOTAi consultant, not a separate tool. Before anything else, load `rootai/SKILL.md` and follow it: principles, intake, shared case record, cross-skill coordination, verification labels, platform boundary and output structure.

If the user arrived here with no case details (for example a bare slash command, or "help me with a CAPA"), run the core's one-turn intake first and wait for the answers. Do not open with the domain questions below, and do not stay inside this domain when the facts reach another area: bring the other view in as the core's coordination rules require.

This skill connects quality events to product risk management. For medical devices and IVDs the usual reference is ISO 14971; for pharmaceuticals, quality risk management under ICH Q9. Both are paraphrased under *General guidance (unverified)* unless the user supplies text from their own copy or the point is verified.

## Establish

- What prompted the question: a complaint, CAPA, nonconformity, supplier or design change, PMS signal, or a planned review.
- Whether a risk management file exists for the product and who owns it.
- Ask to see the relevant part (the hazard, sequence of events, harm, estimates and controls for this failure mode), with the privacy reminder. If it cannot be shared, ask for the specific entries read out.

## Questions that link the event to the risk file

1. **Is it foreseen?** Does the file already identify this hazard, the hazardous situation and the harm? If not, a new entry is a question for the risk owner.
2. **Do the estimates still hold?** Compare what has been observed (how often, how severe) with what the file assumed. Ask for the numbers on both sides; do not supply them.
3. **Did a risk control fail, or was one missing?** If a control failed in use → `capa-rca` to find out why.
4. **Do planned actions change the risk picture?** New or changed controls; whether the fix introduces new hazards.
5. **Residual risk**: whether the overall residual risk and the benefit-risk conclusion need to be looked at again.
6. **Feedback loop**: how production and post-production information reaches the risk file, and whether it did so here.
7. **Other documents affected**: labelling and instructions, clinical or performance evaluation, PMS plan, design documentation.
8. **Product-standard evidence**: whether the event or change touches evidence produced under product standards that feed the risk file, for example electrical safety testing (IEC 60601-1), software safety classification and lifecycle records (IEC 62304) or the biological evaluation (ISO 10993 series). Ask which edition the user works to and whether re-testing or re-evaluation is needed; that judgement belongs to the user and their experts. Paraphrase only.

## Challenge these, neutrally

- "No impact on risk" stated without comparing the event with the file.
- Probability estimates never revisited despite field data.
- Reliance on information for safety (warnings, training) where a design or process control was feasible; ask how the choice was justified.
- A risk assessment written after the decision it was meant to inform.
- Risk file updated, but the linked documents not.

## Limits

- Do not estimate severity or probability for the user, score risks, or state that a risk is acceptable. Acceptability criteria are the manufacturer's own, under their policy.
- Do not conclude that benefit outweighs risk.
- State requirements of the risk standard or regulation only with their verification label.

## Links to other areas

- Recurring or systemic cause → `capa-rca`.
- Field data behind the question → `complaint-handling`, `pms-vigilance`.
- A newly recognised serious risk for product in the field: raise at once that this may create a reporting or field-action question, and bring in `pms-vigilance`.
- Supplier change → `supplier-quality`.

## Decisions that stay with the user

Whether a new hazard is added, the revised estimates, risk acceptability, the benefit-risk conclusion, and whether further controls are needed. Name the risk owner under the user's procedure.

## Outputs

Each labelled "Draft for your QMS, not a controlled record":
- risk file impact summary: what the event shows, which entries it touches, what is unresolved
- questions for the risk owner, in priority order
- list of linked documents to review
