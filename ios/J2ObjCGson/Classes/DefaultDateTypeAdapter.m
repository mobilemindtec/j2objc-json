//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/DefaultDateTypeAdapter.java
//

#include "DefaultDateTypeAdapter.h"
#include "IOSClass.h"
#include "ISO8601Utils.h"
#include "J2ObjC_source.h"
#include "JsonReader.h"
#include "JsonSyntaxException.h"
#include "JsonToken.h"
#include "JsonWriter.h"
#include "PreJava9DateFormatProvider.h"
#include "TypeAdapter.h"
#include "VersionUtils.h"
#include "java/lang/AssertionError.h"
#include "java/lang/IllegalArgumentException.h"
#include "java/lang/StringBuffer.h"
#include "java/sql/Date.h"
#include "java/sql/Timestamp.h"
#include "java/text/DateFormat.h"
#include "java/text/FieldPosition.h"
#include "java/text/ParseException.h"
#include "java/text/ParsePosition.h"
#include "java/text/SimpleDateFormat.h"
#include "java/util/ArrayList.h"
#include "java/util/Date.h"
#include "java/util/List.h"
#include "java/util/Locale.h"

#pragma clang diagnostic ignored "-Wincomplete-implementation"

@interface GsonDefaultDateTypeAdapter () {
 @public
  IOSClass *dateType_;
  id<JavaUtilList> dateFormats_;
}

+ (IOSClass *)verifyDateTypeWithIOSClass:(IOSClass *)dateType;

- (JavaUtilDate *)deserializeToDateWithNSString:(NSString *)s;

@end

J2OBJC_FIELD_SETTER(GsonDefaultDateTypeAdapter, dateType_, IOSClass *)
J2OBJC_FIELD_SETTER(GsonDefaultDateTypeAdapter, dateFormats_, id<JavaUtilList>)

inline NSString *GsonDefaultDateTypeAdapter_get_SIMPLE_NAME(void);
static NSString *GsonDefaultDateTypeAdapter_SIMPLE_NAME = @"DefaultDateTypeAdapter";
J2OBJC_STATIC_FIELD_OBJ_FINAL(GsonDefaultDateTypeAdapter, SIMPLE_NAME, NSString *)

__attribute__((unused)) static IOSClass *GsonDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(IOSClass *dateType);

__attribute__((unused)) static JavaUtilDate *GsonDefaultDateTypeAdapter_deserializeToDateWithNSString_(GsonDefaultDateTypeAdapter *self, NSString *s);

@interface GsonDefaultDateTypeAdapter_1 : JavaTextSimpleDateFormat

- (instancetype)initWithNSString:(NSString *)x0
              withJavaUtilLocale:(JavaUtilLocale *)x1;

- (JavaLangStringBuffer *)formatWithJavaUtilDate:(JavaUtilDate *)date
                        withJavaLangStringBuffer:(JavaLangStringBuffer *)toAppendTo
                       withJavaTextFieldPosition:(JavaTextFieldPosition *)pos;

- (JavaUtilDate *)parseWithNSString:(NSString *)text
          withJavaTextParsePosition:(JavaTextParsePosition *)pos;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonDefaultDateTypeAdapter_1)

__attribute__((unused)) static void GsonDefaultDateTypeAdapter_1_initWithNSString_withJavaUtilLocale_(GsonDefaultDateTypeAdapter_1 *self, NSString *x0, JavaUtilLocale *x1);

__attribute__((unused)) static GsonDefaultDateTypeAdapter_1 *new_GsonDefaultDateTypeAdapter_1_initWithNSString_withJavaUtilLocale_(NSString *x0, JavaUtilLocale *x1) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonDefaultDateTypeAdapter_1 *create_GsonDefaultDateTypeAdapter_1_initWithNSString_withJavaUtilLocale_(NSString *x0, JavaUtilLocale *x1);

@interface GsonDefaultDateTypeAdapter_2 : JavaTextSimpleDateFormat

- (instancetype)initWithNSString:(NSString *)x0;

