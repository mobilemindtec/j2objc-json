//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/SerializedName.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_SerializedName")
#ifdef RESTRICT_SerializedName
#define INCLUDE_ALL_SerializedName 0
#else
#define INCLUDE_ALL_SerializedName 1
#endif
#undef RESTRICT_SerializedName

#if !defined (GsonSerializedName_) && (INCLUDE_ALL_SerializedName || defined(INCLUDE_GsonSerializedName))
#define GsonSerializedName_

#define RESTRICT_JavaLangAnnotationAnnotation 1
#define INCLUDE_JavaLangAnnotationAnnotation 1
#include "java/lang/annotation/Annotation.h"

@class IOSClass;

@protocol GsonSerializedName < JavaLangAnnotationAnnotation >

@property (readonly) NSString *value;

@end

@interface GsonSerializedName : NSObject < GsonSerializedName > {
 @public
  NSString *value_;
}

@end

J2OBJC_EMPTY_STATIC_INIT(GsonSerializedName)

FOUNDATION_EXPORT id<GsonSerializedName> create_GsonSerializedName(NSString *value);

J2OBJC_TYPE_LITERAL_HEADER(GsonSerializedName)

#define ComGoogleGsonAnnotationsSerializedName GsonSerializedName

#endif

#pragma pop_macro("INCLUDE_ALL_SerializedName")