.class public final Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;
.super Ljava/lang/Object;
.source "SectionText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alicegpt/textfollower/ui/SectionText;->build(Lcom/alicegpt/textfollower/text/Doc;ILcom/alicegpt/textfollower/ui/GutterStyle;I)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Marker"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "com/alicegpt/textfollower/ui/SectionText$build$Marker",
        "",
        "from",
        "",
        "to",
        "label",
        "",
        "<init>",
        "(IILjava/lang/String;)V",
        "getFrom",
        "()I",
        "getTo",
        "getLabel",
        "()Ljava/lang/String;",
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
.field private final from:I

.field private final label:Ljava/lang/String;

.field private final to:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "label"    # Ljava/lang/String;

    const-string v0, "label"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->from:I

    iput p2, p0, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->to:I

    iput-object p3, p0, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->label:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFrom()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->from:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/alicegpt/textfollower/ui/SectionText$build$Marker;->to:I

    return v0
.end method
