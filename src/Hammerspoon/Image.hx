package hammerspoon;

@:native("hs.image")
extern class Image {
  static public var additionalImageNames:Dynamic;
  public function bitmapRepresentation(size:Dynamic, gray:Bool):Image;
  public function colorAt(point:Dynamic):Dynamic;
  public function copy():Image;
  public function croppedCopy(rectangle:Dynamic):Image;
  overload public function encodeAsURLString():String;
  overload public function encodeAsURLString(scale:Bool, type:String):String;
  static public function getExifFromPath(path:String):Dynamic;
  static public function iconForFile(file:Dynamic):Null< Image >;
  static public function iconForFileType(fileType:String):Null< Image >;
  static public function imageFromAppBundle(bundleID:String):Null< Image >;
  static public function imageFromASCII(ascii:String, context:Dynamic):Null< Image >;
  static public function imageFromMediaFile(file:String):Image;
  static public function imageFromName(name:String):Null< Image >;
  static public function imageFromPath(path:String):Null< Image >;
  static public function imageFromURL(url:String, callbackFn:Dynamic):Null< Image >;
  public function name(name:String):Dynamic;
  public function saveToFile(filename:String, scale:Bool, filetype:String):Bool;
  public function size(size:Dynamic, absolute:Bool):Dynamic;
  static public var systemImageNames:Dynamic;
  public function template(state:Bool):Dynamic;
  public function toASCII(width:Int, height:Int):String;
}
