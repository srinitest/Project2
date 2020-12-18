Feature: Adactin Hotel Booking module verification

  Scenario Outline: Booking a hotel with Adactin Hotel providing all the details
    Given User is on the Adactin Login Page
    When User should enter "<userName>","<password>"
    And User should click on login button
    And User should select "<location>","<hotels>","<roomType>","<numOfRooms>","<checkInDate>","<checkOutDate>","<adultPerRoom>","<childPerRoom>"
    And User should click on search button
    And User should click on the preferred hotel radio button
    And User should click on the continue button
    And User should enter "<firstName>","<lastName>","<address>","<ccNum>"
    And User should select the "<cctype>","<expiryMonth>","<expiryYear>"
    And User should enter "<cvvNo>"
    And User should click on booknow button
    Then User should verify whether the orderNo is displayed

    Examples: 
      | userName   | password | location    | hotels         | roomType     | numOfRooms | checkInDate | checkOutDate | adultPerRoom | childPerRoom | firstName | lastName | address                 | ccNum            | cctype           | expiryMonth | expiryYear | cvvNo |
      | vignesh655 | oneplus3 | Los Angeles | Hotel Sunshine | Super Deluxe | 2 - Two    | 16/12/2020  | 17/12/2020   | 2 - Two      | 0 - None     | Virat     | Kohli    | Malviya Nagar,New Delhi | 1234567890123456 | American Express | October     |       2021 |  1234 |
      #| vignesh655 | oneplus3 | Sydney      | Hotel Creek    | Standard     | 3 - Three  | 20/12/2020  | 22/12/2020   | 1 - One      | 1 - One      | Manish    | Kumar    | Mogapair, Chennai       | 9876543210987654 | VISA             | February    |       2022 |   987 |
      #| vignesh655 | oneplus3 | Melbourne   | Hotel Hervey   | Double       | 1 - One    | 25/12/2020  | 26/12/2020   | 3 - Three    | 2 - Two      | Deepak    | Singh    | Saket, Delhi            | 9876543210912345 | Master Card      | January     |       2021 |   564 |
      #| vignesh655 | oneplus3 | London      | Hotel Cornice  | Deluxe       | 5 - Five   | 25/1/2021   | 26/1/2021    | 3 - Three    | 2 - Two      | Sandeep   | Sharma   | Sadar, Mumbai           | 1234543210912345 | Other            | April       |       2021 |  2584 |
      #| vignesh655 | oneplus3 | Brisbane    | Hotel Sunshine | Super Deluxe | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Adelaide    | Hotel Creek    | Super Deluxe | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | New York    | Hotel Cornice  | Super Deluxe | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Hervey   | Super Deluxe | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Hervey   | Super Deluxe | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Sunshine | Super Deluxe | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Cornice  | Super Deluxe | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Standard     | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Double       | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Deluxe       | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 1 - One    | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 2 - Two    | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 3 - Three  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 4 - Four   | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 5 - Five   | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 6 - Six    | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 7 - Seven  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 8 - Eight  | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 9 - Nine   | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 1 - One      | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 2 - Two      | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 3 - Three    | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 4 - Four     | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 4 - Four     | 0 - None     | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 4 - Four     | 1 - One      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 4 - Four     | 2 - Two      | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 4 - Four     | 3 - Three    | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 4 - Four     | 4 - Four     | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 4 - Four     | 4 - Four     | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | American Express | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 4 - Four     | 4 - Four     | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | VISA             | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 4 - Four     | 4 - Four     | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | Master Card      | May         |       2021 |  1445 |
      #| vignesh655 | oneplus3 | Paris       | Hotel Creek    | Super Deluxe | 10 - Ten   | 25/2/2021   | 26/2/2021    | 4 - Four     | 4 - Four     | Piyush    | Naidu    | Sadar, Nagpur           | 1234543289612345 | Other            | May         |       2021 |  1445 |
