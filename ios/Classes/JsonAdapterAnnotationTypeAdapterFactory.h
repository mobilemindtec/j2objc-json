//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/JsonAdapterAnnotationTypeAdapterFactory.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_JsonAdapterAnnotationTypeAdapterFactory")
#ifdef RESTRICT_JsonAdapterAnnotationTypeAdapterFactory
#define INCLUDE_ALL_JsonAdapterAnnotationTypeAdapterFactory 0
#else
#define INCLUDE_ALL_JsonAdapterAnnotationTypeAdapterFactory 1
#endif
#undef RESTRICT_JsonAdapterAnnotationTypeAdapterFactory

#if !defined (GsonJsonAdapterAnnotationTypeAdapterFactory_) && (INCLUDE_ALL_JsonAdapterAnnotationTypeAdapterFactory || defined(INCLUDE_GsonJsonAdapterAnnotationTypeAdapterFactory))
#define GsonJsonAdapterAnnotationTypeAdapterFactory_

#define RESTRICT_TypeAdapterFactory 1
#define INCLUDE_GsonTypeAdapterFactory 1
#include "TypeAdapterFactory.h"

@class GsonConstructorConstructor;
@class GsonGson;
@class GsonTypeAdapter;
@class GsonTypeToken;
@protocol GsonJsonAdapter;

@interface GsonJsonAdapterAnnotationTypeAdapterFactory : NSObject < GsonTypeAdapterFactory >

#pragma mark Public

- (instancetype)initWithGsonConstructorConstructor:(GsonConstructorConstructor *)constructorConstructor;

- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)targetType;

#pragma mark Package-Private

- (GsonTypeAdapter *)getTypeAdapterWithGsonConstructorConstructor:(GsonConstructorConstructor *)constructorConstructor
                                                     withGsonGson:(GsonGson *)gson
                                                withGsonTypeToken:(GsonTypeToken *)type
                                              withGsonJsonAdapter:(id<GsonJsonAdapter>)annotation;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonJsonAdapterAnnotationTypeAdapterFactory)

FOUNDATION_EXPORT void GsonJsonAdapterAnnotationTypeAdapterFactory_initWithGsonConstructorConstructor_(GsonJsonAdapterAnnotationTypeAdapterFactory *self, GsonConstructorConstructor *constructorConstructor);

FOUNDATION_EXPORT GsonJsonAdapterAnnotationTypeAdapterFactory *new_GsonJsonAdapterAnnotationTypeAdapterFactory_initWithGsonConstructorConstructor_(GsonConstructorConstructor *constructorConstructor) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT GsonJsonAdapterAnnotationTypeAdapterFactory *create_GsonJsonAdapterAnnotationTypeAdapterFactory_initWithGsonConstructorConstructor_(GsonConstructorConstructor *constructorConstructor);

J2OBJC_TYPE_LITERAL_HEADER(GsonJsonAdapterAnnotationTypeAdapterFactory)

@compatibility_alias ComGoogleGsonInternalBindJsonAdapterAnnotationTypeAdapterFactory GsonJsonAdapterAnnotationTypeAdapterFactory;

#endif

#pragma pop_macro("INCLUDE_ALL_JsonAdapterAnnotationTypeAdapterFactory")
