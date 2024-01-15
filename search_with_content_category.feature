Feature: Bing.com search phrase with content category filtering
    Allow users to search phrase and filter results by selecting the desired content category.

    Scenario: Search for a "Prowly Media Monitoring" phrase
        Given the user is on the bing.com search page
        When the user searches for the phrase "Prowly Media Monitoring"
        Then the search results should be related to the "Prowly Media Monitoring" phrase

    Scenario Outline: Filter search results of a "Prowly Media Monitoring" phrase by content category
        Given the user is on the search results page for the "Prowly Media Monitoring" phrase
        When the user applies the <content_type> filter
        Then the search results should only contain <content_type> results related to the "Prowly Media Monitoring" phrase

        Examples:
            | content_type |
            | All          |
            | Videos       |
            | Images       |
            | Maps         |
            | News         |
            | Shopping     |