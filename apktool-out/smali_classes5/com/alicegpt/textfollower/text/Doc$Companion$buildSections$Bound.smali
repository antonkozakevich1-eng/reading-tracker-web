.class public final Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;
.super Ljava/lang/Object;
.source "Doc.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alicegpt/textfollower/text/Doc$Companion;->buildSections(Ljava/lang/String;Ljava/util/List;Ljava/util/List;[II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bound"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound",
        "",
        "title",
        "",
        "start",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "getTitle",
        "()Ljava/lang/String;",
        "getStart",
        "()I",
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
.field private final start:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "start"    # I

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;->title:Ljava/lang/String;

    iput p2, p0, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;->start:I

    return-void
.end method


# virtual methods
.method public final getStart()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;->start:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alicegpt/textfollower/text/Doc$Companion$buildSections$Bound;->title:Ljava/lang/String;

    return-object v0
.end method
