.class public final Lcom/k2fsa/sherpa/onnx/VersionInfo$Companion;
.super Ljava/lang/Object;
.source "VersionInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/k2fsa/sherpa/onnx/VersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\r\u001a\u00020\u0004H\u0086 J\t\u0010\u000e\u001a\u00020\u0004H\u0086 J\t\u0010\u000f\u001a\u00020\u0004H\u0086 J\t\u0010\u0010\u001a\u00020\u0004H\u0086 R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/k2fsa/sherpa/onnx/VersionInfo$Companion;",
        "",
        "()V",
        "gitDate",
        "",
        "getGitDate",
        "()Ljava/lang/String;",
        "gitSha1",
        "getGitSha1",
        "onnxruntimeVersion",
        "getOnnxruntimeVersion",
        "version",
        "getVersion",
        "getGitDate2",
        "getGitSha12",
        "getOnnxruntimeVersionStr2",
        "getVersionStr2",
        "sherpa_onnx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/k2fsa/sherpa/onnx/VersionInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGitDate()Ljava/lang/String;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/VersionInfo$Companion;->getGitDate2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final native getGitDate2()Ljava/lang/String;
.end method

.method public final getGitSha1()Ljava/lang/String;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/VersionInfo$Companion;->getGitSha12()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final native getGitSha12()Ljava/lang/String;
.end method

.method public final getOnnxruntimeVersion()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/VersionInfo$Companion;->getOnnxruntimeVersionStr2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final native getOnnxruntimeVersionStr2()Ljava/lang/String;
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/k2fsa/sherpa/onnx/VersionInfo$Companion;->getVersionStr2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final native getVersionStr2()Ljava/lang/String;
.end method
