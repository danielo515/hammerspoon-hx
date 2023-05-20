package hammerspoon;

@:native("hs.httpserver")
extern class HttpServer {
  @:native("new") @:luaDotMethod static public function make(ssl:Bool, bonjour:Bool):HttpServer;
  public function getInterface():Null< String >;
  public function getName():String;
  public function getPort():Int;
  public function maxBodySize(size:Int):Dynamic;
  public function send(message:String):Void;
  public function setCallback(callback:Dynamic):Void;
  public function setInterface(interfaceName:String):Void;
  public function setName(name:String):Void;
  public function setPassword(password:String):Void;
  public function setPort(port:Int):Void;
  public function start():Void;
  public function stop():Void;
  public function websocket(path:String, callback:Dynamic):Void;
}
