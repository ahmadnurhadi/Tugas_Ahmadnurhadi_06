@FirstRelease
Feature: Login functionality

  @Positive
  Scenario Outline: Ensure user succesfully login
    # precondition
    Given user is on saucedemo homepage
    #steps
    When user input <username> as username
    And user input <password> as password
    And user click enter
    # expected
    Then user verify <status> login result

    Examples:
      | username | password      | status  |
      | standard_user    | secret_sauce      | success |



  @negative
  Scenario Outline: Ensure user not succesfully login
    # precondition
    Given user is on saucedemo homepage
    #steps
    When user input <username> as username
    And user input <password> as password
    And user click enter
    # expected
    Then user verify <status> login result

    Examples:
      | username | password      | status  |
      | locked_out_user    | secret_sauce      | Error |


  @negative
  Scenario Outline: Ensure user Problem succesfully login
    # precondition
    Given user is on saucedemo homepage
    #steps
    When user input <username> as username
    And user input <password> as password
    And user click enter
    # expected
    Then user verify <status> login result

    Examples:
      | username | password      | status  |
      | problem_user    | secret_sauce      | success |

  @Positive
  Scenario Outline: Ensure user Glitch succesfully login
    # precondition
    Given user is on saucedemo homepage
    #steps
    When user input <username> as username
    And user input <password> as password
    And user click enter
    # expected
    Then user verify <status> login result

    Examples:
      | username | password      | status  |
      | performance_glitch_user    | secret_sauce      | success |