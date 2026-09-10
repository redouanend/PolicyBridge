#!/bin/bash

INPUT=$(cat)
COMMAND=$(node -e "
let d='';
process.stdin.on('data', c => d += c);
process.stdin.on('end', () => {
  try { process.stdout.write(JSON.parse(d).tool_input.command || ''); }
  catch (e) { process.stdout.write(''); }
});
" <<< "$INPUT")

if echo "$COMMAND" | grep -qE '\bgit\b.*\bcommit\b'; then
  cat <<'EOF'
{"hookSpecificOutput":{"hookEventName":"PreToolUse","permissionDecision":"ask","permissionDecisionReason":"git commit exige une validation humaine explicite à ce prompt. Aucun flag, token ou fichier ne peut s'y substituer."}}
EOF
  exit 0
fi

exit 0
