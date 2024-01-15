Feature: Bing.com search with Copilot
    Allow users to use AI to gather and point out information about a topic

    Background:
        Given the user is on the bing.com home page
        And the user is not logged in
        And the language is set to "English"

    Scenario: Use copilot to gather basic information about the "Prowly media monitoring module"
        Given the user is on the bing.com search page
        When the user searches for the phrase "Prowly media monitoring module"
        And the user activates the copilot tab
        Then copilot should respond with a brief overview of the Prowly media monitoring module

    Scenario: Use copilot's suggested questions to gather more information about the "Prowly media monitoring module"
        Given the user has asked for information about the "Prowly media monitoring module" using copilot
        When the user selects suggested questions related to the topic
        Then copilot should respond to selected questions and help to gather more information about the Prowly media monitoring module

    Scenario Outline: Use copilot with a different conversation style
        Given the user runs copilot feature
        When the user applies the <conversation_style> style
        And the user asks for information about the "Prowly media monitoring module"
        Then copilot should respond with <conversation_style> style answer related to the Prowly media monitoring module

        Examples:
            | conversation_style |
            | Creative           |
            | Balanced           |
            | Precise            |