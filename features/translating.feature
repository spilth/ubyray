Feature: Translating

  Scenario Outline: Translate Words
    Given the word "<Original>"
    When the translator is run
    Then it generates the translation "<Translated>"

    Examples:
      | Original | Translated |
      | ruby     | ubyray     |
      | Ruby     | Ubyray     |

