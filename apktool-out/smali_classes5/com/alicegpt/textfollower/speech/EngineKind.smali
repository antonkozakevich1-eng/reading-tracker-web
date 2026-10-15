.class public final enum Lcom/alicegpt/textfollower/speech/EngineKind;
.super Ljava/lang/Enum;
.source "SpeechEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/speech/EngineKind$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
        "",
        "id",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getId",
        "()I",
        "NEURAL",
        "VOSK",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/alicegpt/textfollower/speech/EngineKind;

.field public static final Companion:Lcom/alicegpt/textfollower/speech/EngineKind$Companion;

.field public static final enum NEURAL:Lcom/alicegpt/textfollower/speech/EngineKind;

.field public static final enum VOSK:Lcom/alicegpt/textfollower/speech/EngineKind;


# instance fields
.field private final id:I


# direct methods
.method private static final synthetic $values()[Lcom/alicegpt/textfollower/speech/EngineKind;
    .locals 2

    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->NEURAL:Lcom/alicegpt/textfollower/speech/EngineKind;

    sget-object v1, Lcom/alicegpt/textfollower/speech/EngineKind;->VOSK:Lcom/alicegpt/textfollower/speech/EngineKind;

    filled-new-array {v0, v1}, [Lcom/alicegpt/textfollower/speech/EngineKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/alicegpt/textfollower/speech/EngineKind;

    const-string v1, "NEURAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/alicegpt/textfollower/speech/EngineKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->NEURAL:Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 11
    new-instance v0, Lcom/alicegpt/textfollower/speech/EngineKind;

    const-string v1, "VOSK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/alicegpt/textfollower/speech/EngineKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->VOSK:Lcom/alicegpt/textfollower/speech/EngineKind;

    invoke-static {}, Lcom/alicegpt/textfollower/speech/EngineKind;->$values()[Lcom/alicegpt/textfollower/speech/EngineKind;

    move-result-object v0

    sput-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->$VALUES:[Lcom/alicegpt/textfollower/speech/EngineKind;

    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->$VALUES:[Lcom/alicegpt/textfollower/speech/EngineKind;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/alicegpt/textfollower/speech/EngineKind$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/EngineKind$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->Companion:Lcom/alicegpt/textfollower/speech/EngineKind$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alicegpt/textfollower/speech/EngineKind;->id:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 16
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alicegpt/textfollower/speech/EngineKind;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Lcom/alicegpt/textfollower/speech/EngineKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 16
    check-cast v0, Lcom/alicegpt/textfollower/speech/EngineKind;

    return-object v0
.end method

.method public static values()[Lcom/alicegpt/textfollower/speech/EngineKind;
    .locals 1

    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->$VALUES:[Lcom/alicegpt/textfollower/speech/EngineKind;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 16
    check-cast v0, [Lcom/alicegpt/textfollower/speech/EngineKind;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/alicegpt/textfollower/speech/EngineKind;->id:I

    return v0
.end method
