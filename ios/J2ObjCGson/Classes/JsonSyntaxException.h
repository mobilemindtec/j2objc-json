//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/JsonSyntaxException.java
//

#ifndef JsonSyntaxException_H
#define JsonSyntaxException_H

#if __has_feature(nullability)
#pragma clang diagnostic push
#pragma GCC diagnostic ignored "-Wnullability"
#pragma GCC diagnostic ignored "-Wnullability-completeness"
#endif

#include "J2ObjC_header.h"
#include "JsonParseException.h"

@class JavaLangThrowable;

@interface GsonJsonSyntaxException : GsonJsonParseException

#pragma mark Public

- (instancetype __nonnull)initWithNSString:(NSString *)msg;

- (instancetype __nonnull)initWithNSString:(NSString *)msg
                     withJavaLangThrowable:(JavaLangThrowable *)cause;

- (instancetype __nonnull)initWithJavaLangThrowable:(JavaLangThrowable *)cause;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonJsonSyntaxException)

FOUNDATION_EXPORT void GsonJsonSyntaxException_initWithNSString_(GsonJsonSyntaxException *self, NSString *msg);

FOUNDATION_EXPORT GsonJsonSyntaxException *new_GsonJsonSyntaxException_initWithNSString_(NSString *msg) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GsonJsonSyntaxException *create_GsonJsonSyntaxException_initWithNSString_(NSString *msg);

FOUNDATION_EXPORT void GsonJsonSyntaxException_initWithNSString_withJavaLangThrowable_(GsonJsonSyntaxException *self, NSString *msg, JavaLangThrowable *cause);

FOUNDATION_EXPORT GsonJsonSyntaxException *new_GsonJsonSyntaxException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GsonJsonSyntaxException *create_GsonJsonSyntaxException_initWithNSString_withJavaLangThrowable_(NSString *msg, JavaLangThrowable *cause);

FOUNDATION_EXPORT void GsonJsonSyntaxException_initWithJavaLangThrowable_(GsonJsonSyntaxException *self, JavaLangThrowable *cause);

FOUNDATION_EXPORT GsonJsonSyntaxException *new_GsonJsonSyntaxException_initWithJavaLangThrowable_(JavaLangThrowable *cause) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GsonJsonSyntaxException *create_GsonJsonSyntaxException_initWithJavaLangThrowable_(JavaLangThrowable *cause);

J2OBJC_TYPE_LITERAL_HEADER(GsonJsonSyntaxException)

@compatibility_alias ComGoogleGsonJsonSyntaxException GsonJsonSyntaxException;


#if __has_feature(nullability)
#pragma clang diagnostic pop
#endif
#endif // JsonSyntaxException_H