- (JavaLangStringBuffer *)formatWithJavaUtilDate:(JavaUtilDate *)date
                        withJavaLangStringBuffer:(JavaLangStringBuffer *)toAppendTo
                       withJavaTextFieldPosition:(JavaTextFieldPosition *)pos;

- (JavaUtilDate *)parseWithNSString:(NSString *)text
          withJavaTextParsePosition:(JavaTextParsePosition *)pos;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonDefaultDateTypeAdapter_2)

__attribute__((unused)) static void GsonDefaultDateTypeAdapter_2_initWithNSString_(GsonDefaultDateTypeAdapter_2 *self, NSString *x0);

__attribute__((unused)) static GsonDefaultDateTypeAdapter_2 *new_GsonDefaultDateTypeAdapter_2_initWithNSString_(NSString *x0) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonDefaultDateTypeAdapter_2 *create_GsonDefaultDateTypeAdapter_2_initWithNSString_(NSString *x0);

@implementation GsonDefaultDateTypeAdapter

- (instancetype)initWithIOSClass:(IOSClass *)dateType {
  GsonDefaultDateTypeAdapter_initWithIOSClass_(self, dateType);
  return self;
}

- (instancetype)initWithIOSClass:(IOSClass *)dateType
                    withNSString:(NSString *)datePattern {
  GsonDefaultDateTypeAdapter_initWithIOSClass_withNSString_(self, dateType, datePattern);
  return self;
}

- (instancetype)initWithIOSClass:(IOSClass *)dateType
                         withInt:(jint)style {
  GsonDefaultDateTypeAdapter_initWithIOSClass_withInt_(self, dateType, style);
  return self;
}

- (instancetype)initWithInt:(jint)dateStyle
                    withInt:(jint)timeStyle {
  GsonDefaultDateTypeAdapter_initWithInt_withInt_(self, dateStyle, timeStyle);
  return self;
}

- (instancetype)initWithIOSClass:(IOSClass *)dateType
                         withInt:(jint)dateStyle
                         withInt:(jint)timeStyle {
  GsonDefaultDateTypeAdapter_initWithIOSClass_withInt_withInt_(self, dateType, dateStyle, timeStyle);
  return self;
}

+ (IOSClass *)verifyDateTypeWithIOSClass:(IOSClass *)dateType {
  return GsonDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(dateType);
}

- (void)writeWithGsonJsonWriter:(GsonJsonWriter *)outArg
                         withId:(JavaUtilDate *)value {
  if (value == nil) {
    (void) [((GsonJsonWriter *) nil_chk(outArg)) nullValue];
    return;
  }
  @synchronized(dateFormats_) {
    NSString *dateFormatAsString = [((JavaTextDateFormat *) nil_chk([((id<JavaUtilList>) nil_chk(dateFormats_)) getWithInt:0])) formatWithJavaUtilDate:value];
    (void) [((GsonJsonWriter *) nil_chk(outArg)) valueWithNSString:dateFormatAsString];
  }
}

- (JavaUtilDate *)readWithGsonJsonReader:(GsonJsonReader *)inArg {
  if ([((GsonJsonReader *) nil_chk(inArg)) peek] == JreLoadEnum(GsonJsonToken, NULL)) {
    [inArg nextNull];
    return nil;
  }
  JavaUtilDate *date = GsonDefaultDateTypeAdapter_deserializeToDateWithNSString_(self, [inArg nextString]);
  if (dateType_ == JavaUtilDate_class_()) {
    return date;
  }
  else if (dateType_ == JavaSqlTimestamp_class_()) {
    return new_JavaSqlTimestamp_initWithLong_([((JavaUtilDate *) nil_chk(date)) getTime]);
  }
  else if (dateType_ == JavaSqlDate_class_()) {
    return new_JavaSqlDate_initWithLong_([((JavaUtilDate *) nil_chk(date)) getTime]);
  }
  else {
    @throw new_JavaLangAssertionError_init();
  }
}

