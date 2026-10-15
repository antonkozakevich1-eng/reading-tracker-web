.class final Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;
.super Ljava/lang/Object;
.source "StreamingEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alicegpt/textfollower/speech/StreamingEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Session"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u0007\"\u0004\u0008\u000f\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;",
        "",
        "<init>",
        "()V",
        "active",
        "",
        "getActive",
        "()Z",
        "setActive",
        "(Z)V",
        "finished",
        "getFinished",
        "setFinished",
        "unloadRequested",
        "getUnloadRequested",
        "setUnloadRequested",
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
.field private volatile active:Z

.field private finished:Z

.field private unloadRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->active:Z

    .line 37
    return-void
.end method


# virtual methods
.method public final getActive()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->active:Z

    return v0
.end method

.method public final getFinished()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->finished:Z

    return v0
.end method

.method public final getUnloadRequested()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->unloadRequested:Z

    return v0
.end method

.method public final setActive(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->active:Z

    .line 39
    return-void
.end method

.method public final setFinished(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 42
    iput-boolean p1, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->finished:Z

    return-void
.end method

.method public final setUnloadRequested(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/alicegpt/textfollower/speech/StreamingEngine$Session;->unloadRequested:Z

    return-void
.end method
