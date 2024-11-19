@ignore
Feature:Este reto incluye tres escenarios que cubren los métodos HTTP: POST

  Background:
    * url apiUrl
    * configure ssl = false

  @create
  Scenario Outline:  method  post
    Given path 'posts'
    And request read ('classpath:jsonPlaceHolder/body.json')
    When method POST
    Then status 201
    * print response
    And match $.id == "#present", "#number", "#notnull"
    And match $.title == '<title>'
    * def id = $.id
    * print id

    Examples:
      | title          |
      | Mi primer post |