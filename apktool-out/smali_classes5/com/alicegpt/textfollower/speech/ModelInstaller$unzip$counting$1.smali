.class public final Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;
.super Ljava/io/FilterInputStream;
.source "ModelInstaller.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alicegpt/textfollower/speech/ModelInstaller;->unzip$app_debug(Ljava/io/InputStream;JLjava/io/File;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1",
        "Ljava/io/FilterInputStream;",
        "read",
        "",
        "b",
        "",
        "off",
        "len",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $read:Lkotlin/jvm/internal/Ref$LongRef;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lkotlin/jvm/internal/Ref$LongRef;)V
    .locals 0
    .param p1, "$raw"    # Ljava/io/InputStream;
    .param p2, "$read"    # Lkotlin/jvm/internal/Ref$LongRef;

    iput-object p2, p0, Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;->$read:Lkotlin/jvm/internal/Ref$LongRef;

    .line 74
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 77
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;->$read:Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v2, p0, Lcom/alicegpt/textfollower/speech/ModelInstaller$unzip$counting$1;->$read:Lkotlin/jvm/internal/Ref$LongRef;

    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 78
    :cond_0
    return v0
.end method
