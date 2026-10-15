.class public final synthetic Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    .line 0
    iget-object v0, p0, Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda1;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/alicegpt/textfollower/ui/Dialogs$$ExternalSyntheticLambda1;->f$2:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/alicegpt/textfollower/ui/Dialogs;->$r8$lambda$LUkC9e45F8stGTs1IhVkiQT4fI4(Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
