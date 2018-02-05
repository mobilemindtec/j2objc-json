//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: ./build/j2objc/java/JsonTreeReader.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "JsonArray.h"
#include "JsonElement.h"
#include "JsonNull.h"
#include "JsonObject.h"
#include "JsonPrimitive.h"
#include "JsonReader.h"
#include "JsonToken.h"
#include "JsonTreeReader.h"
#include "java/io/Reader.h"
#include "java/lang/AssertionError.h"
#include "java/lang/Double.h"
#include "java/lang/IllegalStateException.h"
#include "java/lang/NumberFormatException.h"
#include "java/lang/StringBuilder.h"
#include "java/lang/System.h"
#include "java/util/Iterator.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

@interface GsonJsonTreeReader () {
 @public
  IOSObjectArray *stack_JsonTreeReader_;
  jint stackSize_JsonTreeReader_;
  IOSObjectArray *pathNames_JsonTreeReader_;
  IOSIntArray *pathIndices_JsonTreeReader_;
}

- (id)peekStack;

- (id)popStack;

- (void)expectWithGsonJsonToken:(GsonJsonToken *)expected;

- (void)pushWithId:(id)newTop;

- (NSString *)locationString;

@end

J2OBJC_FIELD_SETTER(GsonJsonTreeReader, stack_JsonTreeReader_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(GsonJsonTreeReader, pathNames_JsonTreeReader_, IOSObjectArray *)
J2OBJC_FIELD_SETTER(GsonJsonTreeReader, pathIndices_JsonTreeReader_, IOSIntArray *)

inline JavaIoReader *GsonJsonTreeReader_get_UNREADABLE_READER(void);
static JavaIoReader *GsonJsonTreeReader_UNREADABLE_READER;
J2OBJC_STATIC_FIELD_OBJ_FINAL(GsonJsonTreeReader, UNREADABLE_READER, JavaIoReader *)

inline id GsonJsonTreeReader_get_SENTINEL_CLOSED(void);
static id GsonJsonTreeReader_SENTINEL_CLOSED;
J2OBJC_STATIC_FIELD_OBJ_FINAL(GsonJsonTreeReader, SENTINEL_CLOSED, id)

__attribute__((unused)) static id GsonJsonTreeReader_peekStack(GsonJsonTreeReader *self);

__attribute__((unused)) static id GsonJsonTreeReader_popStack(GsonJsonTreeReader *self);

__attribute__((unused)) static void GsonJsonTreeReader_expectWithGsonJsonToken_(GsonJsonTreeReader *self, GsonJsonToken *expected);

__attribute__((unused)) static void GsonJsonTreeReader_pushWithId_(GsonJsonTreeReader *self, id newTop);

__attribute__((unused)) static NSString *GsonJsonTreeReader_locationString(GsonJsonTreeReader *self);

@interface GsonJsonTreeReader_1 : JavaIoReader

- (instancetype)init;

- (jint)readWithCharArray:(IOSCharArray *)buffer
                  withInt:(jint)offset
                  withInt:(jint)count;

- (void)close;

@end

J2OBJC_EMPTY_STATIC_INIT(GsonJsonTreeReader_1)

__attribute__((unused)) static void GsonJsonTreeReader_1_init(GsonJsonTreeReader_1 *self);

__attribute__((unused)) static GsonJsonTreeReader_1 *new_GsonJsonTreeReader_1_init(void) NS_RETURNS_RETAINED;

__attribute__((unused)) static GsonJsonTreeReader_1 *create_GsonJsonTreeReader_1_init(void);

J2OBJC_INITIALIZED_DEFN(GsonJsonTreeReader)

@implementation GsonJsonTreeReader

- (instancetype)initWithGsonJsonElement:(GsonJsonElement *)element {
  GsonJsonTreeReader_initWithGsonJsonElement_(self, element);
  return self;
}

- (void)beginArray {
  GsonJsonTreeReader_expectWithGsonJsonToken_(self, JreLoadEnum(GsonJsonToken, BEGIN_ARRAY));
  GsonJsonArray *array = (GsonJsonArray *) cast_chk(GsonJsonTreeReader_peekStack(self), [GsonJsonArray class]);
  GsonJsonTreeReader_pushWithId_(self, [((GsonJsonArray *) nil_chk(array)) iterator]);
  *IOSIntArray_GetRef(nil_chk(pathIndices_JsonTreeReader_), stackSize_JsonTreeReader_ - 1) = 0;
}

- (void)endArray {
  GsonJsonTreeReader_expectWithGsonJsonToken_(self, JreLoadEnum(GsonJsonToken, END_ARRAY));
  (void) GsonJsonTreeReader_popStack(self);
  (void) GsonJsonTreeReader_popStack(self);
  if (stackSize_JsonTreeReader_ > 0) {
    (*IOSIntArray_GetRef(nil_chk(pathIndices_JsonTreeReader_), stackSize_JsonTreeReader_ - 1))++;
  }
}

- (void)beginObject {
  GsonJsonTreeReader_expectWithGsonJsonToken_(self, JreLoadEnum(GsonJsonToken, BEGIN_OBJECT));
  GsonJsonObject *object = (GsonJsonObject *) cast_chk(GsonJsonTreeReader_peekStack(self), [GsonJsonObject class]);
  GsonJsonTreeReader_pushWithId_(self, [((id<JavaUtilSet>) nil_chk([((GsonJsonObject *) nil_chk(object)) entrySet])) iterator]);
}

- (void)endObject {
  GsonJsonTreeReader_expectWithGsonJsonToken_(self, JreLoadEnum(GsonJsonToken, END_OBJECT));
  (void) GsonJsonTreeReader_popStack(self);
  (void) GsonJsonTreeReader_popStack(self);
  if (stackSize_JsonTreeReader_ > 0) {
    (*IOSIntArray_GetRef(nil_chk(pathIndices_JsonTreeReader_), stackSize_JsonTreeReader_ - 1))++;
  }
}

- (jboolean)hasNext {
  GsonJsonToken *token = [self peek];
  return token != JreLoadEnum(GsonJsonToken, END_OBJECT) && token != JreLoadEnum(GsonJsonToken, END_ARRAY);
}

- (GsonJsonToken *)peek {
  if (stackSize_JsonTreeReader_ == 0) {
    return JreLoadEnum(GsonJsonToken, END_DOCUMENT);
  }
  id o = GsonJsonTreeReader_peekStack(self);
  if ([JavaUtilIterator_class_() isInstance:o]) {
    jboolean isObject = [IOSObjectArray_Get(nil_chk(stack_JsonTreeReader_), stackSize_JsonTreeReader_ - 2) isKindOfClass:[GsonJsonObject class]];
    id<JavaUtilIterator> iterator = (id<JavaUtilIterator>) cast_check(o, JavaUtilIterator_class_());
    if ([((id<JavaUtilIterator>) nil_chk(iterator)) hasNext]) {
      if (isObject) {
        return JreLoadEnum(GsonJsonToken, NAME);
      }
      else {
        GsonJsonTreeReader_pushWithId_(self, [iterator next]);
        return [self peek];
      }
    }
    else {
      return isObject ? JreLoadEnum(GsonJsonToken, END_OBJECT) : JreLoadEnum(GsonJsonToken, END_ARRAY);
    }
  }
  else if ([o isKindOfClass:[GsonJsonObject class]]) {
    return JreLoadEnum(GsonJsonToken, BEGIN_OBJECT);
  }
  else if ([o isKindOfClass:[GsonJsonArray class]]) {
    return JreLoadEnum(GsonJsonToken, BEGIN_ARRAY);
  }
  else if ([o isKindOfClass:[GsonJsonPrimitive class]]) {
    GsonJsonPrimitive *primitive = (GsonJsonPrimitive *) cast_chk(o, [GsonJsonPrimitive class]);
    if ([((GsonJsonPrimitive *) nil_chk(primitive)) isString]) {
      return JreLoadEnum(GsonJsonToken, STRING);
    }
    else if ([primitive isBoolean]) {
      return JreLoadEnum(GsonJsonToken, BOOLEAN);
    }
    else if ([primitive isNumber]) {
      return JreLoadEnum(GsonJsonToken, NUMBER);
    }
    else {
      @throw new_JavaLangAssertionError_init();
    }
  }
  else if ([o isKindOfClass:[GsonJsonNull class]]) {
    return JreLoadEnum(GsonJsonToken, NULL);
  }
  else if (o == GsonJsonTreeReader_SENTINEL_CLOSED) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(@"JsonReader is closed");
  }
  else {
    @throw new_JavaLangAssertionError_init();
  }
}

