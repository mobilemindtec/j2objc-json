//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/Primitives.java
//

#include "$Gson$Preconditions.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "Primitives.h"
#include "java/lang/Boolean.h"
#include "java/lang/Byte.h"
#include "java/lang/Character.h"
#include "java/lang/Double.h"
#include "java/lang/Float.h"
#include "java/lang/Integer.h"
#include "java/lang/Long.h"
#include "java/lang/Short.h"
#include "java/lang/Void.h"
#include "java/lang/reflect/Type.h"
#include "java/util/Collections.h"
#include "java/util/HashMap.h"
#include "java/util/Map.h"

@interface GsonPrimitives ()

- (instancetype)init;

+ (void)addWithJavaUtilMap:(id<JavaUtilMap>)forward
           withJavaUtilMap:(id<JavaUtilMap>)backward
              withIOSClass:(IOSClass *)key
              withIOSClass:(IOSClass *)value;

@end

inline id<JavaUtilMap> GsonPrimitives_get_PRIMITIVE_TO_WRAPPER_TYPE(void);
static id<JavaUtilMap> GsonPrimitives_PRIMITIVE_TO_WRAPPER_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(GsonPrimitives, PRIMITIVE_TO_WRAPPER_TYPE, id<JavaUtilMap>)

inline id<JavaUtilMap> GsonPrimitives_get_WRAPPER_TO_PRIMITIVE_TYPE(void);
static id<JavaUtilMap> GsonPrimitives_WRAPPER_TO_PRIMITIVE_TYPE;
J2OBJC_STATIC_FIELD_OBJ_FINAL(GsonPrimitives, WRAPPER_TO_PRIMITIVE_TYPE, id<JavaUtilMap>)

__attribute__((unused)) static void GsonPrimitives_init(GsonPrimitives *self);

__attribute__((unused)) static GsonPrimitives *new_GsonPrimitives_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonPrimitives *create_GsonPrimitives_init(void);

__attribute__((unused)) static void GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(id<JavaUtilMap> forward, id<JavaUtilMap> backward, IOSClass *key, IOSClass *value);

J2OBJC_INITIALIZED_DEFN(GsonPrimitives)

@implementation GsonPrimitives

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GsonPrimitives_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)addWithJavaUtilMap:(id<JavaUtilMap>)forward
           withJavaUtilMap:(id<JavaUtilMap>)backward
              withIOSClass:(IOSClass *)key
              withIOSClass:(IOSClass *)value {
  GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(forward, backward, key, value);
}

+ (jboolean)isPrimitiveWithJavaLangReflectType:(id<JavaLangReflectType>)type {
  return GsonPrimitives_isPrimitiveWithJavaLangReflectType_(type);
}

+ (jboolean)isWrapperTypeWithJavaLangReflectType:(id<JavaLangReflectType>)type {
  return GsonPrimitives_isWrapperTypeWithJavaLangReflectType_(type);
}

+ (IOSClass *)wrapWithIOSClass:(IOSClass *)type {
  return GsonPrimitives_wrapWithIOSClass_(type);
}

+ (IOSClass *)unwrapWithIOSClass:(IOSClass *)type {
  return GsonPrimitives_unwrapWithIOSClass_(type);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0xa, 0, 1, -1, 2, -1, -1 },
    { NULL, "Z", 0x9, 3, 4, -1, -1, -1, -1 },
    { NULL, "Z", 0x9, 5, 4, -1, -1, -1, -1 },
    { NULL, "LIOSClass;", 0x9, 6, 7, -1, 8, -1, -1 },
    { NULL, "LIOSClass;", 0x9, 9, 7, -1, 8, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(addWithJavaUtilMap:withJavaUtilMap:withIOSClass:withIOSClass:);
  methods[2].selector = @selector(isPrimitiveWithJavaLangReflectType:);
  methods[3].selector = @selector(isWrapperTypeWithJavaLangReflectType:);
  methods[4].selector = @selector(wrapWithIOSClass:);
  methods[5].selector = @selector(unwrapWithIOSClass:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "PRIMITIVE_TO_WRAPPER_TYPE", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 10, 11, -1 },
    { "WRAPPER_TO_PRIMITIVE_TYPE", "LJavaUtilMap;", .constantValue.asLong = 0, 0x1a, -1, 12, 11, -1 },
  };
  static const void *ptrTable[] = { "add", "LJavaUtilMap;LJavaUtilMap;LIOSClass;LIOSClass;", "(Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/lang/Class<*>;Ljava/lang/Class<*>;)V", "isPrimitive", "LJavaLangReflectType;", "isWrapperType", "wrap", "LIOSClass;", "<T:Ljava/lang/Object;>(Ljava/lang/Class<TT;>;)Ljava/lang/Class<TT;>;", "unwrap", &GsonPrimitives_PRIMITIVE_TO_WRAPPER_TYPE, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;", &GsonPrimitives_WRAPPER_TO_PRIMITIVE_TYPE };
  static const J2ObjcClassInfo _GsonPrimitives = { "Primitives", "com.google.gson.internal", ptrTable, methods, fields, 7, 0x11, 6, 2, -1, -1, -1, -1, -1 };
  return &_GsonPrimitives;
}

