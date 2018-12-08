@JS()
library parse;

import "package:js/js.dart";
import "src/func.dart";

/// Type definitions for parse 2.1.0
/// Project: https://parseplatform.org/
/// Definitions by:  Ullisen Media Group <http://ullisenmedia.com>
/// David Poetzsch-Heffter <https://github.com/dpoetzsch>
/// Cedric Kemp <https://github.com/jaeggerr>
/// Flavio Negrão <https://github.com/flavionegrao>
/// Wes Grimes <https://github.com/wesleygrimes>
/// Otherwise SAS <https://github.com/owsas>
/// Andrew Goldis <https://github.com/agoldis>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped
/// TypeScript Version: 2.4

/// <reference types="node" />

// Module Parse
@JS("Parse.applicationId")
external String get applicationId;
@JS("Parse.applicationId")
external set applicationId(String v);
@JS("Parse.javaScriptKey")
external dynamic /*String|dynamic*/ get javaScriptKey;
@JS("Parse.javaScriptKey")
external set javaScriptKey(dynamic /*String|dynamic*/ v);
@JS("Parse.masterKey")
external dynamic /*String|dynamic*/ get masterKey;
@JS("Parse.masterKey")
external set masterKey(dynamic /*String|dynamic*/ v);
@JS("Parse.serverURL")
external String get serverURL;
@JS("Parse.serverURL")
external set serverURL(String v);
@JS("Parse.liveQueryServerURL")
external String get liveQueryServerURL;
@JS("Parse.liveQueryServerURL")
external set liveQueryServerURL(String v);
@JS("Parse.VERSION")
external String get VERSION;
@JS("Parse.VERSION")
external set VERSION(String v);

@anonymous
@JS()
abstract class SuccessOption {
  external Function get success;
  external set success(Function v);
  external factory SuccessOption({Function success});
}

@anonymous
@JS()
abstract class ErrorOption {
  external Function get error;
  external set error(Function v);
  external factory ErrorOption({Function error});
}

@anonymous
@JS()
abstract class SuccessFailureOptions implements SuccessOption, ErrorOption {
  external factory SuccessFailureOptions({Function success, Function error});
}

@anonymous
@JS()
abstract class SignUpOptions {
  external bool get useMasterKey;
  external set useMasterKey(bool v);
  external String get installationId;
  external set installationId(String v);
  external factory SignUpOptions({bool useMasterKey, String installationId});
}

@anonymous
@JS()
abstract class SessionTokenOption {
  external String get sessionToken;
  external set sessionToken(String v);
  external factory SessionTokenOption({String sessionToken});
}

@anonymous
@JS()
abstract class WaitOption {
  /// Set to true to wait for the server to confirm success
  /// before triggering an event.
  external bool get wait;
  external set wait(bool v);
  external factory WaitOption({bool wait});
}

@anonymous
@JS()
abstract class UseMasterKeyOption {
  /// In Cloud Code and Node only, causes the Master Key to be used for this request.
  external bool get useMasterKey;
  external set useMasterKey(bool v);
  external factory UseMasterKeyOption({bool useMasterKey});
}

@anonymous
@JS()
abstract class ScopeOptions implements SessionTokenOption, UseMasterKeyOption {
  external factory ScopeOptions({String sessionToken, bool useMasterKey});
}

@anonymous
@JS()
abstract class SilentOption {
  /// Set to true to avoid firing the event.
  external bool get silent;
  external set silent(bool v);
  external factory SilentOption({bool silent});
}

@anonymous
@JS()
abstract class Pointer {
  external String get JS$___type;
  external set JS$___type(String v);
  external String get className;
  external set className(String v);
  external String get objectId;
  external set objectId(String v);
  external factory Pointer(
      {String JS$___type, String className, String objectId});
}

@anonymous
@JS()
abstract class IBaseObject {
  external dynamic toJSON();
}

@JS("Parse.BaseObject")
class BaseObject implements IBaseObject {
  // @Ignore
  BaseObject.fakeConstructor$();
  external dynamic toJSON();
}

/// Creates a new ACL.
/// If no argument is given, the ACL has no permissions for anyone.
/// If the argument is a Parse.User, the ACL will have read and write
/// permission for only that user.
/// If the argument is any other JSON object, that object will be interpretted
/// as a serialized ACL created with toJSON().
/// @see Parse.Object#setACL
/// @class
/// <p>An ACL, or Access Control List can be added to any
/// <code>Parse.Object</code> to restrict access to only a subset of users
/// of your application.</p>
@JS("Parse.ACL")
class ACL extends BaseObject {
  // @Ignore
  ACL.fakeConstructor$() : super.fakeConstructor$();
  external dynamic get permissionsById;
  external set permissionsById(dynamic v);
  external factory ACL([dynamic arg1]);
  external void setPublicReadAccess(bool allowed);
  external bool getPublicReadAccess();
  external void setPublicWriteAccess(bool allowed);
  external bool getPublicWriteAccess();
  /*external void setReadAccess(User userId, bool allowed);*/
  /*external void setReadAccess(String userId, bool allowed);*/
  external void setReadAccess(dynamic /*User|String*/ userId, bool allowed);
  /*external bool getReadAccess(User userId);*/
  /*external bool getReadAccess(String userId);*/
  external bool getReadAccess(dynamic /*User|String*/ userId);
  /*external void setRoleReadAccess(Role role, bool allowed);*/
  /*external void setRoleReadAccess(String role, bool allowed);*/
  external void setRoleReadAccess(dynamic /*Role|String*/ role, bool allowed);
  /*external bool getRoleReadAccess(Role role);*/
  /*external bool getRoleReadAccess(String role);*/
  external bool getRoleReadAccess(dynamic /*Role|String*/ role);
  /*external void setRoleWriteAccess(Role role, bool allowed);*/
  /*external void setRoleWriteAccess(String role, bool allowed);*/
  external void setRoleWriteAccess(dynamic /*Role|String*/ role, bool allowed);
  /*external bool getRoleWriteAccess(Role role);*/
  /*external bool getRoleWriteAccess(String role);*/
  external bool getRoleWriteAccess(dynamic /*Role|String*/ role);
  /*external void setWriteAccess(User userId, bool allowed);*/
  /*external void setWriteAccess(String userId, bool allowed);*/
  external void setWriteAccess(dynamic /*User|String*/ userId, bool allowed);
  /*external bool getWriteAccess(User userId);*/
  /*external bool getWriteAccess(String userId);*/
  external bool getWriteAccess(dynamic /*User|String*/ userId);
}

