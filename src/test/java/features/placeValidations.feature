Feature: Validating Place API's 

Scenario Outline:: Verify if Place is being Succesfully added using AddPlaceAPI 
	Given Add Place Payload "<name>" "<language>" "<address>"
	When User calls "addPlaceAPI" with "POST" Http request
	Then The API call is success with status code 200
	And "status" in response body is "OK"
	And "scope" in response body is "APP"
	
Examples:
	|name   | language | address|
	|AAHouse| English  | World cross center|
	|BBHouse| Spanish  | Sea cross center|
	