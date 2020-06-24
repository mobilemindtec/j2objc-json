//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/DateTypeAdapter.java
//

#include "DateTypeAdapter.h"
#include "Gson.h"
#include "IOSClass.h"
#include "ISO8601Utils.h"
#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonSyntaxException.h"
#include "JsonToken.h"
#include "JsonWriter.h"
#include "PreJava9DateFormatProvider.h"
#include "TypeAdapter.h"
#include "TypeAdapterFactory.h"
#include "TypeToken.h"
#include "VersionUtils.h"
#include "java/text/DateFormat.h"
#include "java/text/ParseException.h"
#include "java/text/ParsePosition.h"
#include "java/util/ArrayList.h"
#include "java/util/Date.h"
#include "java/util/List.h"
#include "java/util/Locale.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface GsonDateTypeAdapter () {
 @public
  id<JavaUtilList> dateFormats_;
}

- (JavaUtilDate *)deserializeToDateWithNSString:(NSString *)json;

@end

J2OBJC_FIELD_SETTER(GsonDateTypeAdapter, dateFormats_, id<JavaUtilList>)

__attribute__((unused)) static JavaUtilDate *GsonDateTypeAdapter_deserializeToDateWithNSString_(GsonDateTypeAdapter *self, NSString *json);

@interface GsonDateTypeAdapter_1 : NSObject < GsonTypeAdapterFactory >

- (instancetype)init;

- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)typeToken;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonDateTypeAdapter_1)

__attribute__((unused)) static void GsonDateTypeAdapter_1_init(GsonDateTypeAdapter_1 *self);

__attribute__((unused)) static GsonDateTypeAdapter_1 *new_GsonDateTypeAdapter_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonDateTypeAdapter_1 *create_GsonDateTypeAdapter_1_init(void);

J2OBJC_INITIALIZED_DEFN(GsonDateTypeAdapter)

id<GsonTypeAdapterFactory> GsonDateTypeAdapter_FACTORY;

@implementation GsonDateTypeAdapter

+ (id<GsonTypeAdapterFactory>)FACTORY {
  return GsonDateTypeAdapter_FACTORY;
}

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GsonDateTypeAdapter_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (JavaUtilDate *)readWithGsonJsonReader:(GsonJsonReader *)inArg {
  if ([((GsonJsonReader *) nil_chk(inArg)) peek] == JreLoadEnum(GsonJsonToken, NULL)) {
    [inArg nextNull];
    return nil;
  }
  return GsonDateTypeAdapter_deserializeToDateWithNSString_(self, [inArg nextString]);
}

- (JavaUtilDate *)deserializeToDateWithNSString:(NSString *)json {
  return GsonDateTypeAdapter_deserializeToDateWithNSString_(self, json);
}

- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(JavaUtilDate *)value {
  @synchronized(self) {
    if (value == nil) {
      (void) [((GsonJsonWriter *) nil_chk(outArg)) nullValue];
      return;
    }
    NSString *dateFormatAsString = [((JavaTextDateFormat *) nil_chk([((id<JavaUtilList>) nil_chk(dateFormats_)) getWithInt:0])) formatWithJavaUtilDate:value];
    (void) [((GsonJsonWriter *) nil_chk(outArg)) valueWithNSString:dateFormatAsString];
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x22, 3, 4, -1, -1, -1, -1 },
    { NULL, "V", 0x21, 5, 6, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(readWithGsonJsonReader:);
  methods[2].selector = @selector(deserializeToDateWithNSString:);
  methods[3].selector = @selector(writeWithGsonJsonWriter:withId:);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "FACTORY", "LGsonTypeAdapterFactory;", .constantValue.asLong = 0, 0x19, -1, 7, -1, -1 },
    { "dateFormats_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 8, -1 },
  };
  static const void *ptrTable[] = { "read", "LGsonJsonReader;", "LJavaIoIOException;", "deserializeToDate", "LNSString;", "write", "LGsonJsonWriter;LJavaUtilDate;", &GsonDateTypeAdapter_FACTORY, "Ljava/util/List<Ljava/text/DateFormat;>;", "Lcom/google/gson/TypeAdapter<Ljava/util/Date;>;" };
  static const J2ObjcClassInfo _GsonDateTypeAdapter = { "DateTypeAdapter", "j2objc.gson.internal.bind", ptrTable, methods, fields, 7, 0x11, 4, 2, -1, -1, -1, 9, -1 };
  return &_GsonDateTypeAdapter;
}

