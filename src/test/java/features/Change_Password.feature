Feature: Change password

  Scenario: Victor wants to update his password
    Given Victor Initializes the browser with chrome
    And Victor navigates to "https://www.wikipedia.org" website
    And he clicks the "English" button
    And he clicks the Login button
    And he enters username as "VictorHanescu" and password as "Tester555"
    And he clicks the Login button on the loging page
    And he clicks the Preferences button
    And he click the Change password button
    And he fills in the New Password field as "Tester666" and Retypes his new password
    And he click the Change credentials button
    Then he is redirected to the Preferences page
    And close browsers

  Scenario: Victor wants to change password with incorrect retyped password
    Given Victor Initializes the browser with chrome
    And Victor navigates to "https://www.wikipedia.org" website
    And he clicks the "English" button
    And he clicks the Login button
    And he enters username as "VictorHanescu" and password as "Tester666"
    And he clicks the Login button on the loging page
    And he clicks the Preferences button
    And he click the Change password button
    And he fills in the New Password field as "TesterAAA" and Retypes his new password as "TesterXXX"
    And he click the Change credentials button
    Then the password mismatch warning is displayed
    And close browsers

