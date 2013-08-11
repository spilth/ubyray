Feature: Translating

  Scenario Outline: Translate Words
    Given the input "<Input>"
    When the translator is run
    Then the output should be "<Output>"

    Examples:
      | Input | Output |
      | ruby  | ubyray |
      | Ruby  | Ubyray |