+ (void)initialize {
  if (self == [GsonPrimitives class]) {
    {
      id<JavaUtilMap> primToWrap = new_JavaUtilHashMap_initWithInt_(16);
      id<JavaUtilMap> wrapToPrim = new_JavaUtilHashMap_initWithInt_(16);
      GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass booleanClass], JavaLangBoolean_class_());
      GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass byteClass], JavaLangByte_class_());
      GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass charClass], JavaLangCharacter_class_());
      GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass doubleClass], JavaLangDouble_class_());
      GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass floatClass], JavaLangFloat_class_());
      GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass intClass], JavaLangInteger_class_());
      GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass longClass], JavaLangLong_class_());
      GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass shortClass], JavaLangShort_class_());
      GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(primToWrap, wrapToPrim, [IOSClass voidClass], JavaLangVoid_class_());
      GsonPrimitives_PRIMITIVE_TO_WRAPPER_TYPE = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(primToWrap);
      GsonPrimitives_WRAPPER_TO_PRIMITIVE_TYPE = JavaUtilCollections_unmodifiableMapWithJavaUtilMap_(wrapToPrim);
    }
    J2OBJC_SET_INITIALIZED(GsonPrimitives)
  }
}

@end

void GsonPrimitives_init(GsonPrimitives *self) {
  NSObject_init(self);
}

GsonPrimitives *new_GsonPrimitives_init() {
  J2OBJC_NEW_IMPL(GsonPrimitives, init)
}

GsonPrimitives *create_GsonPrimitives_init() {
  J2OBJC_CREATE_IMPL(GsonPrimitives, init)
}

void GsonPrimitives_addWithJavaUtilMap_withJavaUtilMap_withIOSClass_withIOSClass_(id<JavaUtilMap> forward, id<JavaUtilMap> backward, IOSClass *key, IOSClass *value) {
  GsonPrimitives_initialize();
  (void) [((id<JavaUtilMap>) nil_chk(forward)) putWithId:key withId:value];
  (void) [((id<JavaUtilMap>) nil_chk(backward)) putWithId:value withId:key];
}

jboolean GsonPrimitives_isPrimitiveWithJavaLangReflectType_(id<JavaLangReflectType> type) {
  GsonPrimitives_initialize();
  return [((id<JavaUtilMap>) nil_chk(GsonPrimitives_PRIMITIVE_TO_WRAPPER_TYPE)) containsKeyWithId:type];
}

jboolean GsonPrimitives_isWrapperTypeWithJavaLangReflectType_(id<JavaLangReflectType> type) {
  GsonPrimitives_initialize();
  return [((id<JavaUtilMap>) nil_chk(GsonPrimitives_WRAPPER_TO_PRIMITIVE_TYPE)) containsKeyWithId:Gson_Gson_Preconditions_checkNotNullWithId_(type)];
}

IOSClass *GsonPrimitives_wrapWithIOSClass_(IOSClass *type) {
  GsonPrimitives_initialize();
  IOSClass *wrapped = [((id<JavaUtilMap>) nil_chk(GsonPrimitives_PRIMITIVE_TO_WRAPPER_TYPE)) getWithId:Gson_Gson_Preconditions_checkNotNullWithId_(type)];
  return (wrapped == nil) ? type : wrapped;
}

IOSClass *GsonPrimitives_unwrapWithIOSClass_(IOSClass *type) {
  GsonPrimitives_initialize();
  IOSClass *unwrapped = [((id<JavaUtilMap>) nil_chk(GsonPrimitives_WRAPPER_TO_PRIMITIVE_TYPE)) getWithId:Gson_Gson_Preconditions_checkNotNullWithId_(type)];
  return (unwrapped == nil) ? type : unwrapped;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonPrimitives)