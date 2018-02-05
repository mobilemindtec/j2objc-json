//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/JsonWriter.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JsonWriter")
#ifdef RESTRICT_JsonWriter
#define INCLUDE_ALL_JsonWriter 0
#else
#define INCLUDE_ALL_JsonWriter 1
#endif
#undef RESTRICT_JsonWriter

#if !defined (GsonJsonWriter_) && (INCLUDE_ALL_JsonWriter || defined(INCLUDE_GsonJsonWriter))
#define GsonJsonWriter_

#define RESTRICT_JavaIoCloseable 1
#define INCLUDE_JavaIoCloseable 1
#include "java/io/Closeable.h"

#define RESTRICT_JavaIoFlushable 1
#define INCLUDE_JavaIoFlushable 1
#include "java/io/Flushable.h"

@class JavaIoWriter;
@class JavaLangBoolean;

@interface GsonJsonWriter : NSObject < JavaIoCloseable, JavaIoFlushable >

#pragma mark Public

- (instancetype)initWithJavaIoWriter:(JavaIoWriter *)outArg;

- (GsonJsonWriter *)beginArray;

- (GsonJsonWriter *)beginObject;

- (void)close;

- (GsonJsonWriter *)endArray;

- (GsonJsonWriter *)endObject;

- (void)flush;

- (jboolean)getSerializeNulls;

- (jboolean)isHtmlSafe;

- (jboolean)isLenient;

- (GsonJsonWriter *)jsonValueWithNSString:(NSString *)value;

- (GsonJsonWriter *)nameWithNSString:(NSString *)name;

- (GsonJsonWriter *)nullValue;

- (void)setHtmlSafeWithBoolean:(jboolean)htmlSafe;

- (void)setIndentWithNSString:(NSString *)indent;

- (void)setLenientWithBoolean:(jboolean)lenient;

- (void)setSerializeNullsWithBoolean:(jboolean)serializeNulls;

- (GsonJsonWriter *)valueWithBoolean:(jboolean)value;

- (GsonJsonWriter *)valueWithJavaLangBoolean:(JavaLangBoolean *)value;

- (GsonJsonWriter *)valueWithDouble:(jdouble)value;

- (GsonJsonWriter *)valueWithLong:(jlong)value;

- (GsonJsonWriter *)valueWithNSNumber:(NSNumber *)value;

- (GsonJsonWriter *)valueWithNSString:(NSString *)value;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_STATIC_INIT(GsonJsonWriter)

FOUNDATION_EXPORT void GsonJsonWriter_initWithJavaIoWriter_(GsonJsonWriter *self, JavaIoWriter *outArg);

FOUNDATION_EXPORT GsonJsonWriter *new_GsonJsonWriter_initWithJavaIoWriter_(JavaIoWriter *outArg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GsonJsonWriter *create_GsonJsonWriter_initWithJavaIoWriter_(JavaIoWriter *outArg);

J2OBJC_TYPE_LITERAL_HEADER(GsonJsonWriter)

@compatibility_alias ComGoogleGsonStreamJsonWriter GsonJsonWriter;

#endif

#pragma pop_macro("INCLUDE_ALL_JsonWriter")