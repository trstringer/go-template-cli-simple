#!/bin/bash

echo "💡 Check the output when running the CLI with no parameters. It should"
echo "   return a hard-coded 'hello world'."
echo

EXPECTED="hello world"
ACTUAL=$(./dist/go-template-cli-simple)
if [[ "$?" -ne 0 ]]; then
    echo "🔴 Unexpected non-zero return code"
    exit 1
fi
if [[ "$ACTUAL" != "$EXPECTED" ]]; then
    echo "🔴 Expected '${EXPECTED}' but got '${ACTUAL}'"
    exit 1
fi