- (id)peekStack {
  return GsonJsonTreeReader_peekStack(self);
}

- (id)popStack {
  return GsonJsonTreeReader_popStack(self);
}

- (void)expectWithGsonJsonToken:(GsonJsonToken *)expected {
  GsonJsonTreeReader_expectWithGsonJsonToken_(self, expected);
}

- (NSString *)nextName {
  GsonJsonTreeReader_expectWithGsonJsonToken_(self, JreLoadEnum(GsonJsonToken, NAME));
  id<JavaUtilIterator> i = (id<JavaUtilIterator>) cast_check(GsonJsonTreeReader_peekStack(self), JavaUtilIterator_class_());
  id<JavaUtilMap_Entry> entry_ = (id<JavaUtilMap_Entry>) cast_check([((id<JavaUtilIterator>) nil_chk(i)) next], JavaUtilMap_Entry_class_());
  NSString *result = (NSString *) cast_chk([((id<JavaUtilMap_Entry>) nil_chk(entry_)) getKey], [NSString class]);
  (void) IOSObjectArray_Set(nil_chk(pathNames_JsonTreeReader_), stackSize_JsonTreeReader_ - 1, result);
  GsonJsonTreeReader_pushWithId_(self, [entry_ getValue]);
  return result;
}

- (NSString *)nextString {
  GsonJsonToken *token = [self peek];
  if (token != JreLoadEnum(GsonJsonToken, STRING) && token != JreLoadEnum(GsonJsonToken, NUMBER)) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@$", @"Expected ", JreLoadEnum(GsonJsonToken, STRING), @" but was ", token, GsonJsonTreeReader_locationString(self)));
  }
  NSString *result = [((GsonJsonPrimitive *) nil_chk(((GsonJsonPrimitive *) cast_chk(GsonJsonTreeReader_popStack(self), [GsonJsonPrimitive class])))) getAsString];
  if (stackSize_JsonTreeReader_ > 0) {
    (*IOSIntArray_GetRef(nil_chk(pathIndices_JsonTreeReader_), stackSize_JsonTreeReader_ - 1))++;
  }
  return result;
}

