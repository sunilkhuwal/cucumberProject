Feature: Flight

  Scenario: Show Flight number of flight departuring
    Given the flight "EZY4567" is ready for leaving today
    When the flight is leaving today
    Then the flight should be "EZY4567" leaving today

