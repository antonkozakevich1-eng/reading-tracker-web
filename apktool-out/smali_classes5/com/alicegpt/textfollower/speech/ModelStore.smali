.class public interface abstract Lcom/alicegpt/textfollower/speech/ModelStore;
.super Ljava/lang/Object;
.source "ModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/speech/ModelStore$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH&J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000c\u001a\u00020\rH&J$\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/ModelStore;",
        "",
        "kind",
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
        "getKind",
        "()Lcom/alicegpt/textfollower/speech/EngineKind;",
        "downloadMb",
        "",
        "getDownloadMb",
        "()I",
        "modelDir",
        "Ljava/io/File;",
        "context",
        "Landroid/content/Context;",
        "isInstalled",
        "",
        "isBundled",
        "install",
        "onProgress",
        "Lkotlin/Function1;",
        "",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/alicegpt/textfollower/speech/ModelStore$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/alicegpt/textfollower/speech/ModelStore$Companion;->$$INSTANCE:Lcom/alicegpt/textfollower/speech/ModelStore$Companion;

    sput-object v0, Lcom/alicegpt/textfollower/speech/ModelStore;->Companion:Lcom/alicegpt/textfollower/speech/ModelStore$Companion;

    return-void
.end method


# virtual methods
.method public abstract getDownloadMb()I
.end method

.method public abstract getKind()Lcom/alicegpt/textfollower/speech/EngineKind;
.end method

.method public abstract install(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation
.end method

.method public abstract isBundled(Landroid/content/Context;)Z
.end method

.method public abstract isInstalled(Landroid/content/Context;)Z
.end method

.method public abstract modelDir(Landroid/content/Context;)Ljava/io/File;
.end method