+ (void)initialize {
  if (self == [GsonDateTypeAdapter class]) {
    GsonDateTypeAdapter_FACTORY = new_GsonDateTypeAdapter_1_init();
    J2OBJC_SET_INITIALIZED(GsonDateTypeAdapter)
  }
}

@end

void GsonDateTypeAdapter_init(GsonDateTypeAdapter *self) {
  GsonTypeAdapter_init(self);
  self->dateFormats_ = new_JavaUtilArrayList_init();
  [self->dateFormats_ addWithId:JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT, JreLoadStatic(JavaUtilLocale, US))];
  if (![((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) isEqual:JreLoadStatic(JavaUtilLocale, US)]) {
    [self->dateFormats_ addWithId:JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT)];
  }
  if (ComGoogleGsonUtilVersionUtils_isJava9OrLater()) {
    [self->dateFormats_ addWithId:GsonPreJava9DateFormatProvider_getUSDateTimeFormatWithInt_withInt_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT)];
  }
}

GsonDateTypeAdapter *new_GsonDateTypeAdapter_init() {
  J2OBJC_NEW_IMPL(GsonDateTypeAdapter, init)
}

GsonDateTypeAdapter *create_GsonDateTypeAdapter_init() {
  J2OBJC_CREATE_IMPL(GsonDateTypeAdapter, init)
}

JavaUtilDate *GsonDateTypeAdapter_deserializeToDateWithNSString_(GsonDateTypeAdapter *self, NSString *json) {
  @synchronized(self) {
    for (JavaTextDateFormat * __strong dateFormat in nil_chk(self->dateFormats_)) {
      @try {
        return [((JavaTextDateFormat *) nil_chk(dateFormat)) parseWithNSString:json];
      }
      @catch (JavaTextParseException *ignored) {
      }
    }
    @try {
      return ComGoogleGsonInternalBindUtilISO8601Utils_parseWithNSString_withJavaTextParsePosition_(json, new_JavaTextParsePosition_initWithInt_(0));
    }
    @catch (JavaTextParseException *e) {
      @throw new_GsonJsonSyntaxException_initWithNSString_withJavaLangThrowable_(json, e);
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonDateTypeAdapter)

J2OBJC_NAME_MAPPING(GsonDateTypeAdapter, "j2objc.gson.internal.bind", "Gson")

@implementation GsonDateTypeAdapter_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GsonDateTypeAdapter_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (GsonTypeAdapter *)createWithGsonGson:(GsonGson *)gson
                      withGsonTypeToken:(GsonTypeToken *)typeToken {
  return [((GsonTypeToken *) nil_chk(typeToken)) getRawType] == JavaUtilDate_class_() ? new_GsonDateTypeAdapter_init() : nil;
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
  static const void *ptrTable[] = { "create", "LGsonGson;LGsonTypeToken;", "<T:Ljava/lang/Object;>(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken<TT;>;)Lcom/google/gson/TypeAdapter<TT;>;", "LGsonDateTypeAdapter;" };
  static const J2ObjcClassInfo _GsonDateTypeAdapter_1 = { "", "j2objc.gson.internal.bind", ptrTable, methods, NULL, 7, 0x8018, 2, 0, 3, -1, -1, -1, -1 };
  return &_GsonDateTypeAdapter_1;
}

@end

void GsonDateTypeAdapter_1_init(GsonDateTypeAdapter_1 *self) {
  NSObject_init(self);
}

GsonDateTypeAdapter_1 *new_GsonDateTypeAdapter_1_init() {
  J2OBJC_NEW_IMPL(GsonDateTypeAdapter_1, init)
}

GsonDateTypeAdapter_1 *create_GsonDateTypeAdapter_1_init() {
  J2OBJC_CREATE_IMPL(GsonDateTypeAdapter_1, init)
}
