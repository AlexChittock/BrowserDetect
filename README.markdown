# BrowserDetect

This is a small flash file designed to probe the client's system and gain information beyond the scope available with JS.

## Information currently available

- Operating system - GetOS()
- System language - GetLang()
- Screen resolution - GetRes()
- Screen colours - GetColour()

## Example

The flash file is hard-wired to call "OSDetectReady" when the flash file has loaded.


> function OSDetectReady() {
> 	var obj = swfobject.getObjectById("flash-detect-placeholder");
> 	if (obj) {
> 		$("input[name=OperatingSystem]").val(obj.GetOS());
> 		$("input[name=Resolution]").val(obj.GetRes());
> 		$("input[name=ScreenDepth]").val(obj.GetColour());
> 	}
> }