# Notes de contrôle des agents

Historique des changements apportés aux skills de gouvernance des agents (`.claude/skills/`), pour garder une trace du avant/après quand leur périmètre est modifié.

## `scope-confirmation`

### Description — avant (2026-09-10)

> À consulter avant d'implémenter un ticket, si tu envisages d'inclure du travail relevant d'un autre ticket (même très couplé techniquement), ou d'élargir ce qui a été explicitement demandé.

### Description — après (2026-09-10)

> À consulter avant d'entreprendre plusieurs changements distincts dans la même session (que ce soit un ticket, une revue de code, ou une demande ouverte), si tu envisages d'agir sur plus d'un point sans qu'on te l'ait demandé explicitement pour chacun.

### Pourquoi ce changement

La version originale ne couvrait explicitement que le cas « implémentation d'un ticket ». Testée sur une tâche de revue de code ouverte (revue de `experts.html`, sans ticket associé), elle s'est révélée ne pas se déclencher : l'agent a dû reconnaître par analogie, via une mémoire de session distincte, qu'il fallait s'arrêter avant d'appliquer les corrections identifiées — la skill elle-même n'a pas été consultée car son critère de déclenchement ne mentionnait pas ce cas. La nouvelle description élargit le déclencheur à toute session avec plusieurs changements distincts, pas seulement au contexte ticket.
