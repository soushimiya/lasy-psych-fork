package backend;

interface IScriptHandler
{
    public var scriptType:ScriptType;

    public function get(variable:String):Dynamic;
    public function set(variable:String, value:Dynamic):Void;

    public function call(func:String, ?args:Array<String>):Dynamic;
}

enum abstract ScriptType(String) to String
{
    var UNKNOWN = "unknown";
    var LUA = "lua";
    var HSCRIPT = "hscript";
}