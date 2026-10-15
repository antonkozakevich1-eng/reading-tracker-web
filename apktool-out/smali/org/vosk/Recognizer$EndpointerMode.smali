.class public Lorg/vosk/Recognizer$EndpointerMode;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/vosk/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EndpointerMode"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final LONG:I = 0x2

.field public static final SHORT:I = 0x1

.field public static final VERY_LONG:I = 0x3


# instance fields
.field final synthetic this$0:Lorg/vosk/Recognizer;


# direct methods
.method public constructor <init>(Lorg/vosk/Recognizer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/vosk/Recognizer;

    .line 242
    iput-object p1, p0, Lorg/vosk/Recognizer$EndpointerMode;->this$0:Lorg/vosk/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
