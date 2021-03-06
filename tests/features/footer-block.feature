@api
Feature: Corporate blocks feature
  In order to be able to showcase Corporate blocks
  As an anonymous user
  I want to use corporate blocks

  Scenario Outline: On any pages we have correct urls in corporate footer block for many languages
    Given the following languages are available:
      | languages |
      | en        |
      | fr        |
    When I am on "the <path> page"
    Then I should see "European Commission" in the "footer" region
    And I should see "Follow the European Commission" in the "footer" region
    And I should see "European Union" in the "footer" region
    And Links in the "footer" region contains the links:
    | Commission and its priorities           | https://ec.europa.eu/commission/index_en                                    |
    | Policies, information and services      | https://ec.europa.eu/info/index_en                                          |
    | Facebook                                | https://www.facebook.com/EuropeanCommission                                 |
    | Twitter                                 | https://twitter.com/EU_commission                                           |
    | Other social media                      | https://europa.eu/european-union/contact/social-networks_en#n:+i:4+e:1+t:+s |
    | EU institutions                         | https://europa.eu/european-union/about-eu/institutions-bodies_en            |
    | European Union                          | https://europa.eu/european-union/index_en                                   |
    | About the Commission's new web presence | https://ec.europa.eu/info/about-commissions-new-web-presence_en             |
    | Language policy                         | https://ec.europa.eu/info/language-policy_en                                |
    | Resources for partners                  | https://ec.europa.eu/info/resources-partners_en                             |
    | Cookies                                 | https://ec.europa.eu/info/cookies_en                                        |
    | Privacy policy                          | https://ec.europa.eu/info/privacy-policy_en                                 |
    | Legal notice                            | https://ec.europa.eu/info/legal-notice_en                                   |
    | Contact                                 | https://ec.europa.eu/info/contact_en                                        |

    When I click "French" in the "header"
    Then I should see "Commission européenne" in the "footer" region
    And I should see "Suivre la Commission européenne" in the "footer" region
    And I should see "Union européenne" in the "footer" region
    And Links in the "footer" region contains the links:
    | La Commission et ses priorités                               | https://ec.europa.eu/commission/index_fr                                    |
    | Politiques, informations et services                         | https://ec.europa.eu/info/index_fr                                          |
    | Facebook                                                     | https://www.facebook.com/EuropeanCommission                                 |
    | Twitter                                                      | https://twitter.com/EU_commission                                           |
    | Autres réseaux sociaux                                       | https://europa.eu/european-union/contact/social-networks_fr#n:+i:4+e:1+t:+s |
    | Institutions de l’UE                                         | https://europa.eu/european-union/about-eu/institutions-bodies_fr            |
    | Union européenne                                             | https://europa.eu/european-union/index_fr                                   |
    | À propos de la nouvelle présence de la Commission sur le web | https://ec.europa.eu/info/about-commissions-new-web-presence_fr             |
    | Politique linguistique                                       | https://ec.europa.eu/info/language-policy_fr                                |
    | Resources for partners                                       | http://ec.europa.eu/info/resources-partners_fr                             |
    | Cookies                                                      | https://ec.europa.eu/info/cookies_fr                                        |
    | Protection de la vie privée                                  | https://ec.europa.eu/info/privacy-policy_fr                                 |
    | Avis juridique                                               | https://ec.europa.eu/info/legal-notice_fr                                   |
    | Contact                                                      | https://ec.europa.eu/info/contact_fr                                        |

    Examples:
    | path  |
    | home  |
    | login |
