.class final Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;
.super Ljava/lang/Object;
.source "TextTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/tracking/TextTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Beam"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010\u0013\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0011J\u000e\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000bR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;",
        "",
        "pos",
        "",
        "on",
        "",
        "off",
        "hist",
        "<init>",
        "([I[D[D[I)V",
        "getPos",
        "()[I",
        "getOn",
        "()[D",
        "getOff",
        "getHist",
        "size",
        "",
        "getSize",
        "()I",
        "indexOf",
        "p",
        "mass",
        "",
        "i",
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
.field private final hist:[I

.field private final off:[D

.field private final on:[D

.field private final pos:[I


# direct methods
.method public constructor <init>([I[D[D[I)V
    .locals 1
    .param p1, "pos"    # [I
    .param p2, "on"    # [D
    .param p3, "off"    # [D
    .param p4, "hist"    # [I

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "on"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "off"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hist"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->pos:[I

    .line 228
    iput-object p2, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->on:[D

    .line 229
    iput-object p3, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->off:[D

    .line 231
    iput-object p4, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->hist:[I

    .line 226
    return-void
.end method


# virtual methods
.method public final getHist()[I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->hist:[I

    return-object v0
.end method

.method public final getOff()[D
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->off:[D

    return-object v0
.end method

.method public final getOn()[D
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->on:[D

    return-object v0
.end method

.method public final getPos()[I
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->pos:[I

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->pos:[I

    array-length v0, v0

    return v0
.end method

.method public final indexOf(I)I
    .locals 4
    .param p1, "p"    # I

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "lo":I
    iget-object v1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->pos:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 238
    .local v1, "hi":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 239
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 240
    .local v2, "mid":I
    nop

    .line 241
    iget-object v3, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->pos:[I

    aget v3, v3, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 242
    :cond_0
    iget-object v3, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->pos:[I

    aget v3, v3, v2

    if-le v3, p1, :cond_1

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 243
    :cond_1
    return v2

    .line 246
    .end local v2    # "mid":I
    :cond_2
    const/4 v2, -0x1

    return v2
.end method

.method public final mass(I)D
    .locals 5
    .param p1, "i"    # I

    .line 249
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->on:[D

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Beam;->off:[D

    aget-wide v3, v0, p1

    add-double/2addr v1, v3

    return-wide v1
.end method
