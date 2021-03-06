//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/TimeTypeAdapter.java
//

#include "Gson.h"
#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonSyntaxException.h"
#include "JsonToken.h"
#include "JsonWriter.h"
#include "TimeTypeAdapter.h"
#include "TypeAdapter.h"
#include "TypeAdapterFactory.h"
#include "TypeToken.h"
#include "java/sql/Time.h"
#include "java/text/DateFormat.h"
#include "java/text/ParseException.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/Date.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface GsonTimeTypeAdapter () {
 @public
  JavaTextDateFormat *format_;
}

@end

J2OBJC_FIELD_SETTER(GsonTimeTypeAdapter, format_, JavaTextDateFormat *)

@interface GsonTimeTypeAdapter_1 : NSObject < GsonTypeAdapterFactory >

- (instancetype)init;

- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)typeToken;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonTimeTypeAdapter_1)

__attribute__((unused)) static void GsonTimeTypeAdapter_1_init(GsonTimeTypeAdapter_1 *self);

__attribute__((unused)) static GsonTimeTypeAdapter_1 *new_GsonTimeTypeAdapter_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonTimeTypeAdapter_1 *create_GsonTimeTypeAdapter_1_init(void);

J2OBJC_INITIALIZED_DEFN(GsonTimeTypeAdapter)

id<GsonTypeAdapterFactory> GsonTimeTypeAdapter_FACTORY;

@implementation GsonTimeTypeAdapter

+ (id<GsonTypeAdapterFactory>)FACTORY {
  return GsonTimeTypeAdapter_FACTORY;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GsonTimeTypeAdapter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaSqlTime *)readWithGsonJsonReader:(GsonJsonReader *)inArg {
  @synchronized(self) {
    if ([((GsonJsonReader *) nil_chk(inArg)) peek] == JreLoadEnum(GsonJsonToken, NULL)) {
      [inArg nextNull];
      return nil;
    }
    @try {
      JavaUtilDate *date = [((JavaTextDateFormat *) nil_chk(format_)) parseWithNSString:[inArg nextString]];
      return new_JavaSqlTime_initWithLong_([((JavaUtilDate *) nil_chk(date)) getTime]);
    }
    @catch (JavaTextParseException *e) {
      @throw new_GsonJsonSyntaxException_initWithJavaLangThrowable_(e);
    }
  }
}

- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(JavaSqlTime *)value {
  @synchronized(self) {
    (void) [((GsonJsonWriter *) nil_chk(outArg)) valueWithNSString:value == nil ? nil : [((JavaTextDateFormat *) nil_chk(format_)) formatWithJavaUtilDate:value]];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaSqlTime;", 0x21, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x21, 3, 4, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(readWithGsonJsonReader:);
  methods[2].selector = @selector(writeWithGsonJsonWriter:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FACTORY", "LGsonTypeAdapterFactory;", .constantValue.asLong = 0, 0x19, -1, 5, -1, -1 },
    { "format_", "LJavaTextDateFormat;", .constantValue.asLong = 0, 0x12, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "read", "LGsonJsonReader;", "LJavaIoIOException;", "write", "LGsonJsonWriter;LJavaSqlTime;", &GsonTimeTypeAdapter_FACTORY, "Lcom/google/gson/TypeAdapter<Ljava/sql/Time;>;" };
  static const J2ObjcClassInfo _GsonTimeTypeAdapter = { "TimeTypeAdapter", "j2objc.gson.internal.bind", ptrTable, methods, fields, 7, 0x11, 3, 2, -1, -1, -1, 6, -1 };
  return &_GsonTimeTypeAdapter;
}

+ (void)initialize {
  if (self == [GsonTimeTypeAdapter class]) {
    GsonTimeTypeAdapter_FACTORY = new_GsonTimeTypeAdapter_1_init();
    J2OBJC_SET_INITIALIZED(GsonTimeTypeAdapter)
  }
}

@end

void GsonTimeTypeAdapter_init(GsonTimeTypeAdapter *self) {
  GsonTypeAdapter_init(self);
  self->format_ = new_JavaTextSimpleDateFormat_initWithNSString_(@"hh:mm:ss a");
}

GsonTimeTypeAdapter *new_GsonTimeTypeAdapter_init() {
  J2OBJC_NEW_IMPL(GsonTimeTypeAdapter, init)
}

GsonTimeTypeAdapter *create_GsonTimeTypeAdapter_init() {
  J2OBJC_CREATE_IMPL(GsonTimeTypeAdapter, init)
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonTimeTypeAdapter)

J2OBJC_NAME_MAPPING(GsonTimeTypeAdapter, "j2objc.gson.internal.bind", "Gson")

@implementation GsonTimeTypeAdapter_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GsonTimeTypeAdapter_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)typeToken {
  return [((GsonTypeToken *) nil_chk(typeToken)) getRawType] == JavaSqlTime_class_() ? new_GsonTimeTypeAdapter_init() : nil;
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "LGsonTypeAdapter;", 0x1, 0, 1, -1, 2, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(createWithGsonGson:withGsonTypeToken:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "create", "LGsonGson;LGsonTypeToken;", "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;", "LGsonTimeTypeAdapter;" };
  static const J2ObjcClassInfo _GsonTimeTypeAdapter_1 = { "", "j2objc.gson.internal.bind", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 3, -1, -1, -1, -1 };
  return &_GsonTimeTypeAdapter_1;
}

@end

void GsonTimeTypeAdapter_1_init(GsonTimeTypeAdapter_1 *self) {
  NSObject_init(self);
}

GsonTimeTypeAdapter_1 *new_GsonTimeTypeAdapter_1_init() {
  J2OBJC_NEW_IMPL(GsonTimeTypeAdapter_1, init)
}

GsonTimeTypeAdapter_1 *create_GsonTimeTypeAdapter_1_init() {
  J2OBJC_CREATE_IMPL(GsonTimeTypeAdapter_1, init)
}
