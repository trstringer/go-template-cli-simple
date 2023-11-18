package main

import "testing"

func TestMessageWithExclamation(t *testing.T) {
	testCases := []struct {
		name           string
		input          string
		useExclamation bool
		expected       string
	}{
		{
			name:           "without_exclamation",
			input:          "test",
			useExclamation: false,
			expected:       "test",
		},
		{
			name:           "with_exclamation",
			input:          "test",
			useExclamation: true,
			expected:       "test!",
		},
	}

	for _, testCase := range testCases {
		t.Run(testCase.name, func(t *testing.T) {
			actual := messageExclamation(testCase.input, testCase.useExclamation)
			if actual != testCase.expected {
				t.Fatalf("expected %q but got %q", testCase.expected, actual)
			}
		})
	}
}
