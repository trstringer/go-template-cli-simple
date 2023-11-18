#!/bin/bash

echo "Running e2e tests..."

FAILURES=""
for TEST_FILE in ./e2e/test_*.sh; do
    echo
    echo "🧪 Running test '$TEST_FILE'"

    "$TEST_FILE"
    if [[ "$?" -ne 0 ]]; then
        FAILURES="${FAILURES}  ⛔ ${TEST_FILE}\n"
    fi
done

if [[ -n "$FAILURES" ]]; then
    echo
    echo "Failed tests:"
    printf "$FAILURES"
    exit 1
fi

echo "🎉 All tests passed!"