- (jboolean)nextBoolean {
  GsonJsonTreeReader_expectWithGsonJsonToken_(self, JreLoadEnum(GsonJsonToken, BOOLEAN));
  jboolean result = [((GsonJsonPrimitive *) nil_chk(((GsonJsonPrimitive *) cast_chk(GsonJsonTreeReader_popStack(self), [GsonJsonPrimitive class])))) getAsBoolean];
  if (stackSize_JsonTreeReader_ > 0) {
    (*IOSIntArray_GetRef(nil_chk(pathIndices_JsonTreeReader_), stackSize_JsonTreeReader_ - 1))++;
  }
  return result;
}

- (void)nextNull {
  GsonJsonTreeReader_expectWithGsonJsonToken_(self, JreLoadEnum(GsonJsonToken, NULL));
  (void) GsonJsonTreeReader_popStack(self);
  if (stackSize_JsonTreeReader_ > 0) {
    (*IOSIntArray_GetRef(nil_chk(pathIndices_JsonTreeReader_), stackSize_JsonTreeReader_ - 1))++;
  }
}

- (jdouble)nextDouble {
  GsonJsonToken *token = [self peek];
  if (token != JreLoadEnum(GsonJsonToken, NUMBER) && token != JreLoadEnum(GsonJsonToken, STRING)) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@$", @"Expected ", JreLoadEnum(GsonJsonToken, NUMBER), @" but was ", token, GsonJsonTreeReader_locationString(self)));
  }
  jdouble result = [((GsonJsonPrimitive *) nil_chk(((GsonJsonPrimitive *) cast_chk(GsonJsonTreeReader_peekStack(self), [GsonJsonPrimitive class])))) getAsDouble];
  if (![self isLenient] && (JavaLangDouble_isNaNWithDouble_(result) || JavaLangDouble_isInfiniteWithDouble_(result))) {
    @throw new_JavaLangNumberFormatException_initWithNSString_(JreStrcat("$D", @"JSON forbids NaN and infinities: ", result));
  }
  (void) GsonJsonTreeReader_popStack(self);
  if (stackSize_JsonTreeReader_ > 0) {
    (*IOSIntArray_GetRef(nil_chk(pathIndices_JsonTreeReader_), stackSize_JsonTreeReader_ - 1))++;
  }
  return result;
}

