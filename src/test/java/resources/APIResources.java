package resources;

public enum  APIResources {
	
	AddPlaceAPI("/maps/api/place/add/json"),
	getPlaceAPI("/maps/api/place/get/json"),
	deletePlaceAPI("/maps/api/place/delete/json");
	
	private String resource;
	
	APIResources(String resource)
	{
		this.resource=resource;
		System.out.println("test");
		System.out.println("test1");
		System.out.println("test2");
		
	}
	
	public String getResource()
	{
		return resource;
		
	}
}
