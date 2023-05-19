package hammerspoon;

@:native("hs.logger")
extern class Logger {
  /**
   * Creates a new logger instance
   *
   * Parameters:
   *  * id - a string identifier for the instance (usually the module name)
   *  * loglevel - (optional) can be 'nothing', 'error', 'warning', 'info', 'debug', or 'verbose', or a corresponding number
   *    between 0 and 5; uses `hs.logger.defaultLogLevel` if omitted
   *
   * Returns:
   *  * the new logger instance
   */
  @:native('new') static public function make(namespace:String, level:String):Logger;

  /**
   * Logs debug info to the console
   *
   * Parameters:
   *  * ... - one or more message strings
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function d(...params:Dynamic):Void;

  /**
   * Default log level for new logger instances.
   *
   * The starting value is 'warning'; set this (to e.g. 'info') at the top of your `init.lua` to affect
   * all logger instances created without specifying a `loglevel` parameter
   */
  public var defaultLogLevel(default, null):Int;

  /**
   * Logs formatted debug info to the console
   *
   * Parameters:
   *  * fmt - formatting string as per string.format
   *  * ... - arguments to fmt
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function df(fmt:String, ...params:String):Void;

  /**
   * Logs an error to the console
   *
   * Parameters:
   *  * ... - one or more message strings
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function e(...params:String):Void;

  /**
   * Logs a formatted error to the console
   *
   * Parameters:
   *  * fmt - formatting string as per string.format
   *  * ... - arguments to fmt
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function ef(fmt:String, ...params:Dynamic):Void;

  /**
   * Logs formatted info to the console
   *
   * Parameters:
   *  * fmt - formatting string as per string.format
   *  * ... - arguments to fmt
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function f(fmt:String, ...params:Dynamic):Void;

  /**
   * Gets the log level of the logger instance
   *
   * Parameters:
   *  * None
   *
   * Returns:
   *  * The log level of this logger as a number between 0 and 5
   */
  @:luaDotMethod public function getLogLevel():Int;

  /**
   * Returns the global log history
   *
   * Parameters:
   *  * None
   *
   * Returns:
   *  * a list of (at most `hs.logger.historySize()`) log entries produced by all the logger instances, in chronological order;
   *    each entry is a table with the following fields:
   *    * time - timestamp in seconds since the epoch
   *    * level - a number between 1 (error) and 5 (verbose)
   *    * id - a string containing the id of the logger instance that produced this entry
   *    * message - a string containing the logged message
   */
  @:luaDotMethod public function history():Array< Dynamic >;

  /**
   * Sets or gets the global log history size
   *
   * Parameters:
   *  * size - (optional) the desired number of log entries to keep in the history;
   *    if omitted, will return the current size; the starting value is 0 (disabled)
   *
   * Returns:
   *  * the current or new history size
   *
   * Notes:
   *  * if you change history size (
   * other than from 0) after creating any logger instances, things will likely break
   */
  @:luaDotMethod public function historySize(size:Int = -1):Int;

  /**
   * Logs info to the console
   *
   * Parameters:
   *  * ... - one or more message strings
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function i(...params:String):Void;

  /**
   * The log level of the logger instance, as a number between 0 and 5
   */
  public var level(default, null):Int;

  /**
   * Prints the global log history to the console
   *
   * Parameters:
   *  * entries - (optional) the maximum number of entries to print; if omitted, all entries in the history will be printed
   *  * level - (optional) the desired log level (see `hs.logger.setLogLevel()`); if omitted, defaults to `verbose`
   *  * filter - (optional) a string to filter the entries (by logger id or message) via `string.find` plain matching
   *  * caseSensitive - (optional) if true, filtering is case sensitive
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function printHistory(
    entries:Int = -1,
    level:Int = -1,
    filter:String = "",
    caseSensitive:Bool = false
  ):Void;

  /**
   * Sets the log level for all logger instances (including objects' loggers)
   *
   * Parameters:
   *  * lvl
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod static public function setGlobalLogLevel(lvl:Int):Void;

  /**
   * Sets the log level of the logger instance
   *
   * Parameters:
   *  * loglevel - can be 'nothing', 'error', 'warning', 'info', 'debug', or 'verbose'; or a corresponding number between 0 and 5
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function setLogLevel(loglevel:Int):Void;

  /**
   * Sets the log level for all currently loaded modules
   *
   * Parameters:
   *  * lvl
   *
   * Returns:
   *  * None
   *
   * Notes:
   *  * This function only affects *module*-level loggers, object instances with their own loggers (e.g. windowfilters) won't be affected;
   *    you can use `hs.logger.setGlobalLogLevel()` for those
   */
  @:luaDotMethod static public function setModulesLogLevel(lvl:Int):Void;

  /**
   * Logs verbose info to the console
   *
   * Parameters:
   *  * ... - one or more message strings
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function v(...params:String):Void;

  /**
   * Logs formatted verbose info to the console
   *
   * Parameters:
   *  * fmt - formatting string as per string.format
   *  * ... - arguments to fmt
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function vf(fmt:String, ...params:String):Void;

  /**
   * Logs a warning to the console
   *
   * Parameters:
   *  * ... - one or more message strings
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function w(...params:String):Void;

  /**
   * Logs a formatted warning to the console
   *
   * Parameters:
   *  * fmt - formatting string as per string.format
   *  * ... - arguments to fmt
   *
   * Returns:
   *  * None
   */
  @:luaDotMethod public function wf(fmt:String, ...params:String):Void;
}
