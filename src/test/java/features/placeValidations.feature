Feature: Validating the Place API's

@AddPlace @Regression
Scenario Outline: Verify if Place is being Successfully added using AddPlaceAPI
	Given Add Place Payload with "<name>" "<languages>" "<address>"
	When user calls "AddPlaceAPI" with "POST" http request
	Then the response API call is success with status code 200
	And "status" in response body is "OK"
	And "scope" in response body is "APP"
	And verify place_id created maps to "<name>" using "getPlaceAPI"


Examples:
	|name 	 |languages	|address| 
	|AAhouse |English	|World Cross |
	
	
@DeletePlace @Regression
Scenario: Verify if Delete Place functionality is working

	Given Delete PLace Payload
	When user calls "deletePlaceAPI" with "POST" http request
	Then the response API call is success with status code 200
	And "status" in response body is "OK"