- (jlong)nextLong {
  GsonJsonToken *token = [self peek];
  if (token != JreLoadEnum(GsonJsonToken, NUMBER) && token != JreLoadEnum(GsonJsonToken, STRING)) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@$", @"Expected ", JreLoadEnum(GsonJsonToken, NUMBER), @" but was ", token, GsonJsonTreeReader_locationString(self)));
  }
  jlong result = [((GsonJsonPrimitive *) nil_chk(((GsonJsonPrimitive *) cast_chk(GsonJsonTreeReader_peekStack(self), [GsonJsonPrimitive class])))) getAsLong];
  (void) GsonJsonTreeReader_popStack(self);
  if (stackSize_JsonTreeReader_ > 0) {
    (*IOSIntArray_GetRef(nil_chk(pathIndices_JsonTreeReader_), stackSize_JsonTreeReader_ - 1))++;
  }
  return result;
}

- (jint)nextInt {
  GsonJsonToken *token = [self peek];
  if (token != JreLoadEnum(GsonJsonToken, NUMBER) && token != JreLoadEnum(GsonJsonToken, STRING)) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@$", @"Expected ", JreLoadEnum(GsonJsonToken, NUMBER), @" but was ", token, GsonJsonTreeReader_locationString(self)));
  }
  jint result = [((GsonJsonPrimitive *) nil_chk(((GsonJsonPrimitive *) cast_chk(GsonJsonTreeReader_peekStack(self), [GsonJsonPrimitive class])))) getAsInt];
  (void) GsonJsonTreeReader_popStack(self);
  if (stackSize_JsonTreeReader_ > 0) {
    (*IOSIntArray_GetRef(nil_chk(pathIndices_JsonTreeReader_), stackSize_JsonTreeReader_ - 1))++;
  }
  return result;
}

- (void)close {
  stack_JsonTreeReader_ = [IOSObjectArray newArrayWithObjects:(id[]){ GsonJsonTreeReader_SENTINEL_CLOSED } count:1 type:NSObject_class_()];
  stackSize_JsonTreeReader_ = 1;
}

