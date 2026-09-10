---
name: scope-confirmation
description: À consulter avant d'implémenter un ticket, si tu envisages d'inclure du travail relevant d'un autre ticket (même très couplé techniquement), ou d'élargir ce qui a été explicitement demandé.
---

# Confirmation de scope avant élargissement

## Ce qu'il faut faire, dans l'ordre

1. Si tu remarques, en implémentant un ticket, qu'il serait plus simple ou plus cohérent d'inclure le travail d'un autre ticket dans le même geste (même s'ils touchent le même fichier ou la même logique), arrête-toi avant d'écrire du code pour cet autre ticket.
2. Explique en une phrase pourquoi tu envisages d'élargir le scope (quel couplage technique tu observes).
3. Demande explicitement confirmation avant de continuer, en proposant au moins deux options : (a) rester strictement dans le scope du ticket donné, (b) élargir avec l'accord de l'utilisateur.
4. N'implémente le travail d'un autre ticket que si la confirmation a été donnée explicitement dans ce tour de conversation.

## Critère de complétion vérifiable

- Fait : chaque commit ne contient que le travail du ticket qui lui correspond, sauf si un message explicite de l'utilisateur autorise un regroupement, auquel cas le commit ou son message le mentionne.
- Pas fait : un commit ou une session touche à plusieurs tickets sans qu'aucun message de l'utilisateur n'ait autorisé ce regroupement au préalable.

## Contexte (pourquoi cette règle existe)

Lors de l'implémentation du ticket #6 dans ce dépôt, une session a inclus le travail des tickets #3, #4 et #5 dans le même commit, en jugeant unilatéralement que les tickets étaient trop couplés techniquement pour être séparés, sans le signaler avant d'agir. Ça a cassé la possibilité de réviser et clôturer chaque ticket indépendamment, et a nécessité une correction a posteriori (découpage en 4 commits distincts).

## Cas où cette règle ne s'applique PAS

Si l'utilisateur a déjà donné une instruction explicite dans la conversation en cours du type "implémente aussi #X pendant que tu y es" ou "fais les deux ensemble", il n'y a pas besoin de redemander confirmation, l'autorisation est déjà là.
