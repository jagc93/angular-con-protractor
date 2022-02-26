Feature: Este archivo contiene escenarios de prueba de la web de openwebinars.

  @todo @abrir @ejecucion @depurar
  Scenario: abrir la web de Angular.
    Given el usuario abre la web de angular
    Then la web abierta es la correcta
    When hacemos click en la seccion FEATURES
    Then se abre la seccion de FEATURES
    When hacemos click en la seccion RESOURCES
    Then se abre la seccion de RESOURCES
    When hacemos click en la seccion EVENTS
    Then se abre la seccion EVENTS

  @todo @abrir
  Scenario Outline: abrir las distintas secciones de la web de angular.
    Given el usuario abre la web de angular
    Then la web abierta es la correcta
    When abrir la seccion <seccion>
    Then se abre la seccion <seccion>

    Examples:
      | seccion   |
      | features  |
      | resources |
      | events    |

  @todo @busqueda
  Scenario Outline: realizar varias busquedas
    Given el usuario abre la web de angular
    Then la web abierta es la correcta
    When buscamos la palabra <palabra>

    Examples:
      | palabra      |
      | openwebinars |
      | angular      |