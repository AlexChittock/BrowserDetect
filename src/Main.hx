package ;

import flash.Lib;
import flash.external.ExternalInterface;
import flash.system.Capabilities;

/**
 * ...
 * @author Alex Chittock
 */

class Main 
{
	
	static function main() 
	{
		ExternalInterface.addCallback("GetOS", externalOS);
		ExternalInterface.addCallback("GetLang", externalLanguage);
		ExternalInterface.addCallback("GetRes", externalResolution);
		ExternalInterface.addCallback("GetColour", externalScreenColour);
		ExternalInterface.call("OSDetectReady");
	}
	
	public static function externalOS():String {
		return Capabilities.os;
	}
	
	public static function externalLanguage():String {
		return Capabilities.language;
	}
	
	public static function externalResolution():String {
		return Capabilities.screenResolutionX + " x " + Capabilities.screenResolutionY;
	}
	
	public static function externalScreenColour():String {
		return Capabilities.screenColor;
	}
	
}