- (void)skipValue {
  if ([self peek] == JreLoadEnum(GsonJsonToken, NAME)) {
    (void) [self nextName];
    (void) IOSObjectArray_Set(nil_chk(pathNames_JsonTreeReader_), stackSize_JsonTreeReader_ - 2, @"null");
  }
  else {
    (void) GsonJsonTreeReader_popStack(self);
    if (stackSize_JsonTreeReader_ > 0) {
      (void) IOSObjectArray_Set(nil_chk(pathNames_JsonTreeReader_), stackSize_JsonTreeReader_ - 1, @"null");
    }
  }
  if (stackSize_JsonTreeReader_ > 0) {
    (*IOSIntArray_GetRef(nil_chk(pathIndices_JsonTreeReader_), stackSize_JsonTreeReader_ - 1))++;
  }
}

- (NSString *)description {
  return [[self java_getClass] getSimpleName];
}

- (void)promoteNameToValue {
  GsonJsonTreeReader_expectWithGsonJsonToken_(self, JreLoadEnum(GsonJsonToken, NAME));
  id<JavaUtilIterator> i = (id<JavaUtilIterator>) cast_check(GsonJsonTreeReader_peekStack(self), JavaUtilIterator_class_());
  id<JavaUtilMap_Entry> entry_ = (id<JavaUtilMap_Entry>) cast_check([((id<JavaUtilIterator>) nil_chk(i)) next], JavaUtilMap_Entry_class_());
  GsonJsonTreeReader_pushWithId_(self, [((id<JavaUtilMap_Entry>) nil_chk(entry_)) getValue]);
  GsonJsonTreeReader_pushWithId_(self, new_GsonJsonPrimitive_initWithNSString_((NSString *) cast_chk([entry_ getKey], [NSString class])));
}

- (void)pushWithId:(id)newTop {
  GsonJsonTreeReader_pushWithId_(self, newTop);
}

- (NSString *)getPath {
  JavaLangStringBuilder *result = [new_JavaLangStringBuilder_init() appendWithChar:'$'];
  for (jint i = 0; i < stackSize_JsonTreeReader_; i++) {
    if ([IOSObjectArray_Get(nil_chk(stack_JsonTreeReader_), i) isKindOfClass:[GsonJsonArray class]]) {
      if ([JavaUtilIterator_class_() isInstance:IOSObjectArray_Get(stack_JsonTreeReader_, ++i)]) {
        (void) [((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk([((JavaLangStringBuilder *) nil_chk(result)) appendWithChar:'['])) appendWithInt:IOSIntArray_Get(nil_chk(pathIndices_JsonTreeReader_), i)])) appendWithChar:']'];
      }
    }
    else if ([IOSObjectArray_Get(stack_JsonTreeReader_, i) isKindOfClass:[GsonJsonObject class]]) {
      if ([JavaUtilIterator_class_() isInstance:IOSObjectArray_Get(stack_JsonTreeReader_, ++i)]) {
        (void) [((JavaLangStringBuilder *) nil_chk(result)) appendWithChar:'.'];
        if (IOSObjectArray_Get(nil_chk(pathNames_JsonTreeReader_), i) != nil) {
          (void) [result appendWithNSString:IOSObjectArray_Get(pathNames_JsonTreeReader_, i)];
        }
      }
    }
  }
  return [((JavaLangStringBuilder *) nil_chk(result)) description];
}

