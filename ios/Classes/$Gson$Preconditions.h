//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/$Gson$Preconditions.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_$Gson$Preconditions")
#ifdef RESTRICT_$Gson$Preconditions
#define INCLUDE_ALL_$Gson$Preconditions 0
#else
#define INCLUDE_ALL_$Gson$Preconditions 1
#endif
#undef RESTRICT_$Gson$Preconditions

#if !defined (Gson_Gson_Preconditions_) && (INCLUDE_ALL_$Gson$Preconditions || defined(INCLUDE_Gson_Gson_Preconditions))
#define Gson_Gson_Preconditions_

@interface Gson_Gson_Preconditions : NSObject

#pragma mark Public

+ (void)checkArgumentWithBoolean:(jboolean)condition;

+ (id)checkNotNullWithId:(id)obj;

@end

J2OBJC_EMPTY_STATIC_INIT(Gson_Gson_Preconditions)

FOUNDATION_EXPORT id Gson_Gson_Preconditions_checkNotNullWithId_(id obj);

FOUNDATION_EXPORT void Gson_Gson_Preconditions_checkArgumentWithBoolean_(jboolean condition);

J2OBJC_TYPE_LITERAL_HEADER(Gson_Gson_Preconditions)

@compatibility_alias ComGoogleGsonInternal$Gson$Preconditions Gson_Gson_Preconditions;

#endif

#pragma pop_macro("INCLUDE_ALL_$Gson$Preconditions")
