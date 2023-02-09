Feature: Get Details from API
  Scenario: Fetching the user details with valid input
    Given url 'https://gorest.co.in/public/v2/users/'

    When method GET
    And print responseWithStageChanges
    Then status 200
    #And print response
  And def id1 = response[0].id
    And def mailID = response[0].email
    And match mailID contains '@'
    And print id1
    And String1= 'check value test 1'
    And print String1




  Scenario: Fetching the user details with Invalid input
    Given url 'https://gorest.co.in/public/v2/users/'
    #generateing the random number
    * def now = (Math.floor(Math.random() * 100000) + 100000).toString().substring(1);
    # passing the number as path reference
    And path now
    And print now
    When method GET
    #And print response
    Then status 404
    And print response

