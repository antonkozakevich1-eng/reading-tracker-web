.class public final Lcom/alicegpt/textfollower/Settings;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/Settings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 =2\u00020\u0001:\u0001=B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u00109\u001a\u00020\t2\u0006\u0010:\u001a\u000200J\u0016\u0010;\u001a\u00020<2\u0006\u0010:\u001a\u0002002\u0006\u00109\u001a\u00020\tR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\u00158F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR$\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0008\u001a\u00020\u000f8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u0012\"\u0004\u0008\u001d\u0010\u0014R$\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001f\u0010\u000c\"\u0004\u0008 \u0010\u000eR$\u0010\"\u001a\u00020!2\u0006\u0010\u0008\u001a\u00020!8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R$\u0010\'\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\u00158F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008(\u0010\u0018\"\u0004\u0008)\u0010\u001aR$\u0010*\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\u00158F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008+\u0010\u0018\"\u0004\u0008,\u0010\u001aR$\u0010-\u001a\u00020\u00152\u0006\u0010\u0008\u001a\u00020\u00158F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008.\u0010\u0018\"\u0004\u0008/\u0010\u001aR$\u00101\u001a\u0002002\u0006\u0010\u0008\u001a\u0002008F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R$\u00106\u001a\u0002002\u0006\u0010\u0008\u001a\u0002008F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u00087\u00103\"\u0004\u00088\u00105\u00a8\u0006>"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/Settings;",
        "",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "prefs",
        "Landroid/content/SharedPreferences;",
        "v",
        "",
        "theme",
        "getTheme",
        "()I",
        "setTheme",
        "(I)V",
        "",
        "fontSp",
        "getFontSp",
        "()F",
        "setFontSp",
        "(F)V",
        "",
        "serif",
        "getSerif",
        "()Z",
        "setSerif",
        "(Z)V",
        "lineSpacing",
        "getLineSpacing",
        "setLineSpacing",
        "sensitivity",
        "getSensitivity",
        "setSensitivity",
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
        "engine",
        "getEngine",
        "()Lcom/alicegpt/textfollower/speech/EngineKind;",
        "setEngine",
        "(Lcom/alicegpt/textfollower/speech/EngineKind;)V",
        "useContext",
        "getUseContext",
        "setUseContext",
        "autoScroll",
        "getAutoScroll",
        "setAutoScroll",
        "seenIntro",
        "getSeenIntro",
        "setSeenIntro",
        "",
        "currentDoc",
        "getCurrentDoc",
        "()Ljava/lang/String;",
        "setCurrentDoc",
        "(Ljava/lang/String;)V",
        "customName",
        "getCustomName",
        "setCustomName",
        "position",
        "docKey",
        "savePosition",
        "",
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
.field public static final Companion:Lcom/alicegpt/textfollower/Settings$Companion;

.field public static final DOC_ASSET:Ljava/lang/String; = "asset"

.field public static final MAX_FONT:F = 48.0f

.field public static final MIN_FONT:F = 14.0f

.field public static final THEME_BLACK:I = 0x4

.field public static final THEME_DARK:I = 0x3

.field public static final THEME_LIGHT:I = 0x1

.field public static final THEME_SEPIA:I = 0x2

.field public static final THEME_SYSTEM:I


# instance fields
.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alicegpt/textfollower/Settings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/Settings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/Settings;->Companion:Lcom/alicegpt/textfollower/Settings$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    .line 8
    return-void
.end method


# virtual methods
.method public final getAutoScroll()Z
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "autoScroll"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getCurrentDoc()Ljava/lang/String;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "currentDoc"

    const-string v2, "asset"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public final getCustomName()Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "customName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method

.method public final getEngine()Lcom/alicegpt/textfollower/speech/EngineKind;
    .locals 4

    .line 37
    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->Companion:Lcom/alicegpt/textfollower/speech/EngineKind$Companion;

    iget-object v1, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/alicegpt/textfollower/speech/EngineKind;->NEURAL:Lcom/alicegpt/textfollower/speech/EngineKind;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/speech/EngineKind;->getId()I

    move-result v2

    const-string v3, "engine"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alicegpt/textfollower/speech/EngineKind$Companion;->of(I)Lcom/alicegpt/textfollower/speech/EngineKind;

    move-result-object v0

    return-object v0
.end method

.method public final getFontSp()F
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "fontSp"

    const/high16 v2, 0x41b00000    # 22.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getLineSpacing()F
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "lineSpacing"

    const v2, 0x3faccccd    # 1.35f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public final getSeenIntro()Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "seenIntro"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getSensitivity()I
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "sensitivity"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getSerif()Z
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "serif"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final getTheme()I
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "theme"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getUseContext()Z
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "useContext"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final position(Ljava/lang/String;)I
    .locals 3
    .param p1, "docKey"    # Ljava/lang/String;

    const-string v0, "docKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final savePosition(Ljava/lang/String;I)V
    .locals 3
    .param p1, "docKey"    # Ljava/lang/String;
    .param p2, "position"    # I

    const-string v0, "docKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setAutoScroll(Z)V
    .locals 2
    .param p1, "v"    # Z

    .line 48
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "autoScroll"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setCurrentDoc(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "currentDoc"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setCustomName(Ljava/lang/String;)V
    .locals 2
    .param p1, "v"    # Ljava/lang/String;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "customName"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setEngine(Lcom/alicegpt/textfollower/speech/EngineKind;)V
    .locals 3
    .param p1, "v"    # Lcom/alicegpt/textfollower/speech/EngineKind;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "engine"

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/speech/EngineKind;->getId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setFontSp(F)V
    .locals 3
    .param p1, "v"    # F

    .line 18
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    const/high16 v2, 0x42400000    # 48.0f

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    const-string v2, "fontSp"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLineSpacing(F)V
    .locals 3
    .param p1, "v"    # F

    .line 28
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const v1, 0x3f8ccccd    # 1.1f

    const v2, 0x3ff33333    # 1.9f

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    const-string v2, "lineSpacing"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSeenIntro(Z)V
    .locals 2
    .param p1, "v"    # Z

    .line 52
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "seenIntro"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSensitivity(I)V
    .locals 3
    .param p1, "v"    # I

    .line 33
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    const-string v2, "sensitivity"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSerif(Z)V
    .locals 2
    .param p1, "v"    # Z

    .line 23
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "serif"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setTheme(I)V
    .locals 2
    .param p1, "v"    # I

    .line 14
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setUseContext(Z)V
    .locals 2
    .param p1, "v"    # Z

    .line 43
    iget-object v0, p0, Lcom/alicegpt/textfollower/Settings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "useContext"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
