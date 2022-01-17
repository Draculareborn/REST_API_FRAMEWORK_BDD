package stepDefinations;

import java.io.IOException;

import io.cucumber.java.Before;

public class Hooks {
	
	@Before("@DeletePlace")
	public void beforeScenario() throws IOException
	{
		StepDefination sd = new StepDefination();
		if(StepDefination.place_id==null)
		{
			sd.add_place_payload("Singh", "French", "Asia");
			sd.user_calls_with_post_http_request("addPlaceAPI", "POST");
			sd.verify_place_id_created_maps_to_using("Singh", "getPlaceAPI");
		}	
	}

}
