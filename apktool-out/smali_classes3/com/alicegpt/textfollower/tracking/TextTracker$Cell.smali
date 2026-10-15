.class final Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;
.super Ljava/lang/Object;
.source "TextTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/tracking/TextTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cell"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000f\u0008\u0002\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;",
        "",
        "on",
        "",
        "off",
        "bestOn",
        "hist",
        "",
        "<init>",
        "(DDDI)V",
        "getOn",
        "()D",
        "setOn",
        "(D)V",
        "getOff",
        "setOff",
        "getBestOn",
        "setBestOn",
        "getHist",
        "()I",
        "setHist",
        "(I)V",
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
.field private bestOn:D

.field private hist:I

.field private off:D

.field private on:D


# direct methods
.method public constructor <init>(DDDI)V
    .locals 0
    .param p1, "on"    # D
    .param p3, "off"    # D
    .param p5, "bestOn"    # D
    .param p7, "hist"    # I

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->on:D

    iput-wide p3, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->off:D

    iput-wide p5, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->bestOn:D

    iput p7, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->hist:I

    return-void
.end method


# virtual methods
.method public final getBestOn()D
    .locals 2

    .line 252
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->bestOn:D

    return-wide v0
.end method

.method public final getHist()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->hist:I

    return v0
.end method

.method public final getOff()D
    .locals 2

    .line 252
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->off:D

    return-wide v0
.end method

.method public final getOn()D
    .locals 2

    .line 252
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->on:D

    return-wide v0
.end method

.method public final setBestOn(D)V
    .locals 0
    .param p1, "<set-?>"    # D

    .line 252
    iput-wide p1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->bestOn:D

    return-void
.end method

.method public final setHist(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 252
    iput p1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->hist:I

    return-void
.end method

.method public final setOff(D)V
    .locals 0
    .param p1, "<set-?>"    # D

    .line 252
    iput-wide p1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->off:D

    return-void
.end method

.method public final setOn(D)V
    .locals 0
    .param p1, "<set-?>"    # D

    .line 252
    iput-wide p1, p0, Lcom/alicegpt/textfollower/tracking/TextTracker$Cell;->on:D

    return-void
.end method
