package hammerspoon;

/**
  * Serialize simple Lua variables across Hammerspoon launches.
  * Settings

  /**
  * Serialize simple Lua variables across Hammerspoon launches.
  * Settings must have a string key and must be made up of serializable Lua objects
  * (string, number, boolean, nil, tables of such, etc.).
 */
@:native("hs.settings")
extern class Settings {
  /**
   * A string representing the ID of the bundle Hammerspoon's settings are stored in.
   * You can use this with the command line tool `defaults` or other tools which
   * allow access to the `User Defaults` of applications, to access these outside of Hammerspoon.
   */
  static public var bundleID:String;

  /**
   * A string representing the expected format of date and time when presenting
   * the date and time as a string to `hs.setDate()`. e.g. `os.date(hs.settings.dateFormat)`.
   */
  static public var dateFormat:String;

  /**
   * Deletes a setting.
   *
   * @param key A string containing the name of a setting
   * @return A boolean, true if the setting was deleted, otherwise false
   */
  @:luaDotMethod static public function clear(key:String):Bool;

  /**
   * Loads a setting.
   *
   * @param key A string containing the name of the setting
   * @return The value of the setting
   */
  @:luaDotMethod static public function get(key:String):Null< Dynamic >;

  /**
   * Gets all of the previously stored setting names.
   *
   * @return A table containing all of the settings keys in Hammerspoon's settings
   */
  @:luaDotMethod static public function getKeys():Array< String >;

  /**
   * Saves a setting with common datatypes.
   *
   * @param key A string containing the name of the setting
   * @param val An optional value for the setting. Valid datatypes are: string, number, boolean, nil, table (which may contain any of the same valid datatypes)
   */
  @:luaDotMethod static public function set(key:String, val:Dynamic):Void;

  /**
   * Saves a setting with raw binary data.
   *
   * @param key A string containing the name of the setting
   * @param val Some raw binary data
   */
  @:luaDotMethod static public function setData(key:String, val:Dynamic):Void;

  /**
   * Saves a setting with a date.
   *
   * @param key A string containing the name of the setting
   * @param val A number representing seconds since `1970-01-01 00:00:00 +0000` (e.g. `os.time()`), or a string containing a date in RFC3339 format (`YYYY-MM-DD[T]HH:MM:SS[Z]`)
   */
  @:luaDotMethod static public function setDate(key:String, val:Dynamic):Void;

  /**
   * Get or set a watcher to invoke a callback when the specified settings key changes.
   *
   * @param identifier A required string used as an identifier for this callback
   * @param key The settings key to watch for changes to
   * @param fn The callback function to be invoked when the specified key changes. If this is an explicit nil, removes the existing callback.
   * @return If a callback is set or removed, returns the identifier; otherwise returns the current callback function or nil if no callback function is currently defined.
   */
  @:luaDotMethod static public function watchKey(identifier:String, key:String, fn:Dynamic):Dynamic;
}
