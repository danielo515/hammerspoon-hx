package hammerspoon;

@:native("hs.json")
extern class Json {
  /**
   * Decodes JSON into a table
   *
   * Parameters:
   *  * jsonString - A string containing some JSON data
   *
   * Returns:
   *  * A table representing the supplied JSON data
   *
   * Notes:
   *  * This is useful for retrieving some of the more complex lua table structures as a persistent setting (see `hs.settings`)
   */
  @:luaDotMethod static public function decode(jsonString:String):Null< Dynamic >;

  /**
   * Encodes a table as JSON
   *
   * Parameters:
   *  * val         - A table containing data to be encoded as JSON
   *  * prettyprint - An optional boolean, true to format the JSON for human readability, false to format the JSON for size efficiency. Defaults to false
   *
   * Returns:
   *  * A string containing a JSON representation of the supplied table
   *
   * Notes:
   *  * This is useful for storing some of the more complex lua table structures as a persistent setting (see `hs.settings`)
   */
  @:luaDotMethod static public function encode(val:Dynamic, ?prettyprint:Bool):String;

  /**
   * Decodes JSON file into a table.
   *
   * Parameters:
   *  * path - The path and filename of the JSON file to read.
   *
   * Returns:
   *  * A table representing the supplied JSON data, or `nil` if an error occurs.
   */
  @:luaDotMethod static public function read(path:String):Dynamic;

  /**
   * Encodes a table as JSON to a file
   *
   * Parameters:
   *  * data       - A table containing data to be encoded as JSON
   *  * path       - The path and filename of the JSON file to write to
   *  * prettyprint - An optional boolean, `true` to format the JSON for human readability, `false` to format the JSON for size efficiency. Defaults to `false`
   *  * replace     - An optional boolean, `true` to replace an existing file at the same path if one exists. Defaults to `false`
   *
   * Returns:
   *  * `true` if successful otherwise `false` if an error has occurred
   */
  @:luaDotMethod static public function write(data:Dynamic, path:String, ?prettyprint:Bool, ?replace:Bool):Bool;
}