- (JavaUtilDate *)deserializeToDateWithNSString:(NSString *)s {
  return GsonDefaultDateTypeAdapter_deserializeToDateWithNSString_(self, s);
}

- (NSString *)description {
  JavaTextDateFormat *defaultFormat = [((id<JavaUtilList>) nil_chk(dateFormats_)) getWithInt:0];
  if ([defaultFormat isKindOfClass:[JavaTextSimpleDateFormat class]]) {
    return JreStrcat("$C$C", GsonDefaultDateTypeAdapter_SIMPLE_NAME, '(', [((JavaTextSimpleDateFormat *) nil_chk(((JavaTextSimpleDateFormat *) cast_chk(defaultFormat, [JavaTextSimpleDateFormat class])))) toPattern], ')');
  }
  else {
    return JreStrcat("$C$C", GsonDefaultDateTypeAdapter_SIMPLE_NAME, '(', [[((JavaTextDateFormat *) nil_chk(defaultFormat)) java_getClass] getSimpleName], ')');
  }
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, 1, -1, -1 },
    { NULL, NULL, 0x0, -1, 2, -1, 3, -1, -1 },
    { NULL, NULL, 0x0, -1, 4, -1, 5, -1, -1 },
    { NULL, NULL, 0x1, -1, 6, -1, -1, -1, -1 },
    { NULL, NULL, 0x1, -1, 7, -1, 8, -1, -1 },
    { NULL, "LIOSClass;", 0xa, 9, 0, -1, 10, -1, -1 },
    { NULL, "V", 0x1, 11, 12, 13, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, 14, 15, 13, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x2, 16, 17, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 18, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithIOSClass:);
  methods[1].selector = @selector(initWithIOSClass:withNSString:);
  methods[2].selector = @selector(initWithIOSClass:withInt:);
  methods[3].selector = @selector(initWithInt:withInt:);
  methods[4].selector = @selector(initWithIOSClass:withInt:withInt:);
  methods[5].selector = @selector(verifyDateTypeWithIOSClass:);
  methods[6].selector = @selector(writeWithGsonJsonWriter:withId:);
  methods[7].selector = @selector(readWithGsonJsonReader:);
  methods[8].selector = @selector(deserializeToDateWithNSString:);
  methods[9].selector = @selector(description);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "SIMPLE_NAME", "LNSString;", .constantValue.asLong = 0, 0x1a, -1, 19, -1, -1 },
    { "dateType_", "LIOSClass;", .constantValue.asLong = 0, 0x12, -1, -1, 20, -1 },
    { "dateFormats_", "LJavaUtilList;", .constantValue.asLong = 0, 0x12, -1, -1, 21, -1 },
  };
  static const void *ptrTable[] = { "LIOSClass;", "(Ljava/lang/Class<+Ljava/util/Date;>;)V", "LIOSClass;LNSString;", "(Ljava/lang/Class<+Ljava/util/Date;>;Ljava/lang/String;)V", "LIOSClass;I", "(Ljava/lang/Class<+Ljava/util/Date;>;I)V", "II", "LIOSClass;II", "(Ljava/lang/Class<+Ljava/util/Date;>;II)V", "verifyDateType", "(Ljava/lang/Class<+Ljava/util/Date;>;)Ljava/lang/Class<+Ljava/util/Date;>;", "write", "LGsonJsonWriter;LJavaUtilDate;", "LJavaIoIOException;", "read", "LGsonJsonReader;", "deserializeToDate", "LNSString;", "toString", &GsonDefaultDateTypeAdapter_SIMPLE_NAME, "Ljava/lang/Class<+Ljava/util/Date;>;", "Ljava/util/List<Ljava/text/DateFormat;>;", "Lcom/google/gson/TypeAdapter<Ljava/util/Date;>;" };
  static const J2ObjcClassInfo _GsonDefaultDateTypeAdapter = { "DefaultDateTypeAdapter", "j2objc.gson", ptrTable, methods, fields, 7, 0x10, 10, 3, -1, -1, -1, 22, -1 };
  return &_GsonDefaultDateTypeAdapter;
}

