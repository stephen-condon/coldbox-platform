<!-----------------------------------------------------------------------
Author 	 :	ehMainTest.cfc
Date     :	September 25, 2005
Description :

	Unit test for the ehMain Handler.

----------------------------------------------------------------------->
<cfcomponent name="ehMainTest" extends="baseTest" output="false">

	<cffunction name="testonAppInit" access="public" returntype="void" output="false">
		<cfscript>
		var event = "";
		
		//Place any variables on the form or URL scope to test the handler.
		//FORM.name = "luis"
		event = execute("ehMain.onAppInit");
			
		//Do your asserts below
				
		</cfscript>
	</cffunction>

	<cffunction name="testonRequestStart" access="public" returntype="void" output="false">
		<cfscript>
		var event = "";
		
		//Place any variables on the form or URL scope to test the handler.
		//FORM.name = "luis"
		event = execute("ehMain.onRequestStart");
			
		//Do your asserts below
				
		</cfscript>
	</cffunction>

	<cffunction name="testonRequestEnd" access="public" returntype="void" output="false">
		<cfscript>
		var event = "";
		
		//Place any variables on the form or URL scope to test the handler.
		//FORM.name = "luis"
		event = execute("ehMain.onRequestEnd");
			
		//Do your asserts below
			
		</cfscript>
	</cffunction>

	<cffunction name="testonException" access="public" returntype="void" output="false">
		<cfscript>
		//You need to create an exception bean first and place it on the request context FIRST as a setup.
		var exceptionBean = CreateObject("component","coldbox.system.beans.exceptionBean");
		var event = "";
		
		//Initialize an exception
		exceptionBean.init(erroStruct=structnew(), extramessage="My unit test exception", extraInfo="Any extra info, simple or complex");
		//Place it on form or url scope to attach it to request
		FORM.exceptionBean = exceptionBean;
		
		//TEST EVENT EXECUTION
		event = execute("ehMain.onException");
		
		//Do your asserts HERE

		</cfscript>
	</cffunction>


</cfcomponent>