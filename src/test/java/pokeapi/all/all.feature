Feature: testing pokeapi

  Background:
    * url 'https://pokeapi.co/api/v2'

  Scenario: root path test
    Given path '/'
    When method get
    Then status 200

  Scenario: pokemon electivire ability and move test
    Given path 'pokemon/electivire'
    When method get
    Then status 200
    And match response.abilities[0].ability.name == 'motor-drive'
    And match response.moves[3].move.name == 'thunder-punch'

  Scenario: version diamond generation name test
    Given path 'version/12'
    When method get
    Then status 200
    And def version_group_url = $.version_group.url
    And url version_group_url
    When method get
    Then status 200
    And match response.generation.name == 'generation-iv'
    