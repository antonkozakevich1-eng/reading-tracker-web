.class public final Lcom/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1;
.super Landroid/widget/ArrayAdapter;
.source "Dialogs.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alicegpt/textfollower/ui/Dialogs;->showSearch(Landroid/app/Activity;Lcom/alicegpt/textfollower/text/Doc;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/alicegpt/textfollower/text/TextSearch$Hit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Dialogs.kt\ncom/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,324:1\n1#2:325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1",
        "Landroid/widget/ArrayAdapter;",
        "Lcom/alicegpt/textfollower/text/TextSearch$Hit;",
        "getView",
        "Landroid/view/View;",
        "position",
        "",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
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
.field final synthetic $a:Landroid/app/Activity;

.field final synthetic $main:I

.field final synthetic $subtle:I


# direct methods
.method constructor <init>(Landroid/app/Activity;II)V
    .locals 2
    .param p1, "$a"    # Landroid/app/Activity;
    .param p2, "$main"    # I
    .param p3, "$subtle"    # I

    iput-object p1, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1;->$a:Landroid/app/Activity;

    iput p2, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1;->$main:I

    iput p3, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1;->$subtle:I

    .line 243
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0, p1}, Lcom/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/alicegpt/textfollower/text/TextSearch$Hit;

    .line 246
    .local v0, "h":Lcom/alicegpt/textfollower/text/TextSearch$Hit;
    instance-of v1, p2, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1;->$a:Landroid/app/Activity;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1;->$a:Landroid/app/Activity;

    iget v3, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1;->$main:I

    iget v4, p0, Lcom/alicegpt/textfollower/ui/Dialogs$showSearch$adapter$1;->$subtle:I

    move-object v5, v1

    .local v5, "$this$getView_u24lambda_u242":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    .line 247
    .local v6, "$i$a$-apply-Dialogs$showSearch$adapter$1$getView$row$1":I
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 248
    sget-object v7, Lcom/alicegpt/textfollower/ui/Dialogs;->INSTANCE:Lcom/alicegpt/textfollower/ui/Dialogs;

    const/16 v8, 0x8

    invoke-static {v7, v2, v8}, Lcom/alicegpt/textfollower/ui/Dialogs;->access$dp(Lcom/alicegpt/textfollower/ui/Dialogs;Landroid/app/Activity;I)I

    move-result v7

    sget-object v9, Lcom/alicegpt/textfollower/ui/Dialogs;->INSTANCE:Lcom/alicegpt/textfollower/ui/Dialogs;

    invoke-static {v9, v2, v8}, Lcom/alicegpt/textfollower/ui/Dialogs;->access$dp(Lcom/alicegpt/textfollower/ui/Dialogs;Landroid/app/Activity;I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v7, v9, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 249
    new-instance v7, Landroid/widget/TextView;

    check-cast v2, Landroid/content/Context;

    invoke-direct {v7, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 325
    move-object v8, v7

    .local v8, "$this$getView_u24lambda_u242_u24lambda_u240":Landroid/widget/TextView;
    const/4 v9, 0x0

    .line 249
    .local v9, "$i$a$-apply-Dialogs$showSearch$adapter$1$getView$row$1$1":I
    sget v10, Lcom/alicegpt/textfollower/R$id;->search_snippet:I

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x3

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .end local v8    # "$this$getView_u24lambda_u242_u24lambda_u240":Landroid/widget/TextView;
    .end local v9    # "$i$a$-apply-Dialogs$showSearch$adapter$1$getView$row$1$1":I
    check-cast v7, Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 325
    move-object v2, v3

    .local v2, "$this$getView_u24lambda_u242_u24lambda_u241":Landroid/widget/TextView;
    const/4 v7, 0x0

    .line 250
    .local v7, "$i$a$-apply-Dialogs$showSearch$adapter$1$getView$row$1$2":I
    sget v8, Lcom/alicegpt/textfollower/R$id;->search_chapter:I

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setId(I)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .end local v2    # "$this$getView_u24lambda_u242_u24lambda_u241":Landroid/widget/TextView;
    .end local v7    # "$i$a$-apply-Dialogs$showSearch$adapter$1$getView$row$1$2":I
    check-cast v3, Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    nop

    .line 246
    .end local v5    # "$this$getView_u24lambda_u242":Landroid/widget/LinearLayout;
    .end local v6    # "$i$a$-apply-Dialogs$showSearch$adapter$1$getView$row$1":I
    nop

    .line 252
    .local v1, "row":Landroid/widget/LinearLayout;
    :cond_1
    sget v2, Lcom/alicegpt/textfollower/R$id;->search_snippet:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/TextSearch$Hit;->getSnippet()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    sget v2, Lcom/alicegpt/textfollower/R$id;->search_chapter:I

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/TextSearch$Hit;->getChapter()Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    return-object v2
.end method
