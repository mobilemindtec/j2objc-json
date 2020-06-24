//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/TypeAdapterRuntimeTypeWrapper.java
//

#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonWriter.h"
#include "ReflectiveTypeAdapterFactory.h"
#include "TypeAdapter.h"
#include "TypeAdapterRuntimeTypeWrapper.h"
#include "TypeToken.h"
#include "java/lang/reflect/Type.h"
#include "java/lang/reflect/TypeVariable.h"

@interface GsonTypeAdapterRuntimeTypeWrapper () {
 @public
  GsonGson *context_;
  GsonTypeAdapter *delegate_;
  id<JavaLangReflectType> type_;
}

- (id<JavaLangReflectType>)getRuntimeTypeIfMoreSpecificWithJavaLangReflectType:(id<JavaLangReflectType>)type
                                                                        withId:(id)value;

@end

J2OBJC_FIELD_SETTER(GsonTypeAdapterRuntimeTypeWrapper, context_, GsonGson *)
J2OBJC_FIELD_SETTER(GsonTypeAdapterRuntimeTypeWrapper, delegate_, GsonTypeAdapter *)
J2OBJC_FIELD_SETTER(GsonTypeAdapterRuntimeTypeWrapper, type_, id<JavaLangReflectType>)

__attribute__((unused)) static id<JavaLangReflectType> GsonTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(GsonTypeAdapterRuntimeTypeWrapper *self, id<JavaLangReflectType> type, id value);

@implementation GsonTypeAdapterRuntimeTypeWrapper

- (instancetype)initWithGsonGson:(GsonGson *)context
             withGsonTypeAdapter:(GsonTypeAdapter *)delegate
         withJavaLangReflectType:(id<JavaLangReflectType>)type {
  GsonTypeAdapterRuntimeTypeWrapper_initWithGsonGson_withGsonTypeAdapter_withJavaLangReflectType_(self, context, delegate, type);
  return self;
}

- (id)readWithGsonJsonReader:(GsonJsonReader *)inArg {
  return [((GsonTypeAdapter *) nil_chk(delegate_)) readWithGsonJsonReader:inArg];
}

- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(id)value {
  GsonTypeAdapter *chosen = delegate_;
  id<JavaLangReflectType> runtimeType = GsonTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(self, type_, value);
  if (runtimeType != type_) {
    GsonTypeAdapter *runtimeTypeAdapter = [((GsonGson *) nil_chk(context_)) getAdapterWithGsonTypeToken:GsonTypeToken_getWithJavaLangReflectType_(runtimeType)];
    if (!([runtimeTypeAdapter isKindOfClass:[GsonReflectiveTypeAdapterFactory_Adapter class]])) {
      chosen = runtimeTypeAdapter;
    }
    else if (!([delegate_ isKindOfClass:[GsonReflectiveTypeAdapterFactory_Adapter class]])) {
      chosen = delegate_;
    }
    else {
      chosen = runtimeTypeAdapter;
    }
  }
  [((GsonTypeAdapter *) nil_chk(chosen)) writeWithGsonJsonWriter:outArg withId:value];
}

- (id<JavaLangReflectType>)getRuntimeTypeIfMoreSpecificWithJavaLangReflectType:(id<JavaLangReflectType>)type
                                                                        withId:(id)value {
  return GsonTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(self, type, value);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, "LNSObject;", 0x1, 2, 3, 4, 5, -1, -1 },
    { NULL, "V", 0x1, 6, 7, 4, 8, -1, -1 },
    { NULL, "LJavaLangReflectType;", 0x2, 9, 10, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithGsonGson:withGsonTypeAdapter:withJavaLangReflectType:);
  methods[1].selector = @selector(readWithGsonJsonReader:);
  methods[2].selector = @selector(writeWithGsonJsonWriter:withId:);
  methods[3].selector = @selector(getRuntimeTypeIfMoreSpecificWithJavaLangReflectType:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "context_", "LGsonGson;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
    { "delegate_", "LGsonTypeAdapter;", .constantValue.asLong = 0, 0x12, -1, -1, 11, -1 },
    { "type_", "LJavaLangReflectType;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LGsonGson;LGsonTypeAdapter;LJavaLangReflectType;", "(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter<TT;>;Ljava/lang/reflect/Type;)V", "read", "LGsonJsonReader;", "LJavaIoIOException;", "(Lcom/google/gson/stream/JsonReader;)TT;", "write", "LGsonJsonWriter;LNSObject;", "(Lcom/google/gson/stream/JsonWriter;TT;)V", "getRuntimeTypeIfMoreSpecific", "LJavaLangReflectType;LNSObject;", "Lcom/google/gson/TypeAdapter<TT;>;", "<T:Ljava/lang/Object;>Lcom/google/gson/TypeAdapter<TT;>;" };
  static const J2ObjcClassInfo _GsonTypeAdapterRuntimeTypeWrapper = { "TypeAdapterRuntimeTypeWrapper", "j2objc.gson.internal.bind", ptrTable, methods, fields, 7, 0x10, 4, 3, -1, -1, -1, 12, -1 };
  return &_GsonTypeAdapterRuntimeTypeWrapper;
}

@end

void GsonTypeAdapterRuntimeTypeWrapper_initWithGsonGson_withGsonTypeAdapter_withJavaLangReflectType_(GsonTypeAdapterRuntimeTypeWrapper *self, GsonGson *context, GsonTypeAdapter *delegate, id<JavaLangReflectType> type) {
  GsonTypeAdapter_init(self);
  self->context_ = context;
  self->delegate_ = delegate;
  self->type_ = type;
}

GsonTypeAdapterRuntimeTypeWrapper *new_GsonTypeAdapterRuntimeTypeWrapper_initWithGsonGson_withGsonTypeAdapter_withJavaLangReflectType_(GsonGson *context, GsonTypeAdapter *delegate, id<JavaLangReflectType> type) {
  J2OBJC_NEW_IMPL(GsonTypeAdapterRuntimeTypeWrapper, initWithGsonGson_withGsonTypeAdapter_withJavaLangReflectType_, context, delegate, type)
}

GsonTypeAdapterRuntimeTypeWrapper *create_GsonTypeAdapterRuntimeTypeWrapper_initWithGsonGson_withGsonTypeAdapter_withJavaLangReflectType_(GsonGson *context, GsonTypeAdapter *delegate, id<JavaLangReflectType> type) {
  J2OBJC_CREATE_IMPL(GsonTypeAdapterRuntimeTypeWrapper, initWithGsonGson_withGsonTypeAdapter_withJavaLangReflectType_, context, delegate, type)
}

id<JavaLangReflectType> GsonTypeAdapterRuntimeTypeWrapper_getRuntimeTypeIfMoreSpecificWithJavaLangReflectType_withId_(GsonTypeAdapterRuntimeTypeWrapper *self, id<JavaLangReflectType> type, id value) {
  if (value != nil && (type == (id) NSObject_class_() || [JavaLangReflectTypeVariable_class_() isInstance:type] || [type isKindOfClass:[IOSClass class]])) {
    type = [value java_getClass];
  }
  return type;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonTypeAdapterRuntimeTypeWrapper)
