#!/bin/bash

echo "💡 Check the output when running the CLI with a message. It should"
echo "   return that message."
echo

MESSAGE="this is a test message"
EXPECTED="$MESSAGE"
ACTUAL=$(./dist/go-template-cli-simple --message "$MESSAGE")
if [[ "$?" -ne 0 ]]; then
    echo "🔴 Unexpected non-zero return code"
    exit 1
fi
if [[ "$ACTUAL" != "$EXPECTED" ]]; then
    echo "🔴 Expected '${EXPECTED}' but got '${ACTUAL}'"
    exit 1
fi