- (NSString *)locationString {
  return GsonJsonTreeReader_locationString(self);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, 0, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LGsonJsonToken;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSObject;", 0x2, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x2, 2, 3, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "Z", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "D", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "J", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "I", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, 4, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 1, -1, -1, -1 },
    { NULL, "V", 0x2, 5, 6, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "LNSString;", 0x2, -1, -1, -1, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(initWithGsonJsonElement:);
  methods[1].selector = @selector(beginArray);
  methods[2].selector = @selector(endArray);
  methods[3].selector = @selector(beginObject);
  methods[4].selector = @selector(endObject);
  methods[5].selector = @selector(hasNext);
  methods[6].selector = @selector(peek);
  methods[7].selector = @selector(peekStack);
  methods[8].selector = @selector(popStack);
  methods[9].selector = @selector(expectWithGsonJsonToken:);
  methods[10].selector = @selector(nextName);
  methods[11].selector = @selector(nextString);
  methods[12].selector = @selector(nextBoolean);
  methods[13].selector = @selector(nextNull);
  methods[14].selector = @selector(nextDouble);
  methods[15].selector = @selector(nextLong);
  methods[16].selector = @selector(nextInt);
  methods[17].selector = @selector(close);
  methods[18].selector = @selector(skipValue);
  methods[19].selector = @selector(description);
  methods[20].selector = @selector(promoteNameToValue);
  methods[21].selector = @selector(pushWithId:);
  methods[22].selector = @selector(getPath);
  methods[23].selector = @selector(locationString);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "UNREADABLE_READER", "LJavaIoReader;", .constantValue.asLong = 0, 0x1a, -1, 7, -1, -1 },
    { "SENTINEL_CLOSED", "LNSObject;", .constantValue.asLong = 0, 0x1a, -1, 8, -1, -1 },
    { "stack_JsonTreeReader_", "[LNSObject;", .constantValue.asLong = 0, 0x2, 9, -1, -1, -1 },
    { "stackSize_JsonTreeReader_", "I", .constantValue.asLong = 0, 0x2, 10, -1, -1, -1 },
    { "pathNames_JsonTreeReader_", "[LNSString;", .constantValue.asLong = 0, 0x2, 11, -1, -1, -1 },
    { "pathIndices_JsonTreeReader_", "[I", .constantValue.asLong = 0, 0x2, 12, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LGsonJsonElement;", "LJavaIoIOException;", "expect", "LGsonJsonToken;", "toString", "push", "LNSObject;", &GsonJsonTreeReader_UNREADABLE_READER, &GsonJsonTreeReader_SENTINEL_CLOSED, "stack", "stackSize", "pathNames", "pathIndices" };
  static const J2ObjcClassInfo _GsonJsonTreeReader = { "JsonTreeReader", "com.google.gson.internal.bind", ptrTable, methods, fields, 7, 0x11, 24, 6, -1, -1, -1, -1, -1 };
  return &_GsonJsonTreeReader;
}

+ (void)initialize {
  if (self == [GsonJsonTreeReader class]) {
    GsonJsonTreeReader_UNREADABLE_READER = new_GsonJsonTreeReader_1_init();
    GsonJsonTreeReader_SENTINEL_CLOSED = new_NSObject_init();
    J2OBJC_SET_INITIALIZED(GsonJsonTreeReader)
  }
}

@end

void GsonJsonTreeReader_initWithGsonJsonElement_(GsonJsonTreeReader *self, GsonJsonElement *element) {
  GsonJsonReader_initWithJavaIoReader_(self, GsonJsonTreeReader_UNREADABLE_READER);
  self->stack_JsonTreeReader_ = [IOSObjectArray newArrayWithLength:32 type:NSObject_class_()];
  self->stackSize_JsonTreeReader_ = 0;
  self->pathNames_JsonTreeReader_ = [IOSObjectArray newArrayWithLength:32 type:NSString_class_()];
  self->pathIndices_JsonTreeReader_ = [IOSIntArray newArrayWithLength:32];
  GsonJsonTreeReader_pushWithId_(self, element);
}

GsonJsonTreeReader *new_GsonJsonTreeReader_initWithGsonJsonElement_(GsonJsonElement *element) {
  J2OBJC_NEW_IMPL(GsonJsonTreeReader, initWithGsonJsonElement_, element)
}

GsonJsonTreeReader *create_GsonJsonTreeReader_initWithGsonJsonElement_(GsonJsonElement *element) {
  J2OBJC_CREATE_IMPL(GsonJsonTreeReader, initWithGsonJsonElement_, element)
}

id GsonJsonTreeReader_peekStack(GsonJsonTreeReader *self) {
  return IOSObjectArray_Get(nil_chk(self->stack_JsonTreeReader_), self->stackSize_JsonTreeReader_ - 1);
}

id GsonJsonTreeReader_popStack(GsonJsonTreeReader *self) {
  id result = IOSObjectArray_Get(nil_chk(self->stack_JsonTreeReader_), --self->stackSize_JsonTreeReader_);
  (void) IOSObjectArray_Set(self->stack_JsonTreeReader_, self->stackSize_JsonTreeReader_, nil);
  return result;
}

void GsonJsonTreeReader_expectWithGsonJsonToken_(GsonJsonTreeReader *self, GsonJsonToken *expected) {
  if ([self peek] != expected) {
    @throw new_JavaLangIllegalStateException_initWithNSString_(JreStrcat("$@$@$", @"Expected ", expected, @" but was ", [self peek], GsonJsonTreeReader_locationString(self)));
  }
}

void GsonJsonTreeReader_pushWithId_(GsonJsonTreeReader *self, id newTop) {
  if (self->stackSize_JsonTreeReader_ == ((IOSObjectArray *) nil_chk(self->stack_JsonTreeReader_))->size_) {
    IOSObjectArray *newStack = [IOSObjectArray newArrayWithLength:self->stackSize_JsonTreeReader_ * 2 type:NSObject_class_()];
    IOSIntArray *newPathIndices = [IOSIntArray newArrayWithLength:self->stackSize_JsonTreeReader_ * 2];
    IOSObjectArray *newPathNames = [IOSObjectArray newArrayWithLength:self->stackSize_JsonTreeReader_ * 2 type:NSString_class_()];
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->stack_JsonTreeReader_, 0, newStack, 0, self->stackSize_JsonTreeReader_);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->pathIndices_JsonTreeReader_, 0, newPathIndices, 0, self->stackSize_JsonTreeReader_);
    JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->pathNames_JsonTreeReader_, 0, newPathNames, 0, self->stackSize_JsonTreeReader_);
    self->stack_JsonTreeReader_ = newStack;
    self->pathIndices_JsonTreeReader_ = newPathIndices;
    self->pathNames_JsonTreeReader_ = newPathNames;
  }
  (void) IOSObjectArray_Set(self->stack_JsonTreeReader_, self->stackSize_JsonTreeReader_++, newTop);
}