/// A Parse.File is a local representation of a file that is saved to the Parse
/// cloud.
/// @class
/// value once the file has finished saving. The file name must begin with
/// an alphanumeric character, and consist of alphanumeric characters,
/// periods, spaces, underscores, or dashes.
/// 1. an Array of byte value Numbers, or
/// 2. an Object like { base64: "..." } with a base64-encoded String.
/// 3. a File object selected with a file upload control. (3) only works
/// in Firefox 3.6+, Safari 6.0.2+, Chrome 7+, and IE 10+.
/// For example:<pre>
/// var fileUploadControl = $("#profilePhotoFileUpload")[0];
/// if (fileUploadControl.files.length > 0) {
/// var file = fileUploadControl.files[0];
/// var name = "photo.jpg";
/// var parseFile = new Parse.File(name, file);
/// parseFile.save().then(function() {
/// // The file has been saved to Parse.
/// }, function(error) {
/// // The file either could not be read, or could not be saved to Parse.
/// });
/// }</pre>
/// this is omitted, the content type will be inferred from the name's
/// extension.
@JS("Parse.File")
class File {
  // @Ignore
  File.fakeConstructor$();
  external factory File(String name, dynamic data, [String type]);
  external String name();
  external String url();
  external Promise<File> save([SuccessFailureOptions options]);
}

/// Creates a new GeoPoint with any of the following forms:<br>
/// <pre>
/// new GeoPoint(otherGeoPoint)
/// new GeoPoint(30, 30)
/// new GeoPoint([30, 30])
/// new GeoPoint({latitude: 30, longitude: 30})
/// new GeoPoint()  // defaults to (0, 0)
/// </pre>
/// @class
/// <p>Represents a latitude / longitude point that may be associated
/// with a key in a ParseObject or used as a reference point for geo queries.
/// This allows proximity-based queries on the key.</p>
/// <p>Only one key in a class may contain a GeoPoint.</p>
/// <p>Example:<pre>
/// var point = new Parse.GeoPoint(30.0, -20.0);
/// var object = new Parse.Object("PlaceObject");
/// object.set("location", point);
/// object.save();</pre></p>
@JS("Parse.GeoPoint")
class GeoPoint extends BaseObject {
  // @Ignore
  GeoPoint.fakeConstructor$() : super.fakeConstructor$();
  external num get latitude;
  external set latitude(num v);
  external num get longitude;
  external set longitude(num v);
  external factory GeoPoint([dynamic arg1, dynamic arg2]);
  external GeoPoint current([SuccessFailureOptions options]);
  external num radiansTo(GeoPoint point);
  external num kilometersTo(GeoPoint point);
  external num milesTo(GeoPoint point);
}

/// A class that is used to access all of the children of a many-to-many relationship.
/// Each instance of Parse.Relation is associated with a particular parent object and key.
@JS("Parse.Relation")
class Relation<S extends Object, Object, T extends Object, Object>
    extends BaseObject {
  // @Ignore
  Relation.fakeConstructor$() : super.fakeConstructor$();
  external S get parent;
  external set parent(S v);
  external String get key;
  external set key(String v);
  external String get targetClassName;
  external set targetClassName(String v);
  external factory Relation([S parent, String key]);

  /// Adds a Parse.Object or an array of Parse.Objects to the relation.
  external void add(dynamic /*T|List<T>*/ object);

  /// Returns a Parse.Query that is limited to objects in this relation.
  external Query<T> query();

  /// Removes a Parse.Object or an array of Parse.Objects from this relation.
  external void remove(dynamic /*T|List<T>*/ object);
}

/// Creates a new model with defined attributes. A client id (cid) is
/// automatically generated and assigned for you.
/// <p>You won't normally call this method directly.  It is recommended that
/// you use a subclass of <code>Parse.Object</code> instead, created by calling
/// <code>extend</code>.</p>
/// <p>However, if you don't want to use a subclass, or aren't sure which
/// subclass is appropriate, you can use this form:<pre>
/// var object = new Parse.Object("ClassName");
/// </pre>
/// That is basically equivalent to:<pre>
/// var MyClass = Parse.Object.extend("ClassName");
/// var object = new MyClass();
/// </pre></p>
/// @see Parse.Object.extend
/// @class
/// Creates a new model with defined attributes.
@JS("Parse.Object")
class Object extends BaseObject {
  // @Ignore
  Object.fakeConstructor$() : super.fakeConstructor$();
  external String get id;
  external set id(String v);
  external DateTime get createdAt;
  external set createdAt(DateTime v);
  external DateTime get updatedAt;
  external set updatedAt(DateTime v);
  external dynamic get attributes;
  external set attributes(dynamic v);
  external String get cid;
  external set cid(String v);
  external bool get changed;
  external set changed(bool v);
  external String get className;
  external set className(String v);
  /*external factory Object([String className, dynamic options]);*/
  /*external factory Object([List<String> attributes, dynamic options]);*/
  external factory Object(
      [dynamic /*String|List<String>*/ className_attributes, dynamic options]);
  external static dynamic extend(String className,
      [dynamic protoProps, dynamic classProps]);
  external static dynamic fromJSON(dynamic json, bool override);
  external static Promise<List<dynamic/*=T*/ >> fetchAll/*<T extends Object>*/(
      List<dynamic/*=T*/ > list, FetchAllOptions options);
  external static Promise<
      List<
          dynamic/*=T*/ >> fetchAllIfNeeded/*<T extends Object>*/(
      List<dynamic/*=T*/ > list, FetchAllOptions options);
  external static Promise<List<dynamic/*=T*/ >> destroyAll/*<T>*/(
      List<dynamic/*=T*/ > list,
      [DestroyAllOptions options]);
  external static Promise<List<dynamic/*=T*/ >> saveAll/*<T extends Object>*/(
      List<dynamic/*=T*/ > list,
      [SaveAllOptions options]);
  external static void registerSubclass/*<T extends Object>*/(
      String className, clazz);
  external static dynamic/*=T*/ createWithoutData/*<T extends Object>*/(
      String id);
  external void initialize();
  external Object add(String attr, dynamic item);
  external dynamic addUnique(String attr, dynamic item);
  external Object change(dynamic options);
  external bool changedAttributes(dynamic diff);
  external dynamic clear(dynamic options);
  external Object clone();
  external Promise<Object> destroy([DestroyOptions options]);
  external bool dirty([String attr]);
  external List<String> dirtyKeys();
  external String escape(String attr);
  external bool existed();
  external Promise<Object> fetch([FetchOptions options]);
  external dynamic /*dynamic|dynamic*/ JS$get(String attr);
  external dynamic /*ACL|dynamic*/ getACL();
  external bool has(String attr);
  external bool hasChanged(String attr);
  external dynamic increment(String attr, [num amount]);
  external bool isNew();
  external bool isValid();
  external dynamic op(String attr);
  external dynamic previous(String attr);
  external dynamic previousAttributes();
  external Relation<Object, Object> relation(String attr);
  external dynamic remove(String attr, dynamic item);
  external void revert();
  /*external Promise<Object> save([JSMap of <String,dynamic>|Null attrs, SaveOptions options]);*/
  /*external Promise<Object> save(String key, dynamic value, [SaveOptions options]);*/
  /*external Promise<Object> save(object attrs, [SaveOptions options]);*/
  external Promise<Object> save(
      [dynamic /*JSMap of <String,dynamic>|String|object*/ attrs_key,
      dynamic /*SaveOptions|dynamic*/ options_value,
      SaveOptions options]);
  /*external bool JS$set(String key, dynamic value, [SetOptions options]);*/
  /*external bool JS$set(object attrs, [SetOptions options]);*/
  external bool JS$set(dynamic /*String|object*/ key_attrs,
      [dynamic /*dynamic|SetOptions*/ value_options, SetOptions options]);
  external bool setACL(ACL acl, [SuccessFailureOptions options]);
  external Pointer toPointer();
  external dynamic unset(String attr, [dynamic options]);
  external bool validate(dynamic attrs, [SuccessFailureOptions options]);
}

