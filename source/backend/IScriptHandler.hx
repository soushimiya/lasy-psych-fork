package backend;

import flixel.util.FlxDestroyUtil;

interface IScriptHandler extends IFlxDestroyable
{
    public var scriptType:ScriptType;
    public var scriptName:String;

    public function get(variable:String):Dynamic;
    // it has fucking allowOverride cuz of Iris fuuuck
    public function set(variable:String, value:Dynamic, ?allowOverride:Bool):Void;

    public function call(func:String, ?args:Array<Dynamic>):Dynamic;
}

enum abstract ScriptType(String) to String
{
    var UNKNOWN = "unknown";
    var LUA = "lua";
    var HSCRIPT = "hscript";
}