NSString *GsonJsonTreeReader_locationString(GsonJsonTreeReader *self) {
  return JreStrcat("$$", @" at path ", [self getPath]);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(GsonJsonTreeReader)

@implementation GsonJsonTreeReader_1

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  GsonJsonTreeReader_1_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (jint)readWithCharArray:(IOSCharArray *)buffer
                  withInt:(jint)offset
                  withInt:(jint)count {
  @throw new_JavaLangAssertionError_init();
}

- (void)close {
  @throw new_JavaLangAssertionError_init();
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x0, -1, -1, -1, -1, -1, -1 },
    { NULL, "I", 0x1, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(readWithCharArray:withInt:withInt:);
  methods[2].selector = @selector(close);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "read", "[CII", "LJavaIoIOException;", "LGsonJsonTreeReader;" };
  static const J2ObjcClassInfo _GsonJsonTreeReader_1 = { "", "com.google.gson.internal.bind", ptrTable, methods, NULL, 7, 0x8018, 3, 0, 3, -1, -1, -1, -1 };
  return &_GsonJsonTreeReader_1;
}

@end

void GsonJsonTreeReader_1_init(GsonJsonTreeReader_1 *self) {
  JavaIoReader_init(self);
}

GsonJsonTreeReader_1 *new_GsonJsonTreeReader_1_init() {
  J2OBJC_NEW_IMPL(GsonJsonTreeReader_1, init)
}

GsonJsonTreeReader_1 *create_GsonJsonTreeReader_1_init() {
  J2OBJC_CREATE_IMPL(GsonJsonTreeReader_1, init)
}