// Module Object
@anonymous
@JS()
abstract class DestroyOptions
    implements SuccessFailureOptions, WaitOption, ScopeOptions {
  external factory DestroyOptions(
      {Function success,
      Function error,
      bool wait,
      String sessionToken,
      bool useMasterKey});
}

@anonymous
@JS()
abstract class DestroyAllOptions
    implements SuccessFailureOptions, ScopeOptions {
  external factory DestroyAllOptions(
      {Function success,
      Function error,
      String sessionToken,
      bool useMasterKey});
}

@anonymous
@JS()
abstract class FetchAllOptions implements SuccessFailureOptions, ScopeOptions {
  external factory FetchAllOptions(
      {Function success,
      Function error,
      String sessionToken,
      bool useMasterKey});
}

@anonymous
@JS()
abstract class FetchOptions implements SuccessFailureOptions, ScopeOptions {
  external factory FetchOptions(
      {Function success,
      Function error,
      String sessionToken,
      bool useMasterKey});
}

@anonymous
@JS()
abstract class SaveOptions
    implements SuccessFailureOptions, SilentOption, ScopeOptions, WaitOption {
  external factory SaveOptions(
      {Function success,
      Function error,
      bool silent,
      String sessionToken,
      bool useMasterKey,
      bool wait});
}

@anonymous
@JS()
abstract class SaveAllOptions implements SuccessFailureOptions, ScopeOptions {
  external factory SaveAllOptions(
      {Function success,
      Function error,
      String sessionToken,
      bool useMasterKey});
}

@anonymous
@JS()
abstract class SetOptions implements ErrorOption, SilentOption {
  external dynamic get promise;
  external set promise(dynamic v);
  external factory SetOptions({dynamic promise, Function error, bool silent});
}

// End module Object
/// Every Parse application installed on a device registered for
/// push notifications has an associated Installation object.
@JS("Parse.Installation")
class Installation extends Object {
  // @Ignore
  Installation.fakeConstructor$() : super.fakeConstructor$();
  external dynamic get badge;
  external set badge(dynamic v);
  external List<String> get channels;
  external set channels(List<String> v);
  external dynamic get timeZone;
  external set timeZone(dynamic v);
  external String get deviceType;
  external set deviceType(String v);
  external String get pushType;
  external set pushType(String v);
  external String get installationId;
  external set installationId(String v);
  external String get deviceToken;
  external set deviceToken(String v);
  external String get channelUris;
  external set channelUris(String v);
  external String get appName;
  external set appName(String v);
  external String get appVersion;
  external set appVersion(String v);
  external String get parseVersion;
  external set parseVersion(String v);
  external String get appIdentifier;
  external set appIdentifier(String v);
}

