Feature:Este reto incluye tres escenarios que cubren los métodos HTTP: GET y DELETE.

  Background:
    * url apiUrl
    * configure ssl = false
    * def postCreate = call read('classpath:jsonPlaceHolder/post_PlaceHolder.feature@create')
    * def id = postCreate.id
    * print id

  Scenario:  method  list Get
    Given path 'users'
    When method GET
    Then status 200
    * print response
    And match $.[*].name == "#present", "#string", "#notnull"
    And match $.[*].id == "#present", "#number", "#notnull"

  Scenario:  method Get Id
    Given path 'posts', id
    When method GET
    Then status 404
    * print response

  Scenario:  method  delete
    Given path 'posts', id
    When method delete
    Then status 200
    * print response


