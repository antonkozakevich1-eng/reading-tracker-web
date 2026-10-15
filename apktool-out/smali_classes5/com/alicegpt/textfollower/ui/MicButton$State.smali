.class public final enum Lcom/alicegpt/textfollower/ui/MicButton$State;
.super Ljava/lang/Enum;
.source "MicButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/ui/MicButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alicegpt/textfollower/ui/MicButton$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/ui/MicButton$State;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "IDLE",
        "LISTENING",
        "SEARCHING",
        "BUSY",
        "ERROR",
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

.field private static final synthetic $VALUES:[Lcom/alicegpt/textfollower/ui/MicButton$State;

.field public static final enum BUSY:Lcom/alicegpt/textfollower/ui/MicButton$State;

.field public static final enum ERROR:Lcom/alicegpt/textfollower/ui/MicButton$State;

.field public static final enum IDLE:Lcom/alicegpt/textfollower/ui/MicButton$State;

.field public static final enum LISTENING:Lcom/alicegpt/textfollower/ui/MicButton$State;

.field public static final enum SEARCHING:Lcom/alicegpt/textfollower/ui/MicButton$State;


# direct methods
.method private static final synthetic $values()[Lcom/alicegpt/textfollower/ui/MicButton$State;
    .locals 5

    sget-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->IDLE:Lcom/alicegpt/textfollower/ui/MicButton$State;

    sget-object v1, Lcom/alicegpt/textfollower/ui/MicButton$State;->LISTENING:Lcom/alicegpt/textfollower/ui/MicButton$State;

    sget-object v2, Lcom/alicegpt/textfollower/ui/MicButton$State;->SEARCHING:Lcom/alicegpt/textfollower/ui/MicButton$State;

    sget-object v3, Lcom/alicegpt/textfollower/ui/MicButton$State;->BUSY:Lcom/alicegpt/textfollower/ui/MicButton$State;

    sget-object v4, Lcom/alicegpt/textfollower/ui/MicButton$State;->ERROR:Lcom/alicegpt/textfollower/ui/MicButton$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/alicegpt/textfollower/ui/MicButton$State;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Lcom/alicegpt/textfollower/ui/MicButton$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alicegpt/textfollower/ui/MicButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->IDLE:Lcom/alicegpt/textfollower/ui/MicButton$State;

    new-instance v0, Lcom/alicegpt/textfollower/ui/MicButton$State;

    const-string v1, "LISTENING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alicegpt/textfollower/ui/MicButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->LISTENING:Lcom/alicegpt/textfollower/ui/MicButton$State;

    new-instance v0, Lcom/alicegpt/textfollower/ui/MicButton$State;

    const-string v1, "SEARCHING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/alicegpt/textfollower/ui/MicButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->SEARCHING:Lcom/alicegpt/textfollower/ui/MicButton$State;

    new-instance v0, Lcom/alicegpt/textfollower/ui/MicButton$State;

    const-string v1, "BUSY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/alicegpt/textfollower/ui/MicButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->BUSY:Lcom/alicegpt/textfollower/ui/MicButton$State;

    new-instance v0, Lcom/alicegpt/textfollower/ui/MicButton$State;

    const-string v1, "ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/alicegpt/textfollower/ui/MicButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->ERROR:Lcom/alicegpt/textfollower/ui/MicButton$State;

    invoke-static {}, Lcom/alicegpt/textfollower/ui/MicButton$State;->$values()[Lcom/alicegpt/textfollower/ui/MicButton$State;

    move-result-object v0

    sput-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->$VALUES:[Lcom/alicegpt/textfollower/ui/MicButton$State;

    sget-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->$VALUES:[Lcom/alicegpt/textfollower/ui/MicButton$State;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/alicegpt/textfollower/ui/MicButton$State;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->$ENTRIES:Lkotlin/enums/EnumEntries;

    .line 15
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alicegpt/textfollower/ui/MicButton$State;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    const-class v0, Lcom/alicegpt/textfollower/ui/MicButton$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 15
    check-cast v0, Lcom/alicegpt/textfollower/ui/MicButton$State;

    return-object v0
.end method

.method public static values()[Lcom/alicegpt/textfollower/ui/MicButton$State;
    .locals 1

    sget-object v0, Lcom/alicegpt/textfollower/ui/MicButton$State;->$VALUES:[Lcom/alicegpt/textfollower/ui/MicButton$State;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 15
    check-cast v0, [Lcom/alicegpt/textfollower/ui/MicButton$State;

    return-object v0
.end method