/// Creates a new parse Parse.Query for the given Parse.Object subclass.
/// An instance of a subclass of Parse.Object, or a Parse className string.
/// @class
/// <p>Parse.Query defines a query that is used to fetch Parse.Objects. The
/// most common use case is finding all objects that match a query through the
/// <code>find</code> method. For example, this sample code fetches all objects
/// of class <code>MyClass</code>. It calls a different function depending on
/// whether the fetch succeeded or not.
/// <pre>
/// var query = new Parse.Query(MyClass);
/// query.find({
/// success: function(results) {
/// // results is an array of Parse.Object.
/// },
/// error: function(error) {
/// // error is an instance of Parse.Error.
/// }
/// });</pre></p>
/// <p>A Parse.Query can also be used to retrieve a single object whose id is
/// known, through the get method. For example, this sample code fetches an
/// object of class <code>MyClass</code> and id <code>myId</code>. It calls a
/// different function depending on whether the fetch succeeded or not.
/// <pre>
/// var query = new Parse.Query(MyClass);
/// query.get(myId, {
/// success: function(object) {
/// // object is an instance of Parse.Object.
/// },
/// error: function(object, error) {
/// // error is an instance of Parse.Error.
/// }
/// });</pre></p>
/// <p>A Parse.Query can also be used to count the number of objects that match
/// the query without retrieving all of those objects. For example, this
/// sample code counts the number of objects of the class <code>MyClass</code>
/// <pre>
/// var query = new Parse.Query(MyClass);
/// query.count({
/// success: function(number) {
/// // There are number instances of MyClass.
/// },
/// error: function(error) {
/// // error is an instance of Parse.Error.
/// }
/// });</pre></p>
@JS("Parse.Query")
class Query<T extends Object, Object> extends BaseObject {
  // @Ignore
  Query.fakeConstructor$() : super.fakeConstructor$();
  external dynamic get objectClass;
  external set objectClass(dynamic v);
  external String get className;
  external set className(String v);
  /*external factory Query(String objectClass);*/
  /*external factory Query(objectClass);*/
  external factory Query(dynamic /*String|dynamic*/ objectClass);
  external static Query<dynamic/*=U*/ > or/*<U extends Object>*/(
      [Query<dynamic/*=U*/ > var_args1,
      Query<dynamic/*=U*/ > var_args2,
      Query<dynamic/*=U*/ > var_args3,
      Query<dynamic/*=U*/ > var_args4,
      Query<dynamic/*=U*/ > var_args5]);
  external Query<T> aggregate(
      dynamic /*AggregationOptions|List<AggregationOptions>*/ pipeline);
  /*external Query<T> addAscending(String key);*/
  /*external Query<T> addAscending(List<String> key);*/
  external Query<T> addAscending(dynamic /*String|List<String>*/ key);
  /*external Query<T> addDescending(String key);*/
  /*external Query<T> addDescending(List<String> key);*/
  external Query<T> addDescending(dynamic /*String|List<String>*/ key);
  /*external Query<T> ascending(String key);*/
  /*external Query<T> ascending(List<String> key);*/
  external Query<T> ascending(dynamic /*String|List<String>*/ key);
  external Query<T> containedIn(String key, List<dynamic> values);
  external Query<T> contains(String key, String substring);
  external Query<T> containsAll(String key, List<dynamic> values);
  external Promise<num> count([CountOptions options]);
  /*external Query<T> descending(String key);*/
  /*external Query<T> descending(List<String> key);*/
  external Query<T> descending(dynamic /*String|List<String>*/ key);
  external Query<T> doesNotExist(String key);
  external Query<T> doesNotMatchKeyInQuery/*<U extends Object>*/(
      String key, String queryKey, Query<dynamic/*=U*/ > query);
  external Query<T> doesNotMatchQuery/*<U extends Object>*/(
      String key, Query<dynamic/*=U*/ > query);
  external Query<T> distinct(String key);
  external Promise<Null> each(Function callback, [EachOptions options]);
  external Query<T> endsWith(String key, String suffix);
  external Query<T> equalTo(String key, dynamic value);
  external Query<T> exists(String key);
  external Promise<List<T>> find([FindOptions options]);
  external Promise<dynamic /*T|dynamic*/ > first([FirstOptions options]);
  external Query<T> fullText(String key, String value,
      [Query.FullTextOptions options]);
  external Promise<T> JS$get(String objectId, [GetOptions options]);
  external Query<T> greaterThan(String key, dynamic value);
  external Query<T> greaterThanOrEqualTo(String key, dynamic value);
  /*external Query<T> include(String key);*/
  /*external Query<T> include(List<String> keys);*/
  external Query<T> include(dynamic /*String|List<String>*/ key_keys);
  external Query<T> lessThan(String key, dynamic value);
  external Query<T> lessThanOrEqualTo(String key, dynamic value);
  external Query<T> limit(num n);
  external Query<T> matches(String key, RegExp regex, dynamic modifiers);
  external Query<T> matchesKeyInQuery/*<U extends Object>*/(
      String key, String queryKey, Query<dynamic/*=U*/ > query);
  external Query<T> matchesQuery/*<U extends Object>*/(
      String key, Query<dynamic/*=U*/ > query);
  external Query<T> near(String key, GeoPoint point);
  external Query<T> notContainedIn(String key, List<dynamic> values);
  external Query<T> notEqualTo(String key, dynamic value);
  external Query<T> select(
      [String keys1, String keys2, String keys3, String keys4, String keys5]);
  external Query<T> skip(num n);
  external Query<T> startsWith(String key, String prefix);
  external LiveQuerySubscription subscribe();
  external Query<T> withinGeoBox(
      String key, GeoPoint southwest, GeoPoint northeast);
  external Query<T> withinKilometers(
      String key, GeoPoint point, num maxDistance);
  external Query<T> withinMiles(String key, GeoPoint point, num maxDistance);
  external Query<T> withinRadians(String key, GeoPoint point, num maxDistance);
}

// Module Query
@anonymous
@JS()
abstract class EachOptions implements SuccessFailureOptions, ScopeOptions {
  external factory EachOptions(
      {Function success,
      Function error,
      String sessionToken,
      bool useMasterKey});
}

@anonymous
@JS()
abstract class CountOptions implements SuccessFailureOptions, ScopeOptions {
  external factory CountOptions(
      {Function success,
      Function error,
      String sessionToken,
      bool useMasterKey});
}

@anonymous
@JS()
abstract class FindOptions implements SuccessFailureOptions, ScopeOptions {
  external factory FindOptions(
      {Function success,
      Function error,
      String sessionToken,
      bool useMasterKey});
}

@anonymous
@JS()
abstract class FirstOptions implements SuccessFailureOptions, ScopeOptions {
  external factory FirstOptions(
      {Function success,
      Function error,
      String sessionToken,
      bool useMasterKey});
}

@anonymous
@JS()
abstract class GetOptions implements SuccessFailureOptions, ScopeOptions {
  external factory GetOptions(
      {Function success,
      Function error,
      String sessionToken,
      bool useMasterKey});
}

/// According to http://docs.parseplatform.org/rest/guide/#aggregate-queries
@anonymous
@JS()
abstract class AggregationOptions {
  external dynamic /*{ objectId?: string, [key:string]: any }*/ get group;
  external set group(dynamic /*{ objectId?: string, [key:string]: any }*/ v);
  external dynamic /*JSMap of <String,dynamic>*/ get match;
  external set match(dynamic /*JSMap of <String,dynamic>*/ v);
  external dynamic /*JSMap of <String,dynamic>*/ get project;
  external set project(dynamic /*JSMap of <String,dynamic>*/ v);
  external num get limit;
  external set limit(num v);
  external num get skip;
  external set skip(num v);

