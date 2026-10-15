.class public final Lcom/alicegpt/textfollower/speech/ModelStore$Companion;
.super Ljava/lang/Object;
.source "ModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/speech/ModelStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/speech/ModelStore$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/ModelStore$Companion;",
        "",
        "<init>",
        "()V",
        "of",
        "Lcom/alicegpt/textfollower/speech/ModelStore;",
        "kind",
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
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
.field static final synthetic $$INSTANCE:Lcom/alicegpt/textfollower/speech/ModelStore$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alicegpt/textfollower/speech/ModelStore$Companion;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/speech/ModelStore$Companion;-><init>()V

    sput-object v0, Lcom/alicegpt/textfollower/speech/ModelStore$Companion;->$$INSTANCE:Lcom/alicegpt/textfollower/speech/ModelStore$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final of(Lcom/alicegpt/textfollower/speech/EngineKind;)Lcom/alicegpt/textfollower/speech/ModelStore;
    .locals 2
    .param p1, "kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;

    const-string v0, "kind"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/alicegpt/textfollower/speech/ModelStore$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/speech/EngineKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 26
    :pswitch_0
    sget-object v0, Lcom/alicegpt/textfollower/speech/ModelInstaller;->INSTANCE:Lcom/alicegpt/textfollower/speech/ModelInstaller;

    check-cast v0, Lcom/alicegpt/textfollower/speech/ModelStore;

    goto :goto_0

    .line 25
    :pswitch_1
    sget-object v0, Lcom/alicegpt/textfollower/speech/NeuralModelStore;->INSTANCE:Lcom/alicegpt/textfollower/speech/NeuralModelStore;

    check-cast v0, Lcom/alicegpt/textfollower/speech/ModelStore;

    .line 27
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
