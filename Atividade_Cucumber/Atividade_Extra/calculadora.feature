Feature: Calculator

        How I do not know making counts by my own
        Want to use the sistem's calculator
        To sum two numbers

        Contexto:
        Given that I go to the sistem's calculator
    Scenario: Sum two numbers
        When I sum "2" + "2"
        Then the result must be "4"

    Scenario Outline: Multiple sum numbers
        When I sum <number1> + <number2>
        Then the result must be <results>

        Examples:
            | number1 | number2 | results |
            | "2"     | "2"     | "4"     |
            | "1"     | "0"     | "1"     |
            | "2"     | "0"     | "2"     |
            | "5"     | "2"     | "7"     |
            | "8"     | "2"     | "10"    |
            | "20"    | "25"    | "45"    |
            | "30"    | "4"     | "34"    |
            | "54"    | "20"    | "74"    |
            | "12"    | "34"    | "46"    |
            | "36"    | "7"     | "43"    |
            | "1"     | "39"    | "40"    |
            | "15"    | "26"    | "41"    |
            | "2"     | "45"    | "47"    |
            | "12"    | "2"     | "14"    |
            | "12"    | "12"    | "24"    |
            | "22"    | "22"    | "44"    |
            | "20"    | "34"    | "54"    |
            | "17"    | "47"    | "64"    |
            | "42"    | "42"    | "84"    |
            | "20"    | "74"    | "94"    |
            | "3"     | "8"     | "11"    |
            | "35"    | "35"    | "70"    |
            | "46"    | "64"    | "110"   |
            | "15"    | "15"    | "30"    |