  /// Sort documentation https://docs.mongodb.com/v3.2/reference/operator/aggregation/sort/#pipe._S_sort
  external dynamic /*JSMap of <String,>*/ get sort;
  external set sort(dynamic /*JSMap of <String,>*/ v);
  external factory AggregationOptions(
      {dynamic /*{ objectId?: string, [key:string]: any }*/ group,
      dynamic /*JSMap of <String,dynamic>*/ match,
      dynamic /*JSMap of <String,dynamic>*/ project,
      num limit,
      num skip,
      dynamic /*JSMap of <String,>*/ sort});
}

// End module Query

// End module Parse
/// According to https://parseplatform.org/Parse-SDK-JS/api/2.1.0/Parse.Query.html#fullText
@anonymous
@JS()
abstract class FullTextOptions {
  external String get language;
  external set language(String v);
  external bool get caseSensitive;
  external set caseSensitive(bool v);
  external bool get diacriticSensitive;
  external set diacriticSensitive(bool v);
  external factory FullTextOptions(
      {String language, bool caseSensitive, bool diacriticSensitive});
}

/// Represents a LiveQuery Subscription.
/// @see https://docs.parseplatform.org/js/guide/#live-queries
/// @see NodeJS.EventEmitter
/// Events list
/// ---
/// `open` - when you call `query.subscribe()`, we send a subscribe request to
/// the LiveQuery server, when we get the confirmation from the LiveQuery server,
/// this event will be emitted. When the client loses WebSocket connection to the
/// LiveQuery server, we will try to auto reconnect the LiveQuery server. If we
/// reconnect the LiveQuery server and successfully resubscribe the ParseQuery,
/// you'll also get this event.
/// ```
/// subscription.on('open', () => {});
/// ```
/// ---
/// `create` - when a new ParseObject is created and it fulfills the ParseQuery you subscribe,
/// you'll get this event. The object is the ParseObject which is created.
/// ```
/// subscription.on('create', (object: Parse.Object) => {});
/// ```
/// ---
/// `update` event - when an existing ParseObject which fulfills the ParseQuery you subscribe
/// is updated (The ParseObject fulfills the ParseQuery before and after changes),
/// you'll get this event. The object is the ParseObject which is updated.
/// Its content is the latest value of the ParseObject.
/// ```
/// subscription.on('update', (object: Parse.Object) => {});
/// ```
/// ---
/// `enter` event - when an existing ParseObject's old value doesn't fulfill the ParseQuery
/// but its new value fulfills the ParseQuery, you'll get this event. The object is the
/// ParseObject which enters the ParseQuery. Its content is the latest value of the ParseObject.
/// ```
/// subscription.on('enter', (object: Parse.Object) => {});
/// ```
/// ---
/// `update` event - when an existing ParseObject's old value fulfills the ParseQuery but its new value
/// doesn't fulfill the ParseQuery, you'll get this event. The object is the ParseObject
/// which leaves the ParseQuery. Its content is the latest value of the ParseObject.
/// ```
/// subscription.on('leave', (object: Parse.Object) => {});
/// ```
/// ---
/// `delete` event - when an existing ParseObject which fulfills the ParseQuery is deleted, you'll
/// get this event. The object is the ParseObject which is deleted.
/// ```
/// subscription.on('delete', (object: Parse.Object) => {});
/// ```
/// ---
/// `close` event - when the client loses the WebSocket connection to the LiveQuery
/// server and we stop receiving events, you'll get this event.
/// ```
/// subscription.on('close', () => {});
/// ```
@JS()
class LiveQuerySubscription extends EventEmitter {
  // @Ignore
  LiveQuerySubscription.fakeConstructor$() : super.fakeConstructor$();

  /// Creates an instance of LiveQuerySubscription.
  external factory LiveQuerySubscription(String id, String query,
      [String sessionToken]);

  /// Closes the subscription.
  external void unsubscribe();
}

/// Represents a Role on the Parse server. Roles represent groupings of
/// Users for the purposes of granting permissions (e.g. specifying an ACL
/// for an Object). Roles are specified by their sets of child users and
/// child roles, all of which are granted any permissions that the parent
/// role has.
/// <p>Roles must have a name (which cannot be changed after creation of the
/// role), and must specify an ACL.</p>
/// @class
/// A Parse.Role is a local representation of a role persisted to the Parse
/// cloud.
@JS()
class Role extends Object {
  // @Ignore
  Role.fakeConstructor$() : super.fakeConstructor$();
  external factory Role(String name, ACL acl);
  external Relation<Role, Role> getRoles();
  external Relation<Role, User> getUsers();
  external String getName();
  external dynamic setName(String name, [SuccessFailureOptions options]);
}

@JS()
class Config extends Object {
  // @Ignore
  Config.fakeConstructor$() : super.fakeConstructor$();
  /*external static Promise<Config> JS$get([SuccessFailureOptions options]);*/
  /*external dynamic JS$get(String attr);*/
  external dynamic /*Promise<Config>|dynamic*/ JS$get(
      [dynamic /*SuccessFailureOptions|String*/ options_attr]);
  external static Config current();
  external dynamic escape(String attr);
}

@JS()
class Session extends Object {
  // @Ignore
  Session.fakeConstructor$() : super.fakeConstructor$();
  external static Promise<Session> current();
  external String getSessionToken();
  external bool isCurrentSessionRevocable();
}

