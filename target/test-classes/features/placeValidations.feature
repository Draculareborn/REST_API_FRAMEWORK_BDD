Feature: Validating Place API's 
@AddPlace @Regression
Scenario Outline:: Verify if Place is being Succesfully added using AddPlaceAPI 
	Given Add Place Payload "<name>" "<language>" "<address>"
	When User calls "addPlaceAPI" with "POST" Http request
	Then The API call is success with status code 200
	And "status" in response body is "OK"
	And "scope" in response body is "APP"
	And verify place_id created maps to "<name>" using "getPlaceAPI"
	
Examples:
	|name   | language | address|
	|AAHouse| English  | World cross center|
#	|BBHouse| Spanish  | Sea cross center|

@DeletePlace @Regression
Scenario: Verify if Delete Place functionality is working
	Given Delete Place Payload
	When User calls "deletePlaceAPI" with "POST" Http request
	Then The API call is success with status code 200
	And "status" in response body is "OK"
	