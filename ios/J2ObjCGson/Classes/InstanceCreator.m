//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/InstanceCreator.java
//

#include "InstanceCreator.h"
#include "J2ObjC_source.h"

@interface GsonInstanceCreator : NSObject

@end

@implementation GsonInstanceCreator

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, "LNSObject;", 0x401, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(createInstanceWithJavaLangReflectType:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "createInstance", "LJavaLangReflectType;", "(Ljava/lang/reflect/Type;)TT;", "<T:Ljava/lang/Object;>Ljava/lang/Object;" };
  static const J2ObjcClassInfo _GsonInstanceCreator = { "InstanceCreator", "j2objc.gson", ptrTable, methods, NULL, 7, 0x609, 1, 0, -1, -1, -1, 3, -1 };
  return &_GsonInstanceCreator;
}

@end

J2OBJC_INTERFACE_TYPE_LITERAL_SOURCE(GsonInstanceCreator)

J2OBJC_NAME_MAPPING(GsonInstanceCreator, "j2objc.gson", "Gson")