/// @class
/// <p>A Parse.User object is a local representation of a user persisted to the
/// Parse cloud. This class is a subclass of a Parse.Object, and retains the
/// same functionality of a Parse.Object, but also extends it with various
/// user specific methods, like authentication, signing up, and validation of
/// uniqueness.</p>
@JS()
class User extends Object {
  // @Ignore
  User.fakeConstructor$() : super.fakeConstructor$();
  external static dynamic /*User|dynamic*/ current();
  /*external static Promise<User> signUp(String username, String password, dynamic attrs, [SignUpOptions options]);*/
  /*external Promise<User> signUp(dynamic attrs, [SignUpOptions options]);*/
  external Promise<User> signUp(dynamic /*String|dynamic*/ username_attrs,
      [dynamic /*String|SignUpOptions*/ password_options,
      dynamic attrs,
      SignUpOptions options]);
  /*external static Promise<User> logIn(String username, String password, [SuccessFailureOptions options]);*/
  /*external Promise<User> logIn([SuccessFailureOptions options]);*/
  external Promise<User> logIn(
      [dynamic /*String|SuccessFailureOptions*/ username_options,
      String password,
      SuccessFailureOptions options]);
  external static Promise<User> logOut();
  external static void allowCustomUserClass(bool isAllowed);
  external static Promise<User> become(String sessionToken,
      [SuccessFailureOptions options]);
  external static Promise<User> requestPasswordReset(String email,
      [SuccessFailureOptions options]);
  external static dynamic extend([dynamic protoProps, dynamic classProps]);
  external bool authenticated();
  external bool isCurrent();
  external dynamic /*String|dynamic*/ getEmail();
  external bool setEmail(String email, [SuccessFailureOptions options]);
  external dynamic /*String|dynamic*/ getUsername();
  external bool setUsername(String username, [SuccessFailureOptions options]);
  external bool setPassword(String password, [SuccessFailureOptions options]);
  external String getSessionToken();
}

// Module Analytics
@JS("Analytics.track")
external Promise<dynamic> track(String name, dynamic dimensions);
// End module Analytics
/// Provides a set of utilities for using Parse with Facebook.
/// @namespace
/// Provides a set of utilities for using Parse with Facebook.

// Module FacebookUtils
@JS("FacebookUtils.init")
external void init([dynamic options]);
@JS("FacebookUtils.isLinked")
external bool isLinked(User user);
@JS("FacebookUtils.link")
external void link(User user, dynamic permissions,
    [SuccessFailureOptions options]);
@JS("FacebookUtils.logIn")
external void logIn(dynamic permissions, [SuccessFailureOptions options]);
@JS("FacebookUtils.unlink")
external void unlink(User user, [SuccessFailureOptions options]);
// End module FacebookUtils
/// @namespace Contains functions for calling and declaring
/// <a href="/docs/cloud_code_guide#functions">cloud functions</a>.
/// <p><strong><em>
/// Some functions are only available from Cloud Code.
/// </em></strong></p>

// Module Cloud
@anonymous
@JS()
abstract class CookieOptions {
  external String get domain;
  external set domain(String v);
  external DateTime get expires;
  external set expires(DateTime v);
  external bool get httpOnly;
  external set httpOnly(bool v);
  external num get maxAge;
  external set maxAge(num v);
  external String get path;
  external set path(String v);
  external bool get secure;
  external set secure(bool v);
  external factory CookieOptions(
      {String domain,
      DateTime expires,
      bool httpOnly,
      num maxAge,
      String path,
      bool secure});
}

@anonymous
@JS()
abstract class HttpResponse {
  external Buffer get buffer;
  external set buffer(Buffer v);
  external dynamic get cookies;
  external set cookies(dynamic v);
  external dynamic get data;
  external set data(dynamic v);
  external dynamic get headers;
  external set headers(dynamic v);
  external num get status;
  external set status(num v);
  external String get text;
  external set text(String v);
  external factory HttpResponse(
      {Buffer buffer,
      dynamic cookies,
      dynamic data,
      dynamic headers,
      num status,
      String text});
}

@anonymous
@JS()
abstract class JobRequest {
  external dynamic get params;
  external set params(dynamic v);
  external factory JobRequest({dynamic params});
}

@anonymous
@JS()
abstract class JobStatus {
  external VoidFunc1<dynamic> get error;
  external set error(VoidFunc1<dynamic> v);
  external VoidFunc1<dynamic> get message;
  external set message(VoidFunc1<dynamic> v);
  external VoidFunc1<dynamic> get success;
  external set success(VoidFunc1<dynamic> v);
  external factory JobStatus(
      {VoidFunc1<dynamic> error,
      VoidFunc1<dynamic> message,
      VoidFunc1<dynamic> success});
}

@anonymous
@JS()
abstract class FunctionRequest {
  external String get installationId;
  external set installationId(String v);
  external bool get master;
  external set master(bool v);
  external dynamic get params;
  external set params(dynamic v);
  external User get user;
  external set user(User v);
  external factory FunctionRequest(
      {String installationId, bool master, dynamic params, User user});
}

@anonymous
@JS()
abstract class FunctionResponse {
  external VoidFunc1<dynamic> get success;
  external set success(VoidFunc1<dynamic> v);
  /*external void error(num code, dynamic response);*/
  /*external void error(dynamic response);*/
  external void error(dynamic /*num|dynamic*/ code_response,
      [dynamic response]);
}

@anonymous
@JS()
abstract class Cookie {
  external String get name;
  external set name(String v);
  external CookieOptions get options;
  external set options(CookieOptions v);
  external String get value;
  external set value(String v);
  external factory Cookie({String name, CookieOptions options, String value});
}

@anonymous
@JS()
abstract class TriggerRequest {
  external String get installationId;
  external set installationId(String v);
  external bool get master;
  external set master(bool v);
  external User get user;
  external set user(User v);
  external String get ip;
  external set ip(String v);
  external dynamic get headers;
  external set headers(dynamic v);
  external String get triggerName;
  external set triggerName(String v);
  external dynamic get log;
  external set log(dynamic v);
  external Object get object;
  external set object(Object v);
  external Object get original;
  external set original(Object v);
  external factory TriggerRequest(
      {String installationId,
      bool master,
      User user,
      String ip,
      dynamic headers,
      String triggerName,
      dynamic log,
      Object object,
      Object original});
}

@anonymous
@JS()
abstract class AfterSaveRequest implements TriggerRequest {
  external factory AfterSaveRequest(
      {String installationId,
      bool master,
      User user,
      String ip,
      dynamic headers,
      String triggerName,
      dynamic log,
      Object object,
      Object original});
}

@anonymous
@JS()
abstract class AfterDeleteRequest implements TriggerRequest {
  external factory AfterDeleteRequest(
      {String installationId,
      bool master,
      User user,
      String ip,
      dynamic headers,
      String triggerName,
      dynamic log,
      Object object,
      Object original});
}

@anonymous
@JS()
abstract class BeforeDeleteRequest implements TriggerRequest {
  external factory BeforeDeleteRequest(
      {String installationId,
      bool master,
      User user,
      String ip,
      dynamic headers,
      String triggerName,
      dynamic log,
      Object object,
      Object original});
}

@anonymous
@JS()
abstract class BeforeDeleteResponse implements FunctionResponse {}

@anonymous
@JS()
abstract class BeforeSaveRequest implements TriggerRequest {
  external factory BeforeSaveRequest(
      {String installationId,
      bool master,
      User user,
      String ip,
      dynamic headers,
      String triggerName,
      dynamic log,
      Object object,
      Object original});
}

@anonymous
@JS()
abstract class BeforeSaveResponse implements FunctionResponse {
  external VoidFunc0 get success;
  external set success(VoidFunc0 v);
}

/// Read preference describes how MongoDB driver route read operations to the members of a replica set.
@JS("Cloud.ReadPreferenceOption")
class ReadPreferenceOption {
  external static num get Primary;
  external static num get PrimaryPreferred;
  external static num get Secondary;
  external static num get SecondaryPreferred;
  external static num get Nearest;
}

@anonymous
@JS()
abstract class BeforeFindRequest implements TriggerRequest {
  external Query get query;
  external set query(Query v);
  external bool get count;
  external set count(bool v);
  external bool get isGet;
  external set isGet(bool v);
  external num /*enum ReadPreferenceOption*/ get readPreference;
  external set readPreference(num /*enum ReadPreferenceOption*/ v);
  external factory BeforeFindRequest(
      {Query query,
      bool count,
      bool isGet,
      num /*enum ReadPreferenceOption*/ readPreference,
      String installationId,
      bool master,
      User user,
      String ip,
      dynamic headers,
      String triggerName,
      dynamic log,
      Object object,
      Object original});
}

@anonymous
@JS()
abstract class AfterFindRequest implements TriggerRequest {
  external List<Object> get objects;
  external set objects(List<Object> v);
  external factory AfterFindRequest(
      {List<Object> objects,
      String installationId,
      bool master,
      User user,
      String ip,
      dynamic headers,
      String triggerName,
      dynamic log,
      Object object,
      Object original});
}

@anonymous
@JS()
abstract class AfterFindResponse implements FunctionResponse {
  external VoidFunc1<List<Object>> get success;
  external set success(VoidFunc1<List<Object>> v);
}

@JS("Cloud.afterDelete")
external void afterDelete(dynamic arg1,
    [void func(AfterDeleteRequest request)]);
@JS("Cloud.afterSave")
external void afterSave(dynamic arg1, [void func(AfterSaveRequest request)]);
@JS("Cloud.beforeDelete")
external void beforeDelete(dynamic arg1,
    [void func(BeforeDeleteRequest request, BeforeDeleteResponse response)]);
@JS("Cloud.beforeSave")
external void beforeSave(dynamic arg1,
    [void func(BeforeSaveRequest request, BeforeSaveResponse response)]);
@JS("Cloud.beforeFind")
external void beforeFind(dynamic arg1, [void func(BeforeFindRequest request)]);
@JS("Cloud.afterFind")
external void afterFind(dynamic arg1,
    [void func(AfterFindRequest request, AfterFindResponse response)]);
@JS("Cloud.define")
external void define(String name,
    [void func(FunctionRequest request, FunctionResponse response)]);
@JS("Cloud.httpRequest")
external Promise<HttpResponse> httpRequest(HTTPOptions options);
@JS("Cloud.job")
external HttpResponse job(String name,
    [void func(JobRequest request, JobStatus status)]);
@JS("Cloud.run")
external Promise<dynamic> run(String name, [dynamic data, RunOptions options]);
@JS("Cloud.useMasterKey")
external void useMasterKey();

@anonymous
@JS()
abstract class RunOptions implements SuccessFailureOptions, ScopeOptions {}

/// To use this Cloud Module in Cloud Code, you must require 'buffer' in your JavaScript file.
/// import Buffer = require("buffer").Buffer;
@JS("Cloud.HTTPOptions")
external get HTTPOptions;
@JS("Cloud.HTTPOptions")
external set HTTPOptions(v);

@JS("Cloud.HTTPOptions")
abstract class HTTPOptions {
  /// The body of the request.
  /// If it is a JSON object, then the Content-Type set in the headers must be application/x-www-form-urlencoded or application/json.
  /// You can also set this to a Buffer object to send raw bytes.
  /// If you use a Buffer, you should also set the Content-Type header explicitly to describe what these bytes represent.
  external dynamic /*String|Buffer|Object*/ get body;
  external set body(dynamic /*String|Buffer|Object*/ v);

  /// Defaults to 'false'.
  external bool get followRedirects;
  external set followRedirects(bool v);

  /// The headers for the request.
  external dynamic /*JSMap of <String,String|num|bool>*/ get headers;
  external set headers(dynamic /*JSMap of <String,String|num|bool>*/ v);

  /// The method of the request (i.e GET, POST, etc).
  external String get method;
  external set method(String v);

  /// The query portion of the url.
  external dynamic get params;
  external set params(dynamic v);

  /// The url to send the request to.
  external String get url;
  external set url(String v);
  external VoidFunc1<dynamic> get success;
  external set success(VoidFunc1<dynamic> v);
  external VoidFunc1<dynamic> get error;
  external set error(VoidFunc1<dynamic> v);
  external factory HTTPOptions(
      {dynamic /*String|Buffer|Object*/ body,
      bool followRedirects,
      dynamic /*JSMap of <String,String|num|bool>*/ headers,
      String method,
      dynamic params,
      String url,
      VoidFunc1<dynamic> success,
      VoidFunc1<dynamic> error});
}

// End module Cloud
@JS()
class Error {
  // @Ignore
  Error.fakeConstructor$();
  external num /*enum ErrorCode*/ get code;
  external set code(num /*enum ErrorCode*/ v);
  external String get message;
  external set message(String v);
  external factory Error(num /*enum ErrorCode*/ code, String message);
}

/// We need to inline the codes in order to make compilation work without this type definition as dependency.
@JS()
class ErrorCode {
  external static num get OTHER_CAUSE;
  external static num get INTERNAL_SERVER_ERROR;
  external static num get CONNECTION_FAILED;
  external static num get OBJECT_NOT_FOUND;
  external static num get INVALID_QUERY;
  external static num get INVALID_CLASS_NAME;
  external static num get MISSING_OBJECT_ID;
  external static num get INVALID_KEY_NAME;
  external static num get INVALID_POINTER;
  external static num get INVALID_JSON;
  external static num get COMMAND_UNAVAILABLE;
  external static num get NOT_INITIALIZED;
  external static num get INCORRECT_TYPE;
  external static num get INVALID_CHANNEL_NAME;
  external static num get PUSH_MISCONFIGURED;
  external static num get OBJECT_TOO_LARGE;
  external static num get OPERATION_FORBIDDEN;
  external static num get CACHE_MISS;
  external static num get INVALID_NESTED_KEY;
  external static num get INVALID_FILE_NAME;
  external static num get INVALID_ACL;
  external static num get TIMEOUT;
  external static num get INVALID_EMAIL_ADDRESS;
  external static num get MISSING_CONTENT_TYPE;
  external static num get MISSING_CONTENT_LENGTH;
  external static num get INVALID_CONTENT_LENGTH;
  external static num get FILE_TOO_LARGE;
  external static num get FILE_SAVE_ERROR;
  external static num get DUPLICATE_VALUE;
  external static num get INVALID_ROLE_NAME;
  external static num get EXCEEDED_QUOTA;
  external static num get SCRIPT_FAILED;
  external static num get VALIDATION_ERROR;
  external static num get INVALID_IMAGE_DATA;
  external static num get UNSAVED_FILE_ERROR;
  external static num get INVALID_PUSH_TIME_ERROR;
  external static num get FILE_DELETE_ERROR;
  external static num get REQUEST_LIMIT_EXCEEDED;
  external static num get INVALID_EVENT_NAME;
  external static num get USERNAME_MISSING;
  external static num get PASSWORD_MISSING;
  external static num get USERNAME_TAKEN;
  external static num get EMAIL_TAKEN;
  external static num get EMAIL_MISSING;
  external static num get EMAIL_NOT_FOUND;
  external static num get SESSION_MISSING;
  external static num get MUST_CREATE_USER_THROUGH_SIGNUP;
  external static num get ACCOUNT_ALREADY_LINKED;
  external static num get INVALID_SESSION_TOKEN;
  external static num get LINKED_ID_MISSING;
  external static num get INVALID_LINKED_SESSION;
  external static num get UNSUPPORTED_SERVICE;
  external static num get AGGREGATE_ERROR;
  external static num get FILE_READ_ERROR;
  external static num get X_DOMAIN_REQUEST;
}

/// @class
/// A Parse.Op is an atomic operation that can be applied to a field in a
/// Parse.Object. For example, calling <code>object.set("foo", "bar")</code>
/// is an example of a Parse.Op.Set. Calling <code>object.unset("foo")</code>
/// is a Parse.Op.Unset. These operations are stored in a Parse.Object and
/// sent to the server as part of <code>object.save()</code> operations.
/// Instances of Parse.Op should be immutable.
/// You should not create subclasses of Parse.Op or instantiate Parse.Op
/// directly.

// Module Op
@anonymous
@JS()
abstract class BaseOperation implements IBaseObject {
  external List<dynamic> objects();
}

@anonymous
@JS()
abstract class Add implements BaseOperation {}

@anonymous
@JS()
abstract class AddUnique implements BaseOperation {}

@anonymous
@JS()
abstract class Increment implements IBaseObject {
  external num get amount;
  external set amount(num v);
  external factory Increment({num amount});
}

@anonymous
@JS()
abstract class Op_Relation implements IBaseObject {
  external List<Object> added();
  external List<Object> get removed;
  external set removed(List<Object> v);
}

@anonymous
@JS()
abstract class Set implements IBaseObject {
  external dynamic value();
}

@anonymous
@JS()
abstract class Unset implements IBaseObject {}

// End module Op
/// Contains functions to deal with Push in Parse
/// @name Parse.Push
/// @namespace

// Module Push
@JS("Push.send")
external Promise<dynamic/*=T*/ > send/*<T>*/(PushData data,
    [SendOptions options]);

@anonymous
@JS()
abstract class PushData {
  external List<String> get channels;
  external set channels(List<String> v);
  external DateTime get push_time;
  external set push_time(DateTime v);
  external DateTime get expiration_time;
  external set expiration_time(DateTime v);
  external num get expiration_interval;
  external set expiration_interval(num v);
  external Query<Installation> get where;
  external set where(Query<Installation> v);
  external dynamic get data;
  external set data(dynamic v);
  external String get alert;
  external set alert(String v);
  external String get badge;
  external set badge(String v);
  external String get sound;
  external set sound(String v);
  external String get title;
  external set title(String v);
  external factory PushData(
      {List<String> channels,
      DateTime push_time,
      DateTime expiration_time,
      num expiration_interval,
      Query<Installation> where,
      dynamic data,
      String alert,
      String badge,
      String sound,
      String title});
}

@anonymous
@JS()
abstract class SendOptions implements UseMasterKeyOption {
  external VoidFunc0 get success;
  external set success(VoidFunc0 v);
  external VoidFunc1<Error> get error;
  external set error(VoidFunc1<Error> v);
  external factory SendOptions({VoidFunc0 success, VoidFunc1<Error> error});
}

// End module Push
/// Call this method first to set up your authentication tokens for Parse.
/// You can get your keys from the Data Browser on parse.com.
@JS()
external void initialize(String applicationId,
    [String javaScriptKey, String masterKey]);

/// Additionally on React-Native / Expo environments, add AsyncStorage from 'react-native' package
@JS()
external void setAsyncStorage(dynamic AsyncStorage);
// Module parse/node
/* WARNING: export assignment not yet supported. */

// End module parse/node

// Module parse
/* WARNING: export assignment not yet supported. */

// End module parse

// Module parse/react-native
/* WARNING: export assignment not yet supported. */

// End module parse/react-native