@end

void GsonDefaultDateTypeAdapter_initWithIOSClass_(GsonDefaultDateTypeAdapter *self, IOSClass *dateType) {
  GsonTypeAdapter_init(self);
  self->dateFormats_ = new_JavaUtilArrayList_init();
  self->dateType_ = GsonDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(dateType);
  [self->dateFormats_ addWithId:JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT, JreLoadStatic(JavaUtilLocale, US))];
  if (![((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) isEqual:JreLoadStatic(JavaUtilLocale, US)]) {
    [self->dateFormats_ addWithId:JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT)];
  }
  if (ComGoogleGsonUtilVersionUtils_isJava9OrLater()) {
    [self->dateFormats_ addWithId:GsonPreJava9DateFormatProvider_getUSDateTimeFormatWithInt_withInt_(JavaTextDateFormat_DEFAULT, JavaTextDateFormat_DEFAULT)];
  }
}

GsonDefaultDateTypeAdapter *new_GsonDefaultDateTypeAdapter_initWithIOSClass_(IOSClass *dateType) {
  J2OBJC_NEW_IMPL(GsonDefaultDateTypeAdapter, initWithIOSClass_, dateType)
}

GsonDefaultDateTypeAdapter *create_GsonDefaultDateTypeAdapter_initWithIOSClass_(IOSClass *dateType) {
  J2OBJC_CREATE_IMPL(GsonDefaultDateTypeAdapter, initWithIOSClass_, dateType)
}

