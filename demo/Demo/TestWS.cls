/// Test WS class
Class Demo.TestWS Extends %SOAP.WebService
{

// Parameter ADAPTER = "EnsLib.SOAP.InboundAdapter";

Parameter ADAPTER;

/// Name of the web service
Parameter SERVICENAME = "TestWS";

/// TODO: Change to a valid network address
/// URL for invoking the web service
Parameter LOCATION = "http://192.168.10.20:52773/ws/";

/// TODO: Change this to actual SOAP namespace
/// SOAP namespace for the WebService
Parameter NAMESPACE = "http://tempuri.org";

Method Concat(p1 As %String, p2 As %String) As %String [ WebMethod ]
{
	set p1 = p1 +1
	Quit p1 _ p2
}

}
