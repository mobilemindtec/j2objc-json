//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/JsonElement.java
//

#ifndef JsonElement_H
#define JsonElement_H

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#include "J2ObjC_header.h"

@class GsonJsonArray;
@class GsonJsonNull;
@class GsonJsonObject;
@class GsonJsonPrimitive;
@class JavaLangBoolean;
@class JavaMathBigDecimal;
@class JavaMathBigInteger;

@interface GsonJsonElement : NSObject

#pragma mark Public

- (instancetype __nonnull)init;

- (GsonJsonElement *)deepCopy;

- (JavaMathBigDecimal *)getAsBigDecimal;

- (JavaMathBigInteger *)getAsBigInteger;

- (jboolean)getAsBoolean;

- (jbyte)getAsByte;

- (jchar)getAsCharacter;

- (jdouble)getAsDouble;

- (jfloat)getAsFloat;

- (jint)getAsInt;

- (GsonJsonArray *)getAsJsonArray;

- (GsonJsonNull *)getAsJsonNull;

- (GsonJsonObject *)getAsJsonObject;

- (GsonJsonPrimitive *)getAsJsonPrimitive;

- (jlong)getAsLong;

- (NSNumber *)getAsNumber;

- (jshort)getAsShort;

- (NSString *)getAsString;

- (jboolean)isJsonArray;

- (jboolean)isJsonNull;

- (jboolean)isJsonObject;

- (jboolean)isJsonPrimitive;

- (NSString *)description;

#pragma mark Package-Private

- (JavaLangBoolean *)getAsBooleanWrapper;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonJsonElement)

FOUNDATION_EXPORT void GsonJsonElement_init(GsonJsonElement *self);

J2OBJC_TYPE_LITERAL_HEADER(GsonJsonElement)

@compatibility_alias ComGoogleGsonJsonElement GsonJsonElement;


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#endif // JsonElement_H