void GsonDefaultDateTypeAdapter_initWithIOSClass_withNSString_(GsonDefaultDateTypeAdapter *self, IOSClass *dateType, NSString *datePattern) {
  GsonTypeAdapter_init(self);
  self->dateFormats_ = new_JavaUtilArrayList_init();
  self->dateType_ = GsonDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(dateType);
  if ([((NSString *) nil_chk(datePattern)) java_hasSuffix:@"Z"]) {
    [self->dateFormats_ addWithId:new_GsonDefaultDateTypeAdapter_1_initWithNSString_withJavaUtilLocale_(datePattern, JreLoadStatic(JavaUtilLocale, US))];
    if (![((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) isEqual:JreLoadStatic(JavaUtilLocale, US)]) {
      [self->dateFormats_ addWithId:new_GsonDefaultDateTypeAdapter_2_initWithNSString_(datePattern)];
    }
  }
  else {
    [self->dateFormats_ addWithId:new_JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(datePattern, JreLoadStatic(JavaUtilLocale, US))];
    if (![((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) isEqual:JreLoadStatic(JavaUtilLocale, US)]) {
      [self->dateFormats_ addWithId:new_JavaTextSimpleDateFormat_initWithNSString_(datePattern)];
    }
  }
}

GsonDefaultDateTypeAdapter *new_GsonDefaultDateTypeAdapter_initWithIOSClass_withNSString_(IOSClass *dateType, NSString *datePattern) {
  J2OBJC_NEW_IMPL(GsonDefaultDateTypeAdapter, initWithIOSClass_withNSString_, dateType, datePattern)
}

GsonDefaultDateTypeAdapter *create_GsonDefaultDateTypeAdapter_initWithIOSClass_withNSString_(IOSClass *dateType, NSString *datePattern) {
  J2OBJC_CREATE_IMPL(GsonDefaultDateTypeAdapter, initWithIOSClass_withNSString_, dateType, datePattern)
}

void GsonDefaultDateTypeAdapter_initWithIOSClass_withInt_(GsonDefaultDateTypeAdapter *self, IOSClass *dateType, jint style) {
  GsonTypeAdapter_init(self);
  self->dateFormats_ = new_JavaUtilArrayList_init();
  self->dateType_ = GsonDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(dateType);
  [self->dateFormats_ addWithId:JavaTextDateFormat_getDateInstanceWithInt_withJavaUtilLocale_(style, JreLoadStatic(JavaUtilLocale, US))];
  if (![((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) isEqual:JreLoadStatic(JavaUtilLocale, US)]) {
    [self->dateFormats_ addWithId:JavaTextDateFormat_getDateInstanceWithInt_(style)];
  }
  if (ComGoogleGsonUtilVersionUtils_isJava9OrLater()) {
    [self->dateFormats_ addWithId:GsonPreJava9DateFormatProvider_getUSDateFormatWithInt_(style)];
  }
}

GsonDefaultDateTypeAdapter *new_GsonDefaultDateTypeAdapter_initWithIOSClass_withInt_(IOSClass *dateType, jint style) {
  J2OBJC_NEW_IMPL(GsonDefaultDateTypeAdapter, initWithIOSClass_withInt_, dateType, style)
}

GsonDefaultDateTypeAdapter *create_GsonDefaultDateTypeAdapter_initWithIOSClass_withInt_(IOSClass *dateType, jint style) {
  J2OBJC_CREATE_IMPL(GsonDefaultDateTypeAdapter, initWithIOSClass_withInt_, dateType, style)
}

void GsonDefaultDateTypeAdapter_initWithInt_withInt_(GsonDefaultDateTypeAdapter *self, jint dateStyle, jint timeStyle) {
  GsonDefaultDateTypeAdapter_initWithIOSClass_withInt_withInt_(self, JavaUtilDate_class_(), dateStyle, timeStyle);
}

GsonDefaultDateTypeAdapter *new_GsonDefaultDateTypeAdapter_initWithInt_withInt_(jint dateStyle, jint timeStyle) {
  J2OBJC_NEW_IMPL(GsonDefaultDateTypeAdapter, initWithInt_withInt_, dateStyle, timeStyle)
}

GsonDefaultDateTypeAdapter *create_GsonDefaultDateTypeAdapter_initWithInt_withInt_(jint dateStyle, jint timeStyle) {
  J2OBJC_CREATE_IMPL(GsonDefaultDateTypeAdapter, initWithInt_withInt_, dateStyle, timeStyle)
}

void GsonDefaultDateTypeAdapter_initWithIOSClass_withInt_withInt_(GsonDefaultDateTypeAdapter *self, IOSClass *dateType, jint dateStyle, jint timeStyle) {
  GsonTypeAdapter_init(self);
  self->dateFormats_ = new_JavaUtilArrayList_init();
  self->dateType_ = GsonDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(dateType);
  [self->dateFormats_ addWithId:JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_withJavaUtilLocale_(dateStyle, timeStyle, JreLoadStatic(JavaUtilLocale, US))];
  if (![((JavaUtilLocale *) nil_chk(JavaUtilLocale_getDefault())) isEqual:JreLoadStatic(JavaUtilLocale, US)]) {
    [self->dateFormats_ addWithId:JavaTextDateFormat_getDateTimeInstanceWithInt_withInt_(dateStyle, timeStyle)];
  }
  if (ComGoogleGsonUtilVersionUtils_isJava9OrLater()) {
    [self->dateFormats_ addWithId:GsonPreJava9DateFormatProvider_getUSDateTimeFormatWithInt_withInt_(dateStyle, timeStyle)];
  }
}

GsonDefaultDateTypeAdapter *new_GsonDefaultDateTypeAdapter_initWithIOSClass_withInt_withInt_(IOSClass *dateType, jint dateStyle, jint timeStyle) {
  J2OBJC_NEW_IMPL(GsonDefaultDateTypeAdapter, initWithIOSClass_withInt_withInt_, dateType, dateStyle, timeStyle)
}

GsonDefaultDateTypeAdapter *create_GsonDefaultDateTypeAdapter_initWithIOSClass_withInt_withInt_(IOSClass *dateType, jint dateStyle, jint timeStyle) {
  J2OBJC_CREATE_IMPL(GsonDefaultDateTypeAdapter, initWithIOSClass_withInt_withInt_, dateType, dateStyle, timeStyle)
}

IOSClass *GsonDefaultDateTypeAdapter_verifyDateTypeWithIOSClass_(IOSClass *dateType) {
  GsonDefaultDateTypeAdapter_initialize();
  if (dateType != JavaUtilDate_class_() && dateType != JavaSqlDate_class_() && dateType != JavaSqlTimestamp_class_()) {
    @throw new_JavaLangIllegalArgumentException_initWithNSString_(JreStrcat("$@$@$@$@", @"Date type must be one of ", JavaUtilDate_class_(), @", ", JavaSqlTimestamp_class_(), @", or ", JavaSqlDate_class_(), @" but was ", dateType));
  }
  return dateType;
}

JavaUtilDate *GsonDefaultDateTypeAdapter_deserializeToDateWithNSString_(GsonDefaultDateTypeAdapter *self, NSString *s) {
  @synchronized(self->dateFormats_) {
    for (JavaTextDateFormat * __strong dateFormat in nil_chk(self->dateFormats_)) {
      @try {
        return [((JavaTextDateFormat *) nil_chk(dateFormat)) parseWithNSString:s];
      }
      @catch (JavaTextParseException *ignored) {
      }
    }
    @try {
      return ComGoogleGsonInternalBindUtilISO8601Utils_parseWithNSString_withJavaTextParsePosition_(s, new_JavaTextParsePosition_initWithInt_(0));
    }
    @catch (JavaTextParseException *e) {
      @throw new_GsonJsonSyntaxException_initWithNSString_withJavaLangThrowable_(s, e);
    }
  }
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonDefaultDateTypeAdapter)

@implementation GsonDefaultDateTypeAdapter_1

- (instancetype)initWithNSString:(NSString *)x0
              withJavaUtilLocale:(JavaUtilLocale *)x1 {
  GsonDefaultDateTypeAdapter_1_initWithNSString_withJavaUtilLocale_(self, x0, x1);
  return self;
}

- (JavaLangStringBuffer *)formatWithJavaUtilDate:(JavaUtilDate *)date
                        withJavaLangStringBuffer:(JavaLangStringBuffer *)toAppendTo
                       withJavaTextFieldPosition:(JavaTextFieldPosition *)pos {
  JavaLangStringBuffer *rfcFormat = [super formatWithJavaUtilDate:date withJavaLangStringBuffer:toAppendTo withJavaTextFieldPosition:pos];
  return [((JavaLangStringBuffer *) nil_chk(rfcFormat)) insertWithInt:[rfcFormat java_length] - 2 withNSString:@":"];
}

- (JavaUtilDate *)parseWithNSString:(NSString *)text
          withJavaTextParsePosition:(JavaTextParsePosition *)pos {
  if ([((NSString *) nil_chk(text)) java_length] > 3) {
    text = JreStrcat("$$", [text java_substring:0 endIndex:[text java_length] - 3], [text java_substring:[text java_length] - 2]);
  }
  return [super parseWithNSString:text withJavaTextParsePosition:pos];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:withJavaUtilLocale:);
  methods[1].selector = @selector(formatWithJavaUtilDate:withJavaLangStringBuffer:withJavaTextFieldPosition:);
  methods[2].selector = @selector(parseWithNSString:withJavaTextParsePosition:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;LJavaUtilLocale;", "format", "LJavaUtilDate;LJavaLangStringBuffer;LJavaTextFieldPosition;", "parse", "LNSString;LJavaTextParsePosition;", "LGsonDefaultDateTypeAdapter;", "initWithIOSClass:withNSString:" };
  static const J2ObjcClassInfo _GsonDefaultDateTypeAdapter_1 = { "", "j2objc.gson", ptrTable, methods, NULL, 7, 0x8018, 3, 0, 5, -1, 6, -1, -1 };
  return &_GsonDefaultDateTypeAdapter_1;
}

@end

void GsonDefaultDateTypeAdapter_1_initWithNSString_withJavaUtilLocale_(GsonDefaultDateTypeAdapter_1 *self, NSString *x0, JavaUtilLocale *x1) {
  JavaTextSimpleDateFormat_initWithNSString_withJavaUtilLocale_(self, x0, x1);
}

GsonDefaultDateTypeAdapter_1 *new_GsonDefaultDateTypeAdapter_1_initWithNSString_withJavaUtilLocale_(NSString *x0, JavaUtilLocale *x1) {
  J2OBJC_NEW_IMPL(GsonDefaultDateTypeAdapter_1, initWithNSString_withJavaUtilLocale_, x0, x1)
}

GsonDefaultDateTypeAdapter_1 *create_GsonDefaultDateTypeAdapter_1_initWithNSString_withJavaUtilLocale_(NSString *x0, JavaUtilLocale *x1) {
  J2OBJC_CREATE_IMPL(GsonDefaultDateTypeAdapter_1, initWithNSString_withJavaUtilLocale_, x0, x1)
}

@implementation GsonDefaultDateTypeAdapter_2

- (instancetype)initWithNSString:(NSString *)x0 {
  GsonDefaultDateTypeAdapter_2_initWithNSString_(self, x0);
  return self;
}

- (JavaLangStringBuffer *)formatWithJavaUtilDate:(JavaUtilDate *)date
                        withJavaLangStringBuffer:(JavaLangStringBuffer *)toAppendTo
                       withJavaTextFieldPosition:(JavaTextFieldPosition *)pos {
  JavaLangStringBuffer *rfcFormat = [super formatWithJavaUtilDate:date withJavaLangStringBuffer:toAppendTo withJavaTextFieldPosition:pos];
  return [((JavaLangStringBuffer *) nil_chk(rfcFormat)) insertWithInt:[rfcFormat java_length] - 2 withNSString:@":"];
}

- (JavaUtilDate *)parseWithNSString:(NSString *)text
          withJavaTextParsePosition:(JavaTextParsePosition *)pos {
  if ([((NSString *) nil_chk(text)) java_length] > 3) {
    text = JreStrcat("$$", [text java_substring:0 endIndex:[text java_length] - 3], [text java_substring:[text java_length] - 2]);
  }
  return [super parseWithNSString:text withJavaTextParsePosition:pos];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, 0, -1, -1, -1, -1 },
    { NULL, "LJavaLangStringBuffer;", 0x1, 1, 2, -1, -1, -1, -1 },
    { NULL, "LJavaUtilDate;", 0x1, 3, 4, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(initWithNSString:);
  methods[1].selector = @selector(formatWithJavaUtilDate:withJavaLangStringBuffer:withJavaTextFieldPosition:);
  methods[2].selector = @selector(parseWithNSString:withJavaTextParsePosition:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "LNSString;", "format", "LJavaUtilDate;LJavaLangStringBuffer;LJavaTextFieldPosition;", "parse", "LNSString;LJavaTextParsePosition;", "LGsonDefaultDateTypeAdapter;", "initWithIOSClass:withNSString:" };
  static const J2ObjcClassInfo _GsonDefaultDateTypeAdapter_2 = { "", "j2objc.gson", ptrTable, methods, NULL, 7, 0x8018, 3, 0, 5, -1, 6, -1, -1 };
  return &_GsonDefaultDateTypeAdapter_2;
}

@end

void GsonDefaultDateTypeAdapter_2_initWithNSString_(GsonDefaultDateTypeAdapter_2 *self, NSString *x0) {
  JavaTextSimpleDateFormat_initWithNSString_(self, x0);
}

GsonDefaultDateTypeAdapter_2 *new_GsonDefaultDateTypeAdapter_2_initWithNSString_(NSString *x0) {
  J2OBJC_NEW_IMPL(GsonDefaultDateTypeAdapter_2, initWithNSString_, x0)
}

GsonDefaultDateTypeAdapter_2 *create_GsonDefaultDateTypeAdapter_2_initWithNSString_(NSString *x0) {
  J2OBJC_CREATE_IMPL(GsonDefaultDateTypeAdapter_2, initWithNSString_, x0)
}
