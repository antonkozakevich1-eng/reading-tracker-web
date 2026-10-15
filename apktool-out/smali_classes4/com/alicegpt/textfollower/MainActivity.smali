.class public final Lcom/alicegpt/textfollower/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.kt"

# interfaces
.implements Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/MainActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMainActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainActivity.kt\ncom/alicegpt/textfollower/MainActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,834:1\n1#2:835\n774#3:836\n865#3,2:837\n388#3,7:839\n1557#3:846\n1628#3,3:847\n37#4,2:850\n*S KotlinDebug\n*F\n+ 1 MainActivity.kt\ncom/alicegpt/textfollower/MainActivity\n*L\n435#1:836\n435#1:837,2\n438#1:839,7\n439#1:846\n439#1:847,3\n439#1:850,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d9\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0019*\u00015\u0018\u0000 \u0093\u00012\u00020\u00012\u00020\u0002:\u0002\u0093\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u00107\u001a\u0002082\u0008\u00109\u001a\u0004\u0018\u00010:H\u0014J\u0008\u0010;\u001a\u000208H\u0002J\u0010\u0010<\u001a\u0002082\u0006\u0010=\u001a\u00020>H\u0016J\u0008\u0010?\u001a\u000208H\u0014J\u0008\u0010@\u001a\u000208H\u0014J\u0008\u0010A\u001a\u000208H\u0014J\u0008\u0010B\u001a\u000208H\u0017J\u0008\u0010C\u001a\u00020\u001fH\u0002J\u0010\u0010D\u001a\u00020\u001f2\u0006\u0010E\u001a\u00020\u001fH\u0002J\u0008\u0010F\u001a\u00020GH\u0002J\u0010\u0010H\u001a\u00020!2\u0006\u0010I\u001a\u00020#H\u0002J\u0010\u0010J\u001a\u00020K2\u0006\u0010I\u001a\u00020#H\u0002J\u0018\u0010L\u001a\u00020\u001b2\u0006\u0010M\u001a\u00020\u00192\u0006\u0010N\u001a\u00020\u001fH\u0002J\u0008\u0010O\u001a\u000208H\u0002J\u0018\u0010P\u001a\u0002082\u0006\u0010Q\u001a\u00020R2\u0006\u0010I\u001a\u00020#H\u0002J\u0010\u0010S\u001a\u00020\u001d2\u0006\u0010T\u001a\u00020UH\u0002J\u0010\u0010V\u001a\u0002082\u0006\u0010I\u001a\u00020#H\u0002J\u0010\u0010W\u001a\u0002082\u0006\u0010X\u001a\u00020\u001dH\u0002J\u0018\u0010Y\u001a\u0002082\u0006\u0010X\u001a\u00020\u001d2\u0006\u0010M\u001a\u00020\u0019H\u0002J\u0010\u0010Z\u001a\u0002082\u0006\u0010[\u001a\u00020\u001fH\u0002J\u001a\u0010\\\u001a\u0002082\u0006\u0010]\u001a\u00020%2\u0008\u0008\u0002\u0010^\u001a\u00020%H\u0002J\u0010\u0010_\u001a\u0002082\u0006\u0010`\u001a\u00020\'H\u0002J\u0008\u0010a\u001a\u000208H\u0002J\u0010\u0010b\u001a\u0002082\u0006\u0010c\u001a\u00020\u001fH\u0002J\u0010\u0010d\u001a\u0002082\u0006\u0010e\u001a\u00020\u001fH\u0002J\u0008\u0010f\u001a\u000208H\u0002J\u0008\u0010g\u001a\u000208H\u0002J\u0008\u0010h\u001a\u000208H\u0002J\"\u0010i\u001a\u0002082\u0006\u0010j\u001a\u00020\u001f2\u0006\u0010k\u001a\u00020\u001f2\u0008\u0010l\u001a\u0004\u0018\u00010mH\u0015J\u0010\u0010n\u001a\u0002082\u0006\u0010o\u001a\u00020pH\u0002J\u0010\u0010q\u001a\u00020r2\u0006\u0010o\u001a\u00020pH\u0002J\u0010\u0010s\u001a\u00020\u001d2\u0006\u0010o\u001a\u00020pH\u0002J\u0008\u0010t\u001a\u000208H\u0002J\u0008\u0010u\u001a\u000208H\u0002J\u0008\u0010v\u001a\u000208H\u0002J-\u0010w\u001a\u0002082\u0006\u0010j\u001a\u00020\u001f2\u000e\u0010x\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u001d0y2\u0006\u0010z\u001a\u00020{H\u0016\u00a2\u0006\u0002\u0010|J\u0010\u0010}\u001a\u0002082\u0006\u0010~\u001a\u00020\u001dH\u0016J\u0010\u0010\u007f\u001a\u0002082\u0006\u0010~\u001a\u00020\u001dH\u0016J\u001a\u0010\u0080\u0001\u001a\u0002082\u0006\u0010~\u001a\u00020\u001d2\u0007\u0010\u0081\u0001\u001a\u00020%H\u0002J\u0012\u0010\u0082\u0001\u001a\u0002082\u0007\u0010\u0083\u0001\u001a\u00020%H\u0002J\u0011\u0010\u0084\u0001\u001a\u00020\u001d2\u0006\u0010~\u001a\u00020\u001dH\u0002J\u0012\u0010\u0085\u0001\u001a\u0002082\u0007\u0010\u0086\u0001\u001a\u00020%H\u0002J\u0012\u0010\u0087\u0001\u001a\u0002082\u0007\u0010\u0088\u0001\u001a\u00020\'H\u0016J\u0012\u0010\u0089\u0001\u001a\u0002082\u0007\u0010\u008a\u0001\u001a\u00020%H\u0016J\u0012\u0010\u008b\u0001\u001a\u0002082\u0007\u0010\u008c\u0001\u001a\u00020\u001dH\u0016J\u0012\u0010\u008d\u0001\u001a\u0002082\u0007\u0010\u008c\u0001\u001a\u00020\u001dH\u0016J\t\u0010\u008e\u0001\u001a\u000208H\u0002J\t\u0010\u008f\u0001\u001a\u000208H\u0002J\u0012\u0010\u0090\u0001\u001a\u00020\u001d2\u0007\u0010\u0091\u0001\u001a\u00020.H\u0002J\u0012\u0010\u0092\u0001\u001a\u0002082\u0007\u0010\u0086\u0001\u001a\u00020%H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00100\u001a\u0004\u0018\u00010\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00101\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00102\u001a\u00020\u001fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00103\u001a\u00020%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u00104\u001a\u000205X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u00106\u00a8\u0006\u0094\u0001"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/MainActivity;",
        "Landroid/app/Activity;",
        "Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
        "<init>",
        "()V",
        "settings",
        "Lcom/alicegpt/textfollower/Settings;",
        "stats",
        "Lcom/alicegpt/textfollower/SessionStats;",
        "ui",
        "Landroid/os/Handler;",
        "titleText",
        "Landroid/widget/TextView;",
        "chapterText",
        "reader",
        "Lcom/alicegpt/textfollower/ui/ReaderView;",
        "banner",
        "statusText",
        "statsText",
        "heardText",
        "bookProgress",
        "Landroid/widget/ProgressBar;",
        "mic",
        "Lcom/alicegpt/textfollower/ui/MicButton;",
        "doc",
        "Lcom/alicegpt/textfollower/text/Doc;",
        "tracker",
        "Lcom/alicegpt/textfollower/tracking/TextTracker;",
        "docKey",
        "",
        "currentSection",
        "",
        "engine",
        "Lcom/alicegpt/textfollower/speech/SpeechEngine;",
        "engineKind",
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
        "modelReady",
        "",
        "modelProgress",
        "",
        "modelDownloading",
        "wantListening",
        "resumeAfterPause",
        "starting",
        "lastError",
        "lastSaveMs",
        "",
        "docTitle",
        "lastHeard",
        "searchSince",
        "contextCenter",
        "contextActive",
        "statsTick",
        "com/alicegpt/textfollower/MainActivity$statsTick$1",
        "Lcom/alicegpt/textfollower/MainActivity$statsTick$1;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "bindViews",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onResume",
        "onPause",
        "onDestroy",
        "onBackPressed",
        "themeRes",
        "attrColor",
        "attr",
        "readerColors",
        "Lcom/alicegpt/textfollower/ui/ReaderView$Colors;",
        "createEngine",
        "kind",
        "trackerConfig",
        "Lcom/alicegpt/textfollower/tracking/TrackerConfig;",
        "newTracker",
        "d",
        "at",
        "prepareModel",
        "installWithRetries",
        "store",
        "Lcom/alicegpt/textfollower/speech/ModelStore;",
        "friendlyError",
        "e",
        "",
        "changeEngine",
        "loadDoc",
        "key",
        "onDocLoaded",
        "showSection",
        "index",
        "renderCursor",
        "animate",
        "forceScroll",
        "changeFont",
        "delta",
        "applyTypography",
        "seekToOffset",
        "offset",
        "seekTo",
        "word",
        "showToc",
        "showSearch",
        "showFileMenu",
        "onActivityResult",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "openFile",
        "uri",
        "Landroid/net/Uri;",
        "readLimited",
        "",
        "displayName",
        "showSettings",
        "toggleListening",
        "startListening",
        "onRequestPermissionsResult",
        "permissions",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onPartial",
        "text",
        "onFinal",
        "handleSpeech",
        "isFinal",
        "onSearchModeChanged",
        "searching",
        "heardTail",
        "applyContext",
        "force",
        "onLevel",
        "level",
        "onListeningChanged",
        "listening",
        "onError",
        "message",
        "onEngineFailure",
        "refreshStatus",
        "updateStats",
        "formatTime",
        "ms",
        "savePosition",
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
.field private static final ASSET_TEXT:Ljava/lang/String; = "odyssey_zhukovsky.txt"

.field private static final CUSTOM_FILE:Ljava/lang/String; = "custom.txt"

.field public static final Companion:Lcom/alicegpt/textfollower/MainActivity$Companion;

.field private static final HEARD_CHARS:I = 0x50

.field private static final MAX_FILE_BYTES:I = 0x2800000

.field private static final MODEL_ATTEMPTS:I = 0x3

.field private static final REQ_AUDIO:I = 0x1

.field private static final REQ_OPEN_FILE:I = 0x2

.field private static final SEARCH_SHOWN_AFTER_MS:J = 0x5dcL

.field private static engineFactory:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            "-",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
            "+",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static modelRetryDelayMs:J

.field private static storeFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            "+",
            "Lcom/alicegpt/textfollower/speech/ModelStore;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private banner:Landroid/widget/TextView;

.field private bookProgress:Landroid/widget/ProgressBar;

.field private chapterText:Landroid/widget/TextView;

.field private contextActive:Z

.field private contextCenter:I

.field private currentSection:I

.field private doc:Lcom/alicegpt/textfollower/text/Doc;

.field private docKey:Ljava/lang/String;

.field private docTitle:Ljava/lang/String;

.field private engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

.field private engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

.field private heardText:Landroid/widget/TextView;

.field private lastError:Ljava/lang/String;

.field private lastHeard:Ljava/lang/String;

.field private lastSaveMs:J

.field private mic:Lcom/alicegpt/textfollower/ui/MicButton;

.field private modelDownloading:Z

.field private modelProgress:F

.field private modelReady:Z

.field private reader:Lcom/alicegpt/textfollower/ui/ReaderView;

.field private resumeAfterPause:Z

.field private searchSince:J

.field private settings:Lcom/alicegpt/textfollower/Settings;

.field private starting:Z

.field private final stats:Lcom/alicegpt/textfollower/SessionStats;

.field private statsText:Landroid/widget/TextView;

.field private final statsTick:Lcom/alicegpt/textfollower/MainActivity$statsTick$1;

.field private statusText:Landroid/widget/TextView;

.field private titleText:Landroid/widget/TextView;

.field private tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

.field private final ui:Landroid/os/Handler;

.field private wantListening:Z


# direct methods
.method public static synthetic $r8$lambda$2NObfr8ckut7A-vPbtw0NeprGjg(Lcom/alicegpt/textfollower/MainActivity;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->showSearch$lambda$27(Lcom/alicegpt/textfollower/MainActivity;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2UfavxN51vahPRYXZXr5XilOaoQ(Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/MainActivity;->applyTypography$lambda$22(Lcom/alicegpt/textfollower/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4LKpZyufUByyQhQMK-VdLqvDjb0(Ljava/lang/String;Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->loadDoc$lambda$21$lambda$20(Ljava/lang/String;Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$636k1iG7x5F0mg8OJ2_kMmnE65k(Lcom/alicegpt/textfollower/MainActivity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/MainActivity;->onCreate$lambda$0(Lcom/alicegpt/textfollower/MainActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$68SKae4idXyQG9fgxfrqZ8kLxPg(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->bindViews$lambda$4(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7cwSnYQ1-CHsOqveVOlykiU1s7A(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->bindViews$lambda$7(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9-jJwKYWGl1rP6VwYTPIaZl4B3Q(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->bindViews$lambda$1(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ADkMMleka2AJoPs-45E0FM3wI9I(Ljava/lang/String;Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->loadDoc$lambda$21(Ljava/lang/String;Lcom/alicegpt/textfollower/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BYukKInXcGZXQnVoZLZMsJpcXVg(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->bindViews$lambda$5(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EG5Am9pPncY3AHOKK-OnZCUOdtw(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/EngineKind;F)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->installWithRetries$lambda$16(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/EngineKind;F)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$G38VkDSOtNS39DVSv8CpWIL9T3Y(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/String;Lcom/alicegpt/textfollower/text/Doc;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->loadDoc$lambda$21$lambda$19(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/String;Lcom/alicegpt/textfollower/text/Doc;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LnSOUlgKAhtbVQ5GmsonoK8pnro(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;)Lcom/alicegpt/textfollower/speech/SpeechEngine;
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->engineFactory$lambda$36(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;)Lcom/alicegpt/textfollower/speech/SpeechEngine;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QA_K-27Z1GVWDR-KqAYVBU_yJ4Y(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->prepareModel$lambda$14$lambda$13(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QAp-dh-OnaRLN3w69TetK4InC1g(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->bindViews$lambda$3(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RVulJ9q0G1TEbntk9aNH182LROY(Lcom/alicegpt/textfollower/tracking/TextTracker;)V
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/MainActivity;->newTracker$lambda$11(Lcom/alicegpt/textfollower/tracking/TextTracker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S49ZHpn6ijAXoNRv-_XX6pmyxvY(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->openFile$lambda$33$lambda$32(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XskCn0EGWazClEJIqfaJI5Dksjc(Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/MainActivity;->openFile$lambda$33$lambda$30(Lcom/alicegpt/textfollower/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YW6DLk6MIATDY0S-QEVDYu3-d40(Lcom/alicegpt/textfollower/speech/EngineKind;)Lcom/alicegpt/textfollower/speech/ModelStore;
    .locals 0

    invoke-static {p0}, Lcom/alicegpt/textfollower/MainActivity;->storeFactory$lambda$37(Lcom/alicegpt/textfollower/speech/EngineKind;)Lcom/alicegpt/textfollower/speech/ModelStore;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gLYz42tVj6nq8PUonXmlgiuQf2M(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->installWithRetries$lambda$16$lambda$15(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$gbmP77yNl4EsAVbou7h4H1a1xbI(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->bindViews$lambda$2(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ghcoaaEG-dD33iYmTTdwZeBmxaw(Lcom/alicegpt/textfollower/MainActivity;Ljava/util/List;Lcom/alicegpt/textfollower/text/Doc;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/alicegpt/textfollower/MainActivity;->showToc$lambda$26(Lcom/alicegpt/textfollower/MainActivity;Ljava/util/List;Lcom/alicegpt/textfollower/text/Doc;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kFIAWPoR0YtreOXY-G7qyk6V1t8(Lcom/alicegpt/textfollower/MainActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->openFile$lambda$33(Lcom/alicegpt/textfollower/MainActivity;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oYAz8eiJZJ8Ybtw9jkkN5CxnLvA(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/ModelStore;Lcom/alicegpt/textfollower/speech/EngineKind;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->prepareModel$lambda$14(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/ModelStore;Lcom/alicegpt/textfollower/speech/EngineKind;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pOgKFHmu8V4x9y_o_QLwKJNir-8(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->openFile$lambda$33$lambda$31(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ppF3Kunl-HBCRb1ouAOG7Ch6Co8(Lcom/alicegpt/textfollower/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->showFileMenu$lambda$29(Lcom/alicegpt/textfollower/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sRin_ftmeMNdMMPGcXP93yU2f7o(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->prepareModel$lambda$14$lambda$12(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wK3o1-YR4AsRyIKw-BXSRiFFg-M(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->bindViews$lambda$6(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xuKFvLofTNASFbEDo8lv_vSMduI(Lcom/alicegpt/textfollower/MainActivity;I)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->bindViews$lambda$9(Lcom/alicegpt/textfollower/MainActivity;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zSpPYKkxa_S6-EHbWvYjfG1QFlQ(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->bindViews$lambda$8(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alicegpt/textfollower/MainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/MainActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/MainActivity;->Companion:Lcom/alicegpt/textfollower/MainActivity$Companion;

    .line 808
    new-instance v0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/alicegpt/textfollower/MainActivity;->engineFactory:Lkotlin/jvm/functions/Function2;

    .line 814
    new-instance v0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/alicegpt/textfollower/MainActivity;->storeFactory:Lkotlin/jvm/functions/Function1;

    .line 818
    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/alicegpt/textfollower/MainActivity;->modelRetryDelayMs:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lcom/alicegpt/textfollower/SessionStats;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/alicegpt/textfollower/SessionStats;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    .line 64
    const-string v0, "asset"

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->docKey:Ljava/lang/String;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/alicegpt/textfollower/MainActivity;->currentSection:I

    .line 67
    sget-object v1, Lcom/alicegpt/textfollower/speech/EngineKind;->NEURAL:Lcom/alicegpt/textfollower/speech/EngineKind;

    iput-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 71
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/alicegpt/textfollower/MainActivity;->modelProgress:F

    .line 78
    const-string v1, ""

    iput-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->docTitle:Ljava/lang/String;

    .line 83
    iput v0, p0, Lcom/alicegpt/textfollower/MainActivity;->contextCenter:I

    .line 86
    new-instance v0, Lcom/alicegpt/textfollower/MainActivity$statsTick$1;

    invoke-direct {v0, p0}, Lcom/alicegpt/textfollower/MainActivity$statsTick$1;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->statsTick:Lcom/alicegpt/textfollower/MainActivity$statsTick$1;

    .line 44
    return-void
.end method

.method public static final synthetic access$applyContext(Lcom/alicegpt/textfollower/MainActivity;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "force"    # Z

    .line 44
    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->applyContext(Z)V

    return-void
.end method

.method public static final synthetic access$applyTypography(Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 0
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 44
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->applyTypography()V

    return-void
.end method

.method public static final synthetic access$changeEngine(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/EngineKind;)V
    .locals 0
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 44
    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->changeEngine(Lcom/alicegpt/textfollower/speech/EngineKind;)V

    return-void
.end method

.method public static final synthetic access$getEngine$p(Lcom/alicegpt/textfollower/MainActivity;)Lcom/alicegpt/textfollower/speech/SpeechEngine;
    .locals 1
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 44
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    return-object v0
.end method

.method public static final synthetic access$getEngineFactory$cp()Lkotlin/jvm/functions/Function2;
    .locals 1

    .line 44
    sget-object v0, Lcom/alicegpt/textfollower/MainActivity;->engineFactory:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic access$getModelRetryDelayMs$cp()J
    .locals 2

    .line 44
    sget-wide v0, Lcom/alicegpt/textfollower/MainActivity;->modelRetryDelayMs:J

    return-wide v0
.end method

.method public static final synthetic access$getReader$p(Lcom/alicegpt/textfollower/MainActivity;)Lcom/alicegpt/textfollower/ui/ReaderView;
    .locals 1
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 44
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    return-object v0
.end method

.method public static final synthetic access$getSearchSince$p(Lcom/alicegpt/textfollower/MainActivity;)J
    .locals 2
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 44
    iget-wide v0, p0, Lcom/alicegpt/textfollower/MainActivity;->searchSince:J

    return-wide v0
.end method

.method public static final synthetic access$getStats$p(Lcom/alicegpt/textfollower/MainActivity;)Lcom/alicegpt/textfollower/SessionStats;
    .locals 1
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 44
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    return-object v0
.end method

.method public static final synthetic access$getStoreFactory$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 44
    sget-object v0, Lcom/alicegpt/textfollower/MainActivity;->storeFactory:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public static final synthetic access$getUi$p(Lcom/alicegpt/textfollower/MainActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 44
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$refreshStatus(Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 0
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 44
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    return-void
.end method

.method public static final synthetic access$savePosition(Lcom/alicegpt/textfollower/MainActivity;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "force"    # Z

    .line 44
    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->savePosition(Z)V

    return-void
.end method

.method public static final synthetic access$setContextActive$p(Lcom/alicegpt/textfollower/MainActivity;Z)V
    .locals 0
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "<set-?>"    # Z

    .line 44
    iput-boolean p1, p0, Lcom/alicegpt/textfollower/MainActivity;->contextActive:Z

    return-void
.end method

.method public static final synthetic access$setEngineFactory$cp(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p0, "<set-?>"    # Lkotlin/jvm/functions/Function2;

    .line 44
    sput-object p0, Lcom/alicegpt/textfollower/MainActivity;->engineFactory:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$setModelRetryDelayMs$cp(J)V
    .locals 0
    .param p0, "<set-?>"    # J

    .line 44
    sput-wide p0, Lcom/alicegpt/textfollower/MainActivity;->modelRetryDelayMs:J

    return-void
.end method

.method public static final synthetic access$setStoreFactory$cp(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p0, "<set-?>"    # Lkotlin/jvm/functions/Function1;

    .line 44
    sput-object p0, Lcom/alicegpt/textfollower/MainActivity;->storeFactory:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static final synthetic access$updateStats(Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 0
    .param p0, "$this"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 44
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->updateStats()V

    return-void
.end method

.method private final applyContext(Z)V
    .locals 10
    .param p1, "force"    # Z

    .line 675
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->doc:Lcom/alicegpt/textfollower/text/Doc;

    if-nez v0, :cond_0

    return-void

    .line 676
    .local v0, "d":Lcom/alicegpt/textfollower/text/Doc;
    :cond_0
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    if-nez v1, :cond_1

    return-void

    .line 677
    .local v1, "t":Lcom/alicegpt/textfollower/tracking/TextTracker;
    :cond_1
    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    const-string v3, "engine"

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_2
    invoke-interface {v2}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 678
    :cond_3
    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v2, :cond_4

    const-string v2, "settings"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_4
    invoke-virtual {v2}, Lcom/alicegpt/textfollower/Settings;->getUseContext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getSearchMode()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 685
    :cond_5
    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v2, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_6
    invoke-interface {v2}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->getContextAhead()I

    move-result v2

    int-to-double v5, v2

    const-wide v7, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v5, v7

    double-to-int v2, v5

    .line 686
    .local v2, "limit":I
    if-nez p1, :cond_7

    iget-boolean v5, p0, Lcom/alicegpt/textfollower/MainActivity;->contextActive:Z

    if-eqz v5, :cond_7

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosition()I

    move-result v5

    iget v6, p0, Lcom/alicegpt/textfollower/MainActivity;->contextCenter:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_7

    return-void

    .line 687
    :cond_7
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosition()I

    move-result v5

    iput v5, p0, Lcom/alicegpt/textfollower/MainActivity;->contextCenter:I

    .line 688
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/alicegpt/textfollower/MainActivity;->contextActive:Z

    .line 689
    iget-object v5, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v5, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_8
    sget-object v6, Lcom/alicegpt/textfollower/speech/ContextWords;->INSTANCE:Lcom/alicegpt/textfollower/speech/ContextWords;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosition()I

    move-result v7

    iget-object v8, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v8, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v4

    :cond_9
    invoke-interface {v8}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->getContextBack()I

    move-result v8

    iget-object v9, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v9, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    move-object v4, v9

    :goto_0
    invoke-interface {v4}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->getContextAhead()I

    move-result v3

    invoke-virtual {v6, v0, v7, v8, v3}, Lcom/alicegpt/textfollower/speech/ContextWords;->window(Lcom/alicegpt/textfollower/text/Doc;III)Ljava/util/List;

    move-result-object v3

    invoke-interface {v5, v3}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->setContext(Ljava/util/List;)V

    .line 690
    return-void

    .line 679
    .end local v2    # "limit":I
    :cond_b
    :goto_1
    iget-boolean v2, p0, Lcom/alicegpt/textfollower/MainActivity;->contextActive:Z

    if-eqz v2, :cond_d

    .line 680
    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v2, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_c
    invoke-interface {v2, v4}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->setContext(Ljava/util/List;)V

    .line 681
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alicegpt/textfollower/MainActivity;->contextActive:Z

    .line 683
    :cond_d
    return-void
.end method

.method private final applyTypography()V
    .locals 6

    .line 404
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "reader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    const-string v3, "settings"

    if-nez v2, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1
    invoke-virtual {v2}, Lcom/alicegpt/textfollower/Settings;->getFontSp()F

    move-result v2

    iget-object v4, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v4, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_2
    invoke-virtual {v4}, Lcom/alicegpt/textfollower/Settings;->getSerif()Z

    move-result v4

    iget-object v5, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v5, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v5

    :goto_0
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/Settings;->getLineSpacing()F

    move-result v1

    invoke-virtual {v0, v2, v4, v1}, Lcom/alicegpt/textfollower/ui/ReaderView;->setTypography(FZF)V

    .line 405
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda6;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 406
    return-void
.end method

.method private static final applyTypography$lambda$22(Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 2
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 405
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v0, :cond_0

    const-string v0, "reader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alicegpt/textfollower/ui/ReaderView;->scrollToCursor(Z)V

    return-void
.end method

.method private final attrColor(I)I
    .locals 3
    .param p1, "attr"    # I

    .line 216
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 217
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/MainActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 218
    iget v1, v0, Landroid/util/TypedValue;->data:I

    return v1
.end method

.method private final bindViews()V
    .locals 11

    .line 118
    sget v0, Lcom/alicegpt/textfollower/R$id;->titleText:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->titleText:Landroid/widget/TextView;

    .line 119
    sget v0, Lcom/alicegpt/textfollower/R$id;->chapterText:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->chapterText:Landroid/widget/TextView;

    .line 120
    sget v0, Lcom/alicegpt/textfollower/R$id;->reader:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alicegpt/textfollower/ui/ReaderView;

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    .line 121
    sget v0, Lcom/alicegpt/textfollower/R$id;->banner:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->banner:Landroid/widget/TextView;

    .line 122
    sget v0, Lcom/alicegpt/textfollower/R$id;->statusText:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->statusText:Landroid/widget/TextView;

    .line 123
    sget v0, Lcom/alicegpt/textfollower/R$id;->statsText:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->statsText:Landroid/widget/TextView;

    .line 124
    sget v0, Lcom/alicegpt/textfollower/R$id;->heardText:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->heardText:Landroid/widget/TextView;

    .line 125
    sget v0, Lcom/alicegpt/textfollower/R$id;->bookProgress:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->bookProgress:Landroid/widget/ProgressBar;

    .line 126
    sget v0, Lcom/alicegpt/textfollower/R$id;->micButton:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alicegpt/textfollower/ui/MicButton;

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->mic:Lcom/alicegpt/textfollower/ui/MicButton;

    .line 128
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    const-string v1, "reader"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->readerColors()Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alicegpt/textfollower/ui/ReaderView;->setColors(Lcom/alicegpt/textfollower/ui/ReaderView$Colors;)V

    .line 129
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v3, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    const-string v4, "settings"

    if-nez v3, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v3}, Lcom/alicegpt/textfollower/Settings;->getFontSp()F

    move-result v3

    iget-object v5, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v5, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_3
    invoke-virtual {v5}, Lcom/alicegpt/textfollower/Settings;->getSerif()Z

    move-result v5

    iget-object v6, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v6, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_4
    invoke-virtual {v6}, Lcom/alicegpt/textfollower/Settings;->getLineSpacing()F

    move-result v6

    invoke-virtual {v0, v3, v5, v6}, Lcom/alicegpt/textfollower/ui/ReaderView;->setTypography(FZF)V

    .line 130
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v3, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v3, :cond_6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_6
    invoke-virtual {v3}, Lcom/alicegpt/textfollower/Settings;->getAutoScroll()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alicegpt/textfollower/ui/ReaderView;->setAutoScroll(Z)V

    .line 131
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->mic:Lcom/alicegpt/textfollower/ui/MicButton;

    const-string v3, "mic"

    if-nez v0, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    goto :goto_0

    :cond_7
    move-object v4, v0

    .line 132
    :goto_0
    sget v0, Lcom/alicegpt/textfollower/R$attr;->accentColor:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v5

    sget v0, Lcom/alicegpt/textfollower/R$attr;->goodColor:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v6

    sget v0, Lcom/alicegpt/textfollower/R$attr;->warnColor:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v7

    .line 133
    sget v0, Lcom/alicegpt/textfollower/R$attr;->badColor:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v8

    sget v0, Lcom/alicegpt/textfollower/R$attr;->onAccent:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v9

    sget v0, Lcom/alicegpt/textfollower/R$attr;->strokeColor:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v10

    .line 131
    invoke-virtual/range {v4 .. v10}, Lcom/alicegpt/textfollower/ui/MicButton;->setColors(IIIIII)V

    .line 136
    sget v0, Lcom/alicegpt/textfollower/R$id;->tocButton:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v4, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda21;

    invoke-direct {v4, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda21;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    sget v0, Lcom/alicegpt/textfollower/R$id;->searchButton:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v4, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda22;

    invoke-direct {v4, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda22;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v0, Lcom/alicegpt/textfollower/R$id;->fileButton:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v4, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda23;

    invoke-direct {v4, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda23;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    sget v0, Lcom/alicegpt/textfollower/R$id;->settingsButton:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v4, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda24;

    invoke-direct {v4, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda24;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    sget v0, Lcom/alicegpt/textfollower/R$id;->fontSmaller:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda25;

    invoke-direct {v4, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda25;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget v0, Lcom/alicegpt/textfollower/R$id;->fontBigger:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v4, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda26;

    invoke-direct {v4, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda26;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->mic:Lcom/alicegpt/textfollower/ui/MicButton;

    if-nez v0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    new-instance v3, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda27;

    invoke-direct {v3, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda27;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v3}, Lcom/alicegpt/textfollower/ui/MicButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->statsText:Landroid/widget/TextView;

    if-nez v0, :cond_9

    const-string v0, "statsText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_9
    new-instance v3, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda28;

    invoke-direct {v3, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda28;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object v2, v0

    :goto_1
    new-instance v0, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v2, v0}, Lcom/alicegpt/textfollower/ui/ReaderView;->setOnLongPress(Lkotlin/jvm/functions/Function1;)V

    .line 149
    return-void
.end method

.method private static final bindViews$lambda$1(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 136
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->showToc()V

    return-void
.end method

.method private static final bindViews$lambda$2(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 137
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->showSearch()V

    return-void
.end method

.method private static final bindViews$lambda$3(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 138
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->showFileMenu()V

    return-void
.end method

.method private static final bindViews$lambda$4(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 139
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->showSettings()V

    return-void
.end method

.method private static final bindViews$lambda$5(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 140
    const/high16 v0, -0x40000000    # -2.0f

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->changeFont(F)V

    return-void
.end method

.method private static final bindViews$lambda$6(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 141
    const/high16 v0, 0x40000000    # 2.0f

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->changeFont(F)V

    return-void
.end method

.method private static final bindViews$lambda$7(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 142
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->toggleListening()V

    return-void
.end method

.method private static final bindViews$lambda$8(Lcom/alicegpt/textfollower/MainActivity;Landroid/view/View;)Z
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "it"    # Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/SessionStats;->reset()V

    .line 145
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->updateStats()V

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method private static final bindViews$lambda$9(Lcom/alicegpt/textfollower/MainActivity;I)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "offset"    # I

    .line 148
    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->seekToOffset(I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final changeEngine(Lcom/alicegpt/textfollower/speech/EngineKind;)V
    .locals 5
    .param p1, "kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 307
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    if-ne p1, v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    .line 309
    .local v0, "wasListening":Z
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "engine"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-interface {v1}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->release()V

    .line 310
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/SessionStats;->pause()V

    .line 311
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v1, :cond_2

    const-string v1, "settings"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_2
    invoke-virtual {v1, p1}, Lcom/alicegpt/textfollower/Settings;->setEngine(Lcom/alicegpt/textfollower/speech/EngineKind;)V

    .line 312
    iput-object p1, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 313
    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->createEngine(Lcom/alicegpt/textfollower/speech/EngineKind;)Lcom/alicegpt/textfollower/speech/SpeechEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    .line 314
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alicegpt/textfollower/MainActivity;->contextActive:Z

    .line 315
    iput-boolean v1, p0, Lcom/alicegpt/textfollower/MainActivity;->starting:Z

    .line 316
    iput-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->lastError:Ljava/lang/String;

    .line 317
    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    .line 318
    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->doc:Lcom/alicegpt/textfollower/text/Doc;

    if-eqz v2, :cond_4

    .line 835
    .local v2, "d":Lcom/alicegpt/textfollower/text/Doc;
    const/4 v3, 0x0

    .line 318
    .local v3, "$i$a$-let-MainActivity$changeEngine$1":I
    iget-object v4, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosition()I

    move-result v1

    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/alicegpt/textfollower/MainActivity;->newTracker(Lcom/alicegpt/textfollower/text/Doc;I)Lcom/alicegpt/textfollower/tracking/TextTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    .line 319
    .end local v2    # "d":Lcom/alicegpt/textfollower/text/Doc;
    .end local v3    # "$i$a$-let-MainActivity$changeEngine$1":I
    :cond_4
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->prepareModel()V

    .line 320
    iget-boolean v1, p0, Lcom/alicegpt/textfollower/MainActivity;->modelReady:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->startListening()V

    .line 321
    :cond_5
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 322
    return-void
.end method

.method private final changeFont(F)V
    .locals 4
    .param p1, "delta"    # F

    .line 399
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    const/4 v1, 0x0

    const-string v2, "settings"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/Settings;->getFontSp()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/alicegpt/textfollower/Settings;->setFontSp(F)V

    .line 400
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->applyTypography()V

    .line 401
    return-void
.end method

.method private final createEngine(Lcom/alicegpt/textfollower/speech/EngineKind;)Lcom/alicegpt/textfollower/speech/SpeechEngine;
    .locals 3
    .param p1, "kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 229
    sget-object v0, Lcom/alicegpt/textfollower/MainActivity;->engineFactory:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, p1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicegpt/textfollower/speech/SpeechEngine;

    .line 230
    .local v0, "e":Lcom/alicegpt/textfollower/speech/SpeechEngine;
    invoke-interface {v0}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->getGain()Lcom/alicegpt/textfollower/speech/AutoGain;

    move-result-object v1

    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v2, :cond_0

    const-string v2, "settings"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v2}, Lcom/alicegpt/textfollower/Settings;->getSensitivity()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alicegpt/textfollower/speech/AutoGain;->setSensitivity(I)V

    .line 231
    return-object v0
.end method

.method private final displayName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 532
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "_display_name"

    const/4 v6, 0x0

    aput-object v1, v2, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "\u0444\u0430\u0439\u043b"

    if-eqz v0, :cond_2

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    .local v2, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 533
    .local v3, "$i$a$-use-MainActivity$displayName$1":I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "$i$a$-use-MainActivity$displayName$1":I
    :goto_0
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1

    .line 534
    .restart local v2    # "c":Landroid/database/Cursor;
    .restart local v3    # "$i$a$-use-MainActivity$displayName$1":I
    :cond_1
    nop

    .end local v2    # "c":Landroid/database/Cursor;
    .end local v3    # "$i$a$-use-MainActivity$displayName$1":I
    :try_start_1
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    invoke-static {v0, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 535
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method private static final engineFactory$lambda$36(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;)Lcom/alicegpt/textfollower/speech/SpeechEngine;
    .locals 1
    .param p0, "kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;
    .param p1, "listener"    # Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;

    const-string v0, "kind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 809
    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->NEURAL:Lcom/alicegpt/textfollower/speech/EngineKind;

    if-ne p0, v0, :cond_0

    new-instance v0, Lcom/alicegpt/textfollower/speech/NeuralEngine;

    invoke-direct {v0, p1}, Lcom/alicegpt/textfollower/speech/NeuralEngine;-><init>(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/alicegpt/textfollower/speech/VoskEngine;

    invoke-direct {v0, p1}, Lcom/alicegpt/textfollower/speech/VoskEngine;-><init>(Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;)V

    :goto_0
    check-cast v0, Lcom/alicegpt/textfollower/speech/SpeechEngine;

    return-object v0
.end method

.method private final formatTime(J)Ljava/lang/String;
    .locals 12
    .param p1, "ms"    # J

    .line 790
    const/16 v0, 0x3e8

    int-to-long v0, v0

    div-long v0, p1, v0

    .line 791
    .local v0, "s":J
    const/16 v2, 0xe10

    int-to-long v2, v2

    div-long v4, v0, v2

    .line 792
    .local v4, "h":J
    rem-long v2, v0, v2

    const/16 v6, 0x3c

    int-to-long v6, v6

    div-long/2addr v2, v6

    .line 793
    .local v2, "m":J
    rem-long v6, v0, v6

    .line 794
    .local v6, "sec":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    const-string v9, "format(...)"

    if-lez v8, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v8, v10, v11}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v10, 0x3

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v10, "%d:%02d:%02d"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v8, v10}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v10, 0x2

    invoke-static {v8, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v10, "%02d:%02d"

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v8
.end method

.method private final friendlyError(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 300
    nop

    .line 301
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/net/ConnectException;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    .line 302
    :cond_2
    :goto_0
    sget v0, Lcom/alicegpt/textfollower/R$string;->error_no_internet:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    :goto_1
    return-object v0
.end method

.method public static final getEngineFactory()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alicegpt/textfollower/MainActivity;->Companion:Lcom/alicegpt/textfollower/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/MainActivity$Companion;->getEngineFactory()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    .line 810
    return-object v0
.end method

.method public static final getModelRetryDelayMs()J
    .locals 2

    sget-object v0, Lcom/alicegpt/textfollower/MainActivity;->Companion:Lcom/alicegpt/textfollower/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/MainActivity$Companion;->getModelRetryDelayMs()J

    move-result-wide v0

    .line 818
    return-wide v0
.end method

.method public static final getStoreFactory()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            "Lcom/alicegpt/textfollower/speech/ModelStore;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alicegpt/textfollower/MainActivity;->Companion:Lcom/alicegpt/textfollower/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/MainActivity$Companion;->getStoreFactory()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 814
    return-object v0
.end method

.method private final handleSpeech(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isFinal"    # Z

    .line 632
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    if-nez v0, :cond_0

    return-void

    .line 633
    .local v0, "t":Lcom/alicegpt/textfollower/tracking/TextTracker;
    :cond_0
    iput-object p1, p0, Lcom/alicegpt/textfollower/MainActivity;->lastHeard:Ljava/lang/String;

    .line 634
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->heardText:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "heardText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    sget v3, Lcom/alicegpt/textfollower/R$string;->heard_format:I

    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->heardTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getSearchMode()Z

    move-result v1

    .line 636
    .local v1, "wasSearching":Z
    if-eqz p2, :cond_2

    invoke-virtual {v0, p1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->onFinal(Ljava/lang/String;)Lcom/alicegpt/textfollower/tracking/TextTracker$Move;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->onPartial(Ljava/lang/String;)Lcom/alicegpt/textfollower/tracking/TextTracker$Move;

    move-result-object v3

    .line 637
    .local v3, "move":Lcom/alicegpt/textfollower/tracking/TextTracker$Move;
    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 638
    invoke-virtual {v3}, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->getDelta()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v3}, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->getFar()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v3}, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->getDelta()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/alicegpt/textfollower/SessionStats;->onForwardMove(I)V

    .line 639
    :cond_3
    invoke-virtual {v3}, Lcom/alicegpt/textfollower/tracking/TextTracker$Move;->getFar()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    invoke-static {p0, v5, v4, v6, v2}, Lcom/alicegpt/textfollower/MainActivity;->renderCursor$default(Lcom/alicegpt/textfollower/MainActivity;ZZILjava/lang/Object;)V

    .line 640
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->updateStats()V

    .line 641
    invoke-direct {p0, v4}, Lcom/alicegpt/textfollower/MainActivity;->savePosition(Z)V

    .line 643
    :cond_4
    nop

    .line 644
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getSearchMode()Z

    move-result v5

    if-eq v5, v1, :cond_5

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getSearchMode()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/alicegpt/textfollower/MainActivity;->onSearchModeChanged(Z)V

    goto :goto_1

    .line 645
    :cond_5
    if-eqz v3, :cond_6

    invoke-direct {p0, v4}, Lcom/alicegpt/textfollower/MainActivity;->applyContext(Z)V

    .line 647
    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v4, :cond_7

    const-string v4, "reader"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v2, v4

    :goto_2
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getLocked()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/alicegpt/textfollower/ui/ReaderView;->setLocked(Z)V

    .line 648
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 649
    return-void
.end method

.method private final heardTail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 671
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1}, Lkotlin/text/StringsKt;->takeLast(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lkotlin/text/StringsKt;->substringAfter$default(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final installWithRetries(Lcom/alicegpt/textfollower/speech/ModelStore;Lcom/alicegpt/textfollower/speech/EngineKind;)V
    .locals 6
    .param p1, "store"    # Lcom/alicegpt/textfollower/speech/ModelStore;
    .param p2, "kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 280
    const/4 v0, 0x1

    .line 281
    .local v0, "attempt":I
    :goto_0
    nop

    .line 282
    nop

    .line 283
    :try_start_0
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    new-instance v2, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0, p2}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda19;-><init>(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/EngineKind;)V

    invoke-interface {p1, v1, v2}, Lcom/alicegpt/textfollower/speech/ModelStore;->install(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    return-void

    .line 292
    :catch_0
    move-exception v1

    .line 293
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 294
    sget-wide v2, Lcom/alicegpt/textfollower/MainActivity;->modelRetryDelayMs:J

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 295
    nop

    .end local v1    # "e":Ljava/io/IOException;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_0
    throw v1
.end method

.method private static final installWithRetries$lambda$16(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/EngineKind;F)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "$kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;
    .param p2, "p"    # F

    .line 284
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda16;

    invoke-direct {v1, p1, p0, p2}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda16;-><init>(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final installWithRetries$lambda$16$lambda$15(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;F)V
    .locals 1
    .param p0, "$kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;
    .param p1, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p2, "$p"    # F

    .line 285
    iget-object v0, p1, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    if-ne p0, v0, :cond_0

    .line 286
    iput p2, p1, Lcom/alicegpt/textfollower/MainActivity;->modelProgress:F

    .line 287
    invoke-direct {p1}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 289
    :cond_0
    return-void
.end method

.method private final loadDoc(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->statusText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "statusText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget v1, Lcom/alicegpt/textfollower/R$string;->status_loading_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 328
    new-instance v0, Ljava/lang/Thread;

    .line 348
    new-instance v1, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda18;

    invoke-direct {v1, p1, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;Lcom/alicegpt/textfollower/MainActivity;)V

    .line 328
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 348
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 349
    return-void
.end method

.method private static final loadDoc$lambda$21(Ljava/lang/String;Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 6
    .param p0, "$key"    # Ljava/lang/String;
    .param p1, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 329
    nop

    .line 330
    :try_start_0
    const-string v0, "asset"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {p1}, Lcom/alicegpt/textfollower/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "odyssey_zhukovsky.txt"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v2, v0

    check-cast v2, Ljava/io/InputStream;

    .line 835
    .local v2, "it":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 331
    .local v3, "$i$a$-use-MainActivity$loadDoc$1$text$1":I
    sget-object v4, Lcom/alicegpt/textfollower/text/TextLoader;->INSTANCE:Lcom/alicegpt/textfollower/text/TextLoader;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/io/ByteStreamsKt;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alicegpt/textfollower/text/TextLoader;->load([B)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "it":Ljava/io/InputStream;
    .end local v3    # "$i$a$-use-MainActivity$loadDoc$1$text$1":I
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v1

    .end local p0    # "$key":Ljava/lang/String;
    .end local p1    # "this$0":Lcom/alicegpt/textfollower/MainActivity;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local p0    # "$key":Ljava/lang/String;
    .restart local p1    # "this$0":Lcom/alicegpt/textfollower/MainActivity;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local p0    # "$key":Ljava/lang/String;
    .end local p1    # "this$0":Lcom/alicegpt/textfollower/MainActivity;
    throw v2

    .line 333
    .restart local p0    # "$key":Ljava/lang/String;
    .restart local p1    # "this$0":Lcom/alicegpt/textfollower/MainActivity;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/alicegpt/textfollower/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "custom.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 330
    :goto_0
    move-object v0, v4

    .line 335
    .local v0, "text":Ljava/lang/String;
    sget-object v2, Lcom/alicegpt/textfollower/text/Doc;->Companion:Lcom/alicegpt/textfollower/text/Doc$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v4, v1}, Lcom/alicegpt/textfollower/text/Doc$Companion;->parse$default(Lcom/alicegpt/textfollower/text/Doc$Companion;Ljava/lang/String;IILjava/lang/Object;)Lcom/alicegpt/textfollower/text/Doc;

    move-result-object v1

    .line 336
    .local v1, "d":Lcom/alicegpt/textfollower/text/Doc;
    iget-object v2, p1, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    new-instance v3, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda10;

    invoke-direct {v3, p1, p0, v1}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda10;-><init>(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/String;Lcom/alicegpt/textfollower/text/Doc;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "d":Lcom/alicegpt/textfollower/text/Doc;
    goto :goto_1

    .line 337
    :catchall_2
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p1, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    new-instance v2, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1, v0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private static final loadDoc$lambda$21$lambda$19(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/String;Lcom/alicegpt/textfollower/text/Doc;)V
    .locals 0
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "$key"    # Ljava/lang/String;
    .param p2, "$d"    # Lcom/alicegpt/textfollower/text/Doc;

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->onDocLoaded(Ljava/lang/String;Lcom/alicegpt/textfollower/text/Doc;)V

    return-void
.end method

.method private static final loadDoc$lambda$21$lambda$20(Ljava/lang/String;Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "$key"    # Ljava/lang/String;
    .param p1, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p2, "$e"    # Ljava/lang/Throwable;

    .line 339
    const-string v0, "asset"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 340
    iget-object v1, p1, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v1, :cond_0

    const-string v1, "settings"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/alicegpt/textfollower/Settings;->setCurrentDoc(Ljava/lang/String;)V

    .line 341
    invoke-direct {p1, v0}, Lcom/alicegpt/textfollower/MainActivity;->loadDoc(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iput-object v0, p1, Lcom/alicegpt/textfollower/MainActivity;->lastError:Ljava/lang/String;

    .line 344
    invoke-direct {p1}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 346
    :goto_0
    return-void
.end method

.method private final newTracker(Lcom/alicegpt/textfollower/text/Doc;I)Lcom/alicegpt/textfollower/tracking/TextTracker;
    .locals 3
    .param p1, "d"    # Lcom/alicegpt/textfollower/text/Doc;
    .param p2, "at"    # I

    .line 237
    new-instance v0, Lcom/alicegpt/textfollower/tracking/TextTracker;

    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    invoke-direct {p0, v1}, Lcom/alicegpt/textfollower/MainActivity;->trackerConfig(Lcom/alicegpt/textfollower/speech/EngineKind;)Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/alicegpt/textfollower/tracking/TextTracker;-><init>(Lcom/alicegpt/textfollower/text/Doc;Lcom/alicegpt/textfollower/tracking/TrackerConfig;)V

    .line 238
    .local v0, "tr":Lcom/alicegpt/textfollower/tracking/TextTracker;
    invoke-virtual {v0, p2}, Lcom/alicegpt/textfollower/tracking/TextTracker;->seek(I)V

    .line 239
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda17;-><init>(Lcom/alicegpt/textfollower/tracking/TextTracker;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 240
    return-object v0
.end method

.method private static final newTracker$lambda$11(Lcom/alicegpt/textfollower/tracking/TextTracker;)V
    .locals 0
    .param p0, "$tr"    # Lcom/alicegpt/textfollower/tracking/TextTracker;

    .line 239
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->warmUp()V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/alicegpt/textfollower/MainActivity;)Lkotlin/Unit;
    .locals 2
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 113
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alicegpt/textfollower/Settings;->setSeenIntro(Z)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final onDocLoaded(Ljava/lang/String;Lcom/alicegpt/textfollower/text/Doc;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "d"    # Lcom/alicegpt/textfollower/text/Doc;

    .line 352
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    const-string v1, "engine"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-interface {v0}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->isRunning()Z

    move-result v0

    .line 353
    .local v0, "wasListening":Z
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-interface {v3}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->stop()V

    .line 354
    :cond_2
    iput-object p1, p0, Lcom/alicegpt/textfollower/MainActivity;->docKey:Ljava/lang/String;

    .line 355
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    const-string v3, "settings"

    if-nez v1, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_3
    invoke-virtual {v1, p1}, Lcom/alicegpt/textfollower/Settings;->setCurrentDoc(Ljava/lang/String;)V

    .line 356
    iput-object p2, p0, Lcom/alicegpt/textfollower/MainActivity;->doc:Lcom/alicegpt/textfollower/text/Doc;

    .line 357
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_4
    invoke-virtual {v1, p1}, Lcom/alicegpt/textfollower/Settings;->position(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/alicegpt/textfollower/MainActivity;->newTracker(Lcom/alicegpt/textfollower/text/Doc;I)Lcom/alicegpt/textfollower/tracking/TextTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    .line 358
    const/4 v1, -0x1

    iput v1, p0, Lcom/alicegpt/textfollower/MainActivity;->currentSection:I

    .line 359
    iput-boolean v5, p0, Lcom/alicegpt/textfollower/MainActivity;->contextActive:Z

    .line 360
    const-string v1, "asset"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/alicegpt/textfollower/R$string;->default_title:I

    invoke-virtual {p0, v1}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_6
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/Settings;->getCustomName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->docTitle:Ljava/lang/String;

    .line 361
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->titleText:Landroid/widget/TextView;

    if-nez v1, :cond_7

    const-string v1, "titleText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v2, v1

    :goto_1
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->docTitle:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    const/4 v1, 0x1

    invoke-direct {p0, v5, v1}, Lcom/alicegpt/textfollower/MainActivity;->renderCursor(ZZ)V

    .line 363
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 364
    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->startListening()V

    .line 365
    :cond_8
    return-void
.end method

.method private final onSearchModeChanged(Z)V
    .locals 5
    .param p1, "searching"    # Z

    .line 657
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lcom/alicegpt/textfollower/MainActivity;->searchSince:J

    .line 658
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    sget-object v1, Lcom/alicegpt/textfollower/speech/EngineKind;->VOSK:Lcom/alicegpt/textfollower/speech/EngineKind;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 659
    .local v0, "restricts":Z
    :goto_1
    if-eqz p1, :cond_5

    .line 660
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string v1, "settings"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/Settings;->getUseContext()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    const-string v4, "engine"

    if-nez v1, :cond_3

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    invoke-interface {v1}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 661
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v1, :cond_4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_4
    invoke-interface {v1, v3}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->setContext(Ljava/util/List;)V

    .line 662
    iput-boolean v2, p0, Lcom/alicegpt/textfollower/MainActivity;->contextActive:Z

    goto :goto_2

    .line 665
    :cond_5
    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->applyContext(Z)V

    .line 667
    :cond_6
    :goto_2
    return-void
.end method

.method private final openFile(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 486
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->statusText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "statusText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget v1, Lcom/alicegpt/textfollower/R$string;->status_loading_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 487
    new-instance v0, Ljava/lang/Thread;

    .line 514
    new-instance v1, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda20;-><init>(Lcom/alicegpt/textfollower/MainActivity;Landroid/net/Uri;)V

    .line 487
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 514
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 515
    return-void
.end method

.method private static final openFile$lambda$33(Lcom/alicegpt/textfollower/MainActivity;Landroid/net/Uri;)V
    .locals 8
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "$uri"    # Landroid/net/Uri;

    .line 488
    nop

    .line 489
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->displayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->readLimited(Landroid/net/Uri;)[B

    move-result-object v1

    .line 491
    .local v1, "bytes":[B
    sget-object v2, Lcom/alicegpt/textfollower/text/TextLoader;->INSTANCE:Lcom/alicegpt/textfollower/text/TextLoader;

    invoke-virtual {v2, v1}, Lcom/alicegpt/textfollower/text/TextLoader;->load([B)Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "text":Ljava/lang/String;
    sget-object v3, Lcom/alicegpt/textfollower/text/Doc;->Companion:Lcom/alicegpt/textfollower/text/Doc$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v3, v2, v4, v5, v6}, Lcom/alicegpt/textfollower/text/Doc$Companion;->parse$default(Lcom/alicegpt/textfollower/text/Doc$Companion;Ljava/lang/String;IILjava/lang/Object;)Lcom/alicegpt/textfollower/text/Doc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v3

    if-nez v3, :cond_0

    .line 493
    iget-object v3, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    new-instance v4, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void

    .line 499
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/alicegpt/textfollower/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v7, "custom.txt"

    invoke-direct {v3, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, v2, v6, v5, v6}, Lkotlin/io/FilesKt;->writeText$default(Ljava/io/File;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)V

    .line 500
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 501
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    new-instance v5, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v5, p0, v0, v3}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "bytes":[B
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    .line 509
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    new-instance v2, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda5;-><init>(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static final openFile$lambda$33$lambda$30(Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 3
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 494
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/alicegpt/textfollower/R$string;->file_empty:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 495
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 496
    return-void
.end method

.method private static final openFile$lambda$33$lambda$31(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "$name"    # Ljava/lang/String;
    .param p2, "$key"    # Ljava/lang/String;

    .line 502
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->savePosition(Z)V

    .line 503
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    const/4 v1, 0x0

    const-string v2, "settings"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alicegpt/textfollower/Settings;->setCustomName(Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p2}, Lcom/alicegpt/textfollower/Settings;->setCurrentDoc(Ljava/lang/String;)V

    .line 505
    invoke-direct {p0, p2}, Lcom/alicegpt/textfollower/MainActivity;->loadDoc(Ljava/lang/String;)V

    .line 506
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/alicegpt/textfollower/R$string;->file_opened:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 507
    return-void
.end method

.method private static final openFile$lambda$33$lambda$32(Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "$e"    # Ljava/lang/Throwable;

    .line 510
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/alicegpt/textfollower/R$string;->file_error:I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 511
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 512
    return-void
.end method

.method private final prepareModel()V
    .locals 4

    .line 244
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 245
    .local v0, "kind":Lcom/alicegpt/textfollower/speech/EngineKind;
    sget-object v1, Lcom/alicegpt/textfollower/MainActivity;->storeFactory:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alicegpt/textfollower/speech/ModelStore;

    .line 246
    .local v1, "store":Lcom/alicegpt/textfollower/speech/ModelStore;
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/alicegpt/textfollower/speech/ModelStore;->isInstalled(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 247
    iput-boolean v3, p0, Lcom/alicegpt/textfollower/MainActivity;->modelReady:Z

    .line 248
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/alicegpt/textfollower/MainActivity;->modelProgress:F

    .line 249
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 250
    return-void

    .line 252
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alicegpt/textfollower/MainActivity;->modelReady:Z

    .line 253
    const/4 v2, 0x0

    iput v2, p0, Lcom/alicegpt/textfollower/MainActivity;->modelProgress:F

    .line 254
    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/alicegpt/textfollower/speech/ModelStore;->isBundled(Landroid/content/Context;)Z

    move-result v2

    xor-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/alicegpt/textfollower/MainActivity;->modelDownloading:Z

    .line 255
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->lastError:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 257
    new-instance v2, Ljava/lang/Thread;

    .line 275
    new-instance v3, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v1, v0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda9;-><init>(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/ModelStore;Lcom/alicegpt/textfollower/speech/EngineKind;)V

    .line 257
    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 275
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 276
    return-void
.end method

.method private static final prepareModel$lambda$14(Lcom/alicegpt/textfollower/MainActivity;Lcom/alicegpt/textfollower/speech/ModelStore;Lcom/alicegpt/textfollower/speech/EngineKind;)V
    .locals 3
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "$store"    # Lcom/alicegpt/textfollower/speech/ModelStore;
    .param p2, "$kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 258
    nop

    .line 259
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->installWithRetries(Lcom/alicegpt/textfollower/speech/ModelStore;Lcom/alicegpt/textfollower/speech/EngineKind;)V

    .line 260
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    new-instance v1, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda14;

    invoke-direct {v1, p2, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda14;-><init>(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    new-instance v2, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda15;

    invoke-direct {v2, p2, p0, v0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda15;-><init>(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static final prepareModel$lambda$14$lambda$12(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;)V
    .locals 1
    .param p0, "$kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;
    .param p1, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;

    .line 261
    iget-object v0, p1, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    if-eq p0, v0, :cond_0

    return-void

    .line 262
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/alicegpt/textfollower/MainActivity;->modelReady:Z

    .line 263
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p1, Lcom/alicegpt/textfollower/MainActivity;->modelProgress:F

    .line 264
    invoke-direct {p1}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 265
    iget-boolean v0, p1, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    if-eqz v0, :cond_1

    invoke-direct {p1}, Lcom/alicegpt/textfollower/MainActivity;->startListening()V

    .line 266
    :cond_1
    return-void
.end method

.method private static final prepareModel$lambda$14$lambda$13(Lcom/alicegpt/textfollower/speech/EngineKind;Lcom/alicegpt/textfollower/MainActivity;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "$kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;
    .param p1, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p2, "$e"    # Ljava/lang/Throwable;

    .line 269
    iget-object v0, p1, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    if-eq p0, v0, :cond_0

    return-void

    .line 270
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p1, Lcom/alicegpt/textfollower/MainActivity;->modelProgress:F

    .line 271
    invoke-direct {p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->friendlyError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alicegpt/textfollower/MainActivity;->lastError:Ljava/lang/String;

    .line 272
    invoke-direct {p1}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 273
    return-void
.end method

.method private final readLimited(Landroid/net/Uri;)[B
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .line 518
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 519
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_2

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Ljava/io/InputStream;

    .local v2, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 520
    .local v3, "$i$a$-use-MainActivity$readLimited$1":I
    const/high16 v4, 0x10000

    new-array v4, v4, [B

    .line 521
    .local v4, "buf":[B
    :goto_0
    nop

    .line 522
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 523
    .local v5, "n":I
    if-ltz v5, :cond_1

    .line 524
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 525
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    const/high16 v7, 0x2800000

    if-gt v6, v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "\u0424\u0430\u0439\u043b \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0431\u043e\u043b\u044c\u0448\u043e\u0439"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v6

    .line 527
    .end local v5    # "n":I
    .restart local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_1
    nop

    .end local v2    # "input":Ljava/io/InputStream;
    .end local v3    # "$i$a$-use-MainActivity$readLimited$1":I
    .end local v4    # "buf":[B
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 528
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "toByteArray(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 519
    :catchall_0
    move-exception v2

    .end local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "uri":Landroid/net/Uri;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .restart local v0    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 527
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "\u0424\u0430\u0439\u043b \u043d\u0435\u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final readerColors()Lcom/alicegpt/textfollower/ui/ReaderView$Colors;
    .locals 8

    .line 221
    new-instance v7, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;

    .line 222
    sget v0, Lcom/alicegpt/textfollower/R$attr;->textMain:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v1

    sget v0, Lcom/alicegpt/textfollower/R$attr;->textDim:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v2

    sget v0, Lcom/alicegpt/textfollower/R$attr;->markerColor:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v3

    .line 223
    sget v0, Lcom/alicegpt/textfollower/R$attr;->headingColor:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v4

    sget v0, Lcom/alicegpt/textfollower/R$attr;->hlBg:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v5

    sget v0, Lcom/alicegpt/textfollower/R$attr;->hlText:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v6

    .line 221
    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/alicegpt/textfollower/ui/ReaderView$Colors;-><init>(IIIIII)V

    .line 224
    return-object v7
.end method

.method private final refreshStatus()V
    .locals 14

    .line 732
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->doc:Lcom/alicegpt/textfollower/text/Doc;

    .line 733
    .local v0, "d":Lcom/alicegpt/textfollower/text/Doc;
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    .line 734
    .local v1, "t":Lcom/alicegpt/textfollower/tracking/TextTracker;
    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "engine"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-interface {v2}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->isRunning()Z

    move-result v2

    .line 736
    .local v2, "running":Z
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getSearchMode()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/alicegpt/textfollower/MainActivity;->searchSince:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x5dc

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v5

    .line 737
    .local v6, "searching":Z
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosition()I

    move-result v7

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v8

    if-lt v7, v8, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    .line 738
    .local v4, "finished":Z
    :goto_1
    sget-object v7, Lcom/alicegpt/textfollower/ui/MicButton$State;->IDLE:Lcom/alicegpt/textfollower/ui/MicButton$State;

    .line 739
    .local v7, "micState":Lcom/alicegpt/textfollower/ui/MicButton$State;
    const/high16 v8, -0x40800000    # -1.0f

    .line 740
    .local v8, "progress":F
    nop

    .line 741
    iget-boolean v9, p0, Lcom/alicegpt/textfollower/MainActivity;->modelReady:Z

    if-nez v9, :cond_4

    iget v9, p0, Lcom/alicegpt/textfollower/MainActivity;->modelProgress:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    .line 742
    sget-object v7, Lcom/alicegpt/textfollower/ui/MicButton$State;->BUSY:Lcom/alicegpt/textfollower/ui/MicButton$State;

    .line 743
    iget v8, p0, Lcom/alicegpt/textfollower/MainActivity;->modelProgress:F

    .line 744
    iget v9, p0, Lcom/alicegpt/textfollower/MainActivity;->modelProgress:F

    const/16 v10, 0x64

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 745
    .local v9, "percent":I
    iget-boolean v10, p0, Lcom/alicegpt/textfollower/MainActivity;->modelDownloading:Z

    if-eqz v10, :cond_3

    .line 746
    sget v10, Lcom/alicegpt/textfollower/R$string;->status_downloading_model:I

    sget-object v11, Lcom/alicegpt/textfollower/MainActivity;->storeFactory:Lkotlin/jvm/functions/Function1;

    iget-object v12, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    invoke-interface {v11, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alicegpt/textfollower/speech/ModelStore;

    invoke-interface {v11}, Lcom/alicegpt/textfollower/speech/ModelStore;->getDownloadMb()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 745
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 748
    :cond_3
    sget v10, Lcom/alicegpt/textfollower/R$string;->status_preparing_model:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 747
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .end local v9    # "percent":I
    goto/16 :goto_5

    .line 751
    :cond_4
    iget-object v9, p0, Lcom/alicegpt/textfollower/MainActivity;->lastError:Ljava/lang/String;

    if-eqz v9, :cond_5

    if-nez v2, :cond_5

    .line 752
    sget-object v7, Lcom/alicegpt/textfollower/ui/MicButton$State;->ERROR:Lcom/alicegpt/textfollower/ui/MicButton$State;

    .line 753
    sget v9, Lcom/alicegpt/textfollower/R$string;->status_error:I

    iget-object v10, p0, Lcom/alicegpt/textfollower/MainActivity;->lastError:Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 751
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 755
    :cond_5
    iget-boolean v9, p0, Lcom/alicegpt/textfollower/MainActivity;->modelReady:Z

    if-nez v9, :cond_6

    .line 756
    sget-object v7, Lcom/alicegpt/textfollower/ui/MicButton$State;->ERROR:Lcom/alicegpt/textfollower/ui/MicButton$State;

    .line 757
    sget v9, Lcom/alicegpt/textfollower/R$string;->retry:I

    invoke-virtual {p0, v9}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 755
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 759
    :cond_6
    if-eqz v0, :cond_f

    if-nez v1, :cond_7

    goto/16 :goto_4

    .line 763
    :cond_7
    const-string v9, "getString(...)"

    if-eqz v4, :cond_8

    sget v10, Lcom/alicegpt/textfollower/R$string;->status_finished:I

    invoke-virtual {p0, v10}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 764
    :cond_8
    iget-boolean v10, p0, Lcom/alicegpt/textfollower/MainActivity;->starting:Z

    if-nez v10, :cond_e

    iget-boolean v10, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    if-eqz v10, :cond_9

    if-nez v2, :cond_9

    goto :goto_3

    .line 768
    :cond_9
    if-eqz v6, :cond_a

    .line 769
    sget-object v7, Lcom/alicegpt/textfollower/ui/MicButton$State;->SEARCHING:Lcom/alicegpt/textfollower/ui/MicButton$State;

    .line 770
    sget v9, Lcom/alicegpt/textfollower/R$string;->status_searching:I

    invoke-virtual {p0, v9}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 768
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    .line 772
    :cond_a
    if-eqz v2, :cond_b

    .line 773
    sget-object v7, Lcom/alicegpt/textfollower/ui/MicButton$State;->LISTENING:Lcom/alicegpt/textfollower/ui/MicButton$State;

    .line 774
    sget v9, Lcom/alicegpt/textfollower/R$string;->status_listening:I

    invoke-virtual {p0, v9}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 772
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    .line 776
    :cond_b
    iget-object v10, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v10}, Lcom/alicegpt/textfollower/SessionStats;->getWordsRead()I

    move-result v10

    if-gtz v10, :cond_d

    iget-object v10, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v10}, Lcom/alicegpt/textfollower/SessionStats;->getActiveMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_c

    goto :goto_2

    .line 777
    :cond_c
    sget v10, Lcom/alicegpt/textfollower/R$string;->status_ready:I

    invoke-virtual {p0, v10}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 776
    :cond_d
    :goto_2
    sget v10, Lcom/alicegpt/textfollower/R$string;->status_paused:I

    invoke-virtual {p0, v10}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 765
    :cond_e
    :goto_3
    sget-object v7, Lcom/alicegpt/textfollower/ui/MicButton$State;->BUSY:Lcom/alicegpt/textfollower/ui/MicButton$State;

    .line 766
    sget v9, Lcom/alicegpt/textfollower/R$string;->status_starting:I

    invoke-virtual {p0, v9}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 764
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_5

    .line 760
    :cond_f
    :goto_4
    sget-object v7, Lcom/alicegpt/textfollower/ui/MicButton$State;->BUSY:Lcom/alicegpt/textfollower/ui/MicButton$State;

    .line 761
    sget v9, Lcom/alicegpt/textfollower/R$string;->status_loading_text:I

    invoke-virtual {p0, v9}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 759
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 740
    :goto_5
    move-object v9, v10

    .line 779
    .local v9, "status":Ljava/lang/String;
    iget-object v10, p0, Lcom/alicegpt/textfollower/MainActivity;->statusText:Landroid/widget/TextView;

    if-nez v10, :cond_10

    const-string v10, "statusText"

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v3

    :cond_10
    move-object v11, v9

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v10, p0, Lcom/alicegpt/textfollower/MainActivity;->mic:Lcom/alicegpt/textfollower/ui/MicButton;

    const-string v11, "mic"

    if-nez v10, :cond_11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v3

    :cond_11
    invoke-virtual {v10, v8}, Lcom/alicegpt/textfollower/ui/MicButton;->setProgress(F)V

    .line 781
    iget-object v10, p0, Lcom/alicegpt/textfollower/MainActivity;->mic:Lcom/alicegpt/textfollower/ui/MicButton;

    if-nez v10, :cond_12

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v3

    :cond_12
    invoke-virtual {v10, v7}, Lcom/alicegpt/textfollower/ui/MicButton;->setState(Lcom/alicegpt/textfollower/ui/MicButton$State;)V

    .line 782
    iget-object v10, p0, Lcom/alicegpt/textfollower/MainActivity;->banner:Landroid/widget/TextView;

    if-nez v10, :cond_13

    const-string v10, "banner"

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_13
    move-object v3, v10

    :goto_6
    if-eqz v6, :cond_14

    goto :goto_7

    :cond_14
    const/16 v5, 0x8

    :goto_7
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    return-void
.end method

.method private final renderCursor(ZZ)V
    .locals 16
    .param p1, "animate"    # Z
    .param p2, "forceScroll"    # Z

    .line 377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alicegpt/textfollower/MainActivity;->doc:Lcom/alicegpt/textfollower/text/Doc;

    if-nez v1, :cond_0

    return-void

    .line 378
    .local v1, "d":Lcom/alicegpt/textfollower/text/Doc;
    :cond_0
    iget-object v2, v0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    if-nez v2, :cond_1

    return-void

    .line 379
    .local v2, "t":Lcom/alicegpt/textfollower/tracking/TextTracker;
    :cond_1
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 380
    :cond_2
    invoke-virtual {v2}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosition()I

    move-result v3

    .line 381
    .local v3, "pos":I
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_3

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v4

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Lcom/alicegpt/textfollower/text/Doc;->sectionOfWord(I)I

    move-result v4

    .line 382
    .local v4, "sectionIndex":I
    iget v6, v0, Lcom/alicegpt/textfollower/MainActivity;->currentSection:I

    const/4 v7, 0x0

    if-eq v4, v6, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v7

    .line 383
    .local v6, "switched":Z
    :goto_1
    if-eqz v6, :cond_5

    invoke-direct {v0, v4}, Lcom/alicegpt/textfollower/MainActivity;->showSection(I)V

    .line 384
    :cond_5
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/Doc;->getSections()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alicegpt/textfollower/text/Section;

    .line 385
    .local v8, "sec":Lcom/alicegpt/textfollower/text/Section;
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v9

    const-string v10, "reader"

    const/4 v11, 0x0

    if-ge v3, v9, :cond_b

    .line 386
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/Doc;->getWordStart()[I

    move-result-object v9

    aget v9, v9, v3

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/text/Section;->getStart()I

    move-result v12

    sub-int/2addr v9, v12

    .line 387
    .local v9, "start":I
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/Doc;->getWordEnd()[I

    move-result-object v12

    aget v12, v12, v3

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/text/Section;->getStart()I

    move-result v13

    sub-int/2addr v12, v13

    .line 388
    .local v12, "end":I
    iget-object v13, v0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v13, :cond_6

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v13, v11

    :cond_6
    if-eqz p1, :cond_7

    if-nez v6, :cond_7

    move v14, v5

    goto :goto_2

    :cond_7
    move v14, v7

    :goto_2
    invoke-virtual {v13, v9, v12, v14, v7}, Lcom/alicegpt/textfollower/ui/ReaderView;->setCursor(IIZZ)V

    .line 389
    iget-object v13, v0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v13, :cond_8

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v13, v11

    :cond_8
    if-nez p2, :cond_a

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    move v5, v7

    :cond_a
    :goto_3
    invoke-virtual {v13, v5}, Lcom/alicegpt/textfollower/ui/ReaderView;->scrollToCursor(Z)V

    .end local v9    # "start":I
    .end local v12    # "end":I
    goto :goto_4

    .line 391
    :cond_b
    iget-object v5, v0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v5, :cond_c

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v11

    :cond_c
    invoke-virtual {v5}, Lcom/alicegpt/textfollower/ui/ReaderView;->markAllRead()V

    .line 393
    :goto_4
    iget-object v5, v0, Lcom/alicegpt/textfollower/MainActivity;->bookProgress:Landroid/widget/ProgressBar;

    if-nez v5, :cond_d

    const-string v5, "bookProgress"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v11

    :cond_d
    int-to-long v12, v3

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v7

    int-to-long v14, v7

    div-long/2addr v12, v14

    long-to-int v7, v12

    invoke-virtual {v5, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 394
    iget-object v5, v0, Lcom/alicegpt/textfollower/MainActivity;->chapterText:Landroid/widget/TextView;

    if-nez v5, :cond_e

    const-string v5, "chapterText"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v11

    :cond_e
    sget v7, Lcom/alicegpt/textfollower/R$string;->chapter_progress:I

    invoke-virtual {v8}, Lcom/alicegpt/textfollower/text/Section;->getTitle()Ljava/lang/String;

    move-result-object v9

    int-to-long v12, v3

    const-wide/16 v14, 0x64

    mul-long/2addr v12, v14

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v14

    int-to-long v14, v14

    div-long/2addr v12, v14

    long-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array {v9, v12}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    iget-object v5, v0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v5, :cond_f

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_f
    move-object v11, v5

    :goto_5
    invoke-virtual {v2}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getLocked()Z

    move-result v5

    invoke-virtual {v11, v5}, Lcom/alicegpt/textfollower/ui/ReaderView;->setLocked(Z)V

    .line 396
    return-void
.end method

.method static synthetic renderCursor$default(Lcom/alicegpt/textfollower/MainActivity;ZZILjava/lang/Object;)V
    .locals 0

    .line 376
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alicegpt/textfollower/MainActivity;->renderCursor(ZZ)V

    return-void
.end method

.method private final savePosition(Z)V
    .locals 7
    .param p1, "force"    # Z

    .line 798
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    if-nez v0, :cond_0

    return-void

    .line 799
    .local v0, "t":Lcom/alicegpt/textfollower/tracking/TextTracker;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 800
    .local v1, "now":J
    if-nez p1, :cond_1

    iget-wide v3, p0, Lcom/alicegpt/textfollower/MainActivity;->lastSaveMs:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    return-void

    .line 801
    :cond_1
    iput-wide v1, p0, Lcom/alicegpt/textfollower/MainActivity;->lastSaveMs:J

    .line 802
    iget-object v3, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v3, :cond_2

    const-string v3, "settings"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_2
    iget-object v4, p0, Lcom/alicegpt/textfollower/MainActivity;->docKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosition()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/alicegpt/textfollower/Settings;->savePosition(Ljava/lang/String;I)V

    .line 803
    return-void
.end method

.method private final seekTo(I)V
    .locals 3
    .param p1, "word"    # I

    .line 422
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    if-nez v0, :cond_0

    return-void

    .line 423
    .local v0, "t":Lcom/alicegpt/textfollower/tracking/TextTracker;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alicegpt/textfollower/tracking/TextTracker;->seek(I)V

    .line 424
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/alicegpt/textfollower/MainActivity;->searchSince:J

    .line 425
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/alicegpt/textfollower/MainActivity;->renderCursor(ZZ)V

    .line 426
    invoke-direct {p0, v2}, Lcom/alicegpt/textfollower/MainActivity;->savePosition(Z)V

    .line 427
    invoke-direct {p0, v2}, Lcom/alicegpt/textfollower/MainActivity;->applyContext(Z)V

    .line 428
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 429
    return-void
.end method

.method private final seekToOffset(I)V
    .locals 8
    .param p1, "offset"    # I

    .line 411
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->doc:Lcom/alicegpt/textfollower/text/Doc;

    if-nez v0, :cond_0

    return-void

    .line 412
    .local v0, "d":Lcom/alicegpt/textfollower/text/Doc;
    :cond_0
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getSections()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/alicegpt/textfollower/MainActivity;->currentSection:I

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alicegpt/textfollower/text/Section;

    if-nez v1, :cond_1

    return-void

    .line 413
    .local v1, "sec":Lcom/alicegpt/textfollower/text/Section;
    :cond_1
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 414
    :cond_2
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/text/Section;->getStart()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Lcom/alicegpt/textfollower/text/Doc;->wordAtOffset(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    .line 415
    .local v2, "word":I
    iget-object v3, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v3, :cond_3

    const-string v3, "reader"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_3
    invoke-virtual {v3, v4}, Lcom/alicegpt/textfollower/ui/ReaderView;->performHapticFeedback(I)Z

    .line 416
    invoke-direct {p0, v2}, Lcom/alicegpt/textfollower/MainActivity;->seekTo(I)V

    .line 417
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getWordStart()[I

    move-result-object v5

    aget v5, v5, v2

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getWordEnd()[I

    move-result-object v6

    aget v6, v6, v2

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "substring(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    .local v3, "sample":Ljava/lang/String;
    move-object v5, p0

    check-cast v5, Landroid/content/Context;

    sget v6, Lcom/alicegpt/textfollower/R$string;->seek_here:I

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 419
    return-void
.end method

.method public static final setEngineFactory(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p0, "<set-?>"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            "-",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;",
            "+",
            "Lcom/alicegpt/textfollower/speech/SpeechEngine;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/alicegpt/textfollower/MainActivity;->Companion:Lcom/alicegpt/textfollower/MainActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/alicegpt/textfollower/MainActivity$Companion;->setEngineFactory(Lkotlin/jvm/functions/Function2;)V

    .line 810
    return-void
.end method

.method public static final setModelRetryDelayMs(J)V
    .locals 1
    .param p0, "<set-?>"    # J

    sget-object v0, Lcom/alicegpt/textfollower/MainActivity;->Companion:Lcom/alicegpt/textfollower/MainActivity$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/alicegpt/textfollower/MainActivity$Companion;->setModelRetryDelayMs(J)V

    .line 818
    return-void
.end method

.method public static final setStoreFactory(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p0, "<set-?>"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/alicegpt/textfollower/speech/EngineKind;",
            "+",
            "Lcom/alicegpt/textfollower/speech/ModelStore;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/alicegpt/textfollower/MainActivity;->Companion:Lcom/alicegpt/textfollower/MainActivity$Companion;

    invoke-virtual {v0, p0}, Lcom/alicegpt/textfollower/MainActivity$Companion;->setStoreFactory(Lkotlin/jvm/functions/Function1;)V

    .line 814
    return-void
.end method

.method private final showFileMenu()V
    .locals 4

    .line 456
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget v1, Lcom/alicegpt/textfollower/R$string;->open_file:I

    invoke-virtual {p0, v1}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/alicegpt/textfollower/R$string;->restore_default:I

    invoke-virtual {p0, v1}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 457
    .local v0, "items":[Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object v2, p0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 458
    sget v2, Lcom/alicegpt/textfollower/R$string;->file_title:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 459
    move-object v2, v0

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda13;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 472
    sget v2, Lcom/alicegpt/textfollower/R$string;->close:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 474
    return-void
.end method

.method private static final showFileMenu$lambda$29(Lcom/alicegpt/textfollower/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p2, "which"    # I

    .line 460
    if-nez p2, :cond_0

    .line 461
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    .local v0, "$this$showFileMenu_u24lambda_u2429_u24lambda_u2428":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 462
    .local v1, "$i$a$-apply-MainActivity$showFileMenu$1$intent$1":I
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v2, "*/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    nop

    .line 461
    .end local v0    # "$this$showFileMenu_u24lambda_u2429_u24lambda_u2428":Landroid/content/Intent;
    .end local v1    # "$i$a$-apply-MainActivity$showFileMenu$1$intent$1":I
    nop

    .line 466
    .local p1, "intent":Landroid/content/Intent;
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/alicegpt/textfollower/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .end local p1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 467
    :cond_0
    iget-object p1, p0, Lcom/alicegpt/textfollower/MainActivity;->docKey:Ljava/lang/String;

    const-string v0, "asset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 468
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->savePosition(Z)V

    .line 469
    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->loadDoc(Ljava/lang/String;)V

    .line 471
    :cond_1
    :goto_0
    return-void
.end method

.method private final showSearch()V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->doc:Lcom/alicegpt/textfollower/text/Doc;

    if-nez v0, :cond_0

    return-void

    .line 452
    .local v0, "d":Lcom/alicegpt/textfollower/text/Doc;
    :cond_0
    sget-object v1, Lcom/alicegpt/textfollower/ui/Dialogs;->INSTANCE:Lcom/alicegpt/textfollower/ui/Dialogs;

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda11;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/alicegpt/textfollower/ui/Dialogs;->showSearch(Landroid/app/Activity;Lcom/alicegpt/textfollower/text/Doc;Lkotlin/jvm/functions/Function1;)V

    .line 453
    return-void
.end method

.method private static final showSearch$lambda$27(Lcom/alicegpt/textfollower/MainActivity;I)Lkotlin/Unit;
    .locals 1
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "word"    # I

    .line 452
    invoke-direct {p0, p1}, Lcom/alicegpt/textfollower/MainActivity;->seekTo(I)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private final showSection(I)V
    .locals 6
    .param p1, "index"    # I

    .line 370
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->doc:Lcom/alicegpt/textfollower/text/Doc;

    if-nez v0, :cond_0

    return-void

    .line 371
    .local v0, "d":Lcom/alicegpt/textfollower/text/Doc;
    :cond_0
    iput p1, p0, Lcom/alicegpt/textfollower/MainActivity;->currentSection:I

    .line 372
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    const/4 v2, 0x0

    const-string v3, "reader"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    sget-object v4, Lcom/alicegpt/textfollower/ui/SectionText;->INSTANCE:Lcom/alicegpt/textfollower/ui/SectionText;

    iget-object v5, p0, Lcom/alicegpt/textfollower/MainActivity;->reader:Lcom/alicegpt/textfollower/ui/ReaderView;

    if-nez v5, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v2, v5

    :goto_0
    invoke-virtual {v2}, Lcom/alicegpt/textfollower/ui/ReaderView;->getGutter()Lcom/alicegpt/textfollower/ui/GutterStyle;

    move-result-object v2

    sget v3, Lcom/alicegpt/textfollower/R$attr;->headingColor:I

    invoke-direct {p0, v3}, Lcom/alicegpt/textfollower/MainActivity;->attrColor(I)I

    move-result v3

    invoke-virtual {v4, v0, p1, v2, v3}, Lcom/alicegpt/textfollower/ui/SectionText;->build(Lcom/alicegpt/textfollower/text/Doc;ILcom/alicegpt/textfollower/ui/GutterStyle;I)Landroid/text/SpannableString;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-virtual {v1, v2}, Lcom/alicegpt/textfollower/ui/ReaderView;->setSection(Landroid/text/Spannable;)V

    .line 373
    return-void
.end method

.method private final showSettings()V
    .locals 4

    .line 539
    sget-object v0, Lcom/alicegpt/textfollower/ui/Dialogs;->INSTANCE:Lcom/alicegpt/textfollower/ui/Dialogs;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v2, :cond_0

    const-string v2, "settings"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    new-instance v3, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;

    invoke-direct {v3, p0}, Lcom/alicegpt/textfollower/MainActivity$showSettings$1;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    check-cast v3, Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alicegpt/textfollower/ui/Dialogs;->showSettings(Landroid/app/Activity;Lcom/alicegpt/textfollower/Settings;Lcom/alicegpt/textfollower/ui/Dialogs$SettingsCallbacks;)V

    .line 569
    return-void
.end method

.method private final showToc()V
    .locals 14

    .line 434
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->doc:Lcom/alicegpt/textfollower/text/Doc;

    if-nez v0, :cond_0

    return-void

    .line 435
    .local v0, "d":Lcom/alicegpt/textfollower/text/Doc;
    :cond_0
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Doc;->getSections()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 836
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 837
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .local v7, "element$iv$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lcom/alicegpt/textfollower/text/Section;

    .local v8, "it":Lcom/alicegpt/textfollower/text/Section;
    const/4 v9, 0x0

    .line 435
    .local v9, "$i$a$-filter-MainActivity$showToc$toc$1":I
    invoke-virtual {v8}, Lcom/alicegpt/textfollower/text/Section;->getInToc()Z

    move-result v8

    .line 837
    .end local v8    # "it":Lcom/alicegpt/textfollower/text/Section;
    .end local v9    # "$i$a$-filter-MainActivity$showToc$toc$1":I
    if-eqz v8, :cond_1

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 838
    .end local v7    # "element$iv$iv":Ljava/lang/Object;
    :cond_2
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    check-cast v3, Ljava/util/List;

    .line 836
    nop

    .line 435
    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$filter":I
    move-object v1, v3

    .line 436
    .local v1, "toc":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 437
    :cond_3
    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosition()I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v3

    .line 438
    .local v2, "pos":I
    :goto_1
    move-object v4, v1

    .local v4, "$this$indexOfLast$iv":Ljava/util/List;
    const/4 v5, 0x0

    .line 839
    .local v5, "$i$f$indexOfLast":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v6

    .line 840
    .local v6, "iterator$iv":Ljava/util/ListIterator;
    :cond_5
    invoke-interface {v6}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 841
    invoke-interface {v6}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alicegpt/textfollower/text/Section;

    .local v7, "it":Lcom/alicegpt/textfollower/text/Section;
    const/4 v8, 0x0

    .line 438
    .local v8, "$i$a$-indexOfLast-MainActivity$showToc$current$1":I
    invoke-virtual {v7}, Lcom/alicegpt/textfollower/text/Section;->getFirstWord()I

    move-result v9

    if-gt v9, v2, :cond_6

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    move v9, v3

    .line 841
    .end local v7    # "it":Lcom/alicegpt/textfollower/text/Section;
    .end local v8    # "$i$a$-indexOfLast-MainActivity$showToc$current$1":I
    :goto_2
    if-eqz v9, :cond_5

    .line 842
    invoke-interface {v6}, Ljava/util/ListIterator;->nextIndex()I

    move-result v7

    goto :goto_3

    .line 845
    :cond_7
    const/4 v7, -0x1

    .line 438
    .end local v4    # "$this$indexOfLast$iv":Ljava/util/List;
    .end local v5    # "$i$f$indexOfLast":I
    .end local v6    # "iterator$iv":Ljava/util/ListIterator;
    :goto_3
    invoke-static {v7, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v4

    .line 439
    .local v4, "current":I
    move-object v5, v1

    check-cast v5, Ljava/lang/Iterable;

    .local v5, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 846
    .local v6, "$i$f$map":I
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v7, Ljava/util/Collection;

    .local v7, "destination$iv$iv":Ljava/util/Collection;
    move-object v8, v5

    .local v8, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 847
    .local v9, "$i$f$mapTo":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 848
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    check-cast v12, Lcom/alicegpt/textfollower/text/Section;

    .local v12, "it":Lcom/alicegpt/textfollower/text/Section;
    const/4 v13, 0x0

    .line 439
    .local v13, "$i$a$-map-MainActivity$showToc$titles$1":I
    invoke-virtual {v12}, Lcom/alicegpt/textfollower/text/Section;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 848
    .end local v12    # "it":Lcom/alicegpt/textfollower/text/Section;
    .end local v13    # "$i$a$-map-MainActivity$showToc$titles$1":I
    invoke-interface {v7, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 849
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    :cond_8
    nop

    .end local v7    # "destination$iv$iv":Ljava/util/Collection;
    .end local v8    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$mapTo":I
    check-cast v7, Ljava/util/List;

    .line 846
    nop

    .end local v5    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$map":I
    check-cast v7, Ljava/util/Collection;

    .line 439
    move-object v5, v7

    .local v5, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    .line 850
    .local v6, "$i$f$toTypedArray":I
    nop

    .line 851
    .local v7, "thisCollection$iv":Ljava/util/Collection;
    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 439
    .end local v5    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v6    # "$i$f$toTypedArray":I
    .end local v7    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v3, [Ljava/lang/String;

    .line 440
    .local v3, "titles":[Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v6, p0

    check-cast v6, Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 441
    sget v6, Lcom/alicegpt/textfollower/R$string;->toc_title:I

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 442
    move-object v6, v3

    check-cast v6, [Ljava/lang/CharSequence;

    new-instance v7, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v1, v0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/alicegpt/textfollower/MainActivity;Ljava/util/List;Lcom/alicegpt/textfollower/text/Doc;)V

    invoke-virtual {v5, v6, v4, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 446
    sget v6, Lcom/alicegpt/textfollower/R$string;->close:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 447
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 448
    return-void
.end method

.method private static final showToc$lambda$26(Lcom/alicegpt/textfollower/MainActivity;Ljava/util/List;Lcom/alicegpt/textfollower/text/Doc;Landroid/content/DialogInterface;I)V
    .locals 3
    .param p0, "this$0"    # Lcom/alicegpt/textfollower/MainActivity;
    .param p1, "$toc"    # Ljava/util/List;
    .param p2, "$d"    # Lcom/alicegpt/textfollower/text/Doc;
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .line 443
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 444
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alicegpt/textfollower/text/Section;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/text/Section;->getFirstWord()I

    move-result v0

    invoke-virtual {p2}, Lcom/alicegpt/textfollower/text/Doc;->getSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->seekTo(I)V

    .line 445
    return-void
.end method

.method private final startListening()V
    .locals 9

    .line 592
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->modelReady:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    const-string v1, "engine"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-interface {v0}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->isRunning()Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->starting:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 596
    :cond_1
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 597
    new-array v1, v5, [Ljava/lang/String;

    aput-object v0, v1, v4

    invoke-virtual {p0, v1, v5}, Lcom/alicegpt/textfollower/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 598
    return-void

    .line 600
    :cond_2
    iput-boolean v5, p0, Lcom/alicegpt/textfollower/MainActivity;->starting:Z

    .line 601
    iput-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->lastError:Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->stopSearching()V

    .line 603
    :cond_3
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/alicegpt/textfollower/MainActivity;->searchSince:J

    .line 604
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->doc:Lcom/alicegpt/textfollower/text/Doc;

    .line 605
    .local v0, "d":Lcom/alicegpt/textfollower/text/Doc;
    iget-object v3, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/alicegpt/textfollower/tracking/TextTracker;->getPosition()I

    move-result v3

    goto :goto_0

    :cond_4
    move v3, v4

    .line 606
    .local v3, "pos":I
    :goto_0
    iget-object v6, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v6, :cond_5

    const-string v6, "settings"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_5
    invoke-virtual {v6}, Lcom/alicegpt/textfollower/Settings;->getUseContext()Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v0, :cond_8

    sget-object v6, Lcom/alicegpt/textfollower/speech/ContextWords;->INSTANCE:Lcom/alicegpt/textfollower/speech/ContextWords;

    iget-object v7, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v7, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_6
    invoke-interface {v7}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->getContextBack()I

    move-result v7

    iget-object v8, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v8, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v2

    :cond_7
    invoke-interface {v8}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->getContextAhead()I

    move-result v8

    invoke-virtual {v6, v0, v3, v7, v8}, Lcom/alicegpt/textfollower/speech/ContextWords;->window(Lcom/alicegpt/textfollower/text/Doc;III)Ljava/util/List;

    move-result-object v6

    goto :goto_1

    :cond_8
    move-object v6, v2

    .line 607
    .local v6, "context":Ljava/util/List;
    :goto_1
    iput v3, p0, Lcom/alicegpt/textfollower/MainActivity;->contextCenter:I

    .line 608
    if-eqz v6, :cond_9

    move v4, v5

    :cond_9
    iput-boolean v4, p0, Lcom/alicegpt/textfollower/MainActivity;->contextActive:Z

    .line 609
    iget-object v4, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v4, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    move-object v2, v4

    :goto_2
    sget-object v1, Lcom/alicegpt/textfollower/MainActivity;->storeFactory:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    invoke-interface {v1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alicegpt/textfollower/speech/ModelStore;

    move-object v4, p0

    check-cast v4, Landroid/content/Context;

    invoke-interface {v1, v4}, Lcom/alicegpt/textfollower/speech/ModelStore;->modelDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-interface {v2, v1, v6}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->start(Ljava/io/File;Ljava/util/List;)V

    .line 610
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 611
    return-void

    .line 593
    .end local v0    # "d":Lcom/alicegpt/textfollower/text/Doc;
    .end local v3    # "pos":I
    .end local v6    # "context":Ljava/util/List;
    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 594
    return-void
.end method

.method private static final storeFactory$lambda$37(Lcom/alicegpt/textfollower/speech/EngineKind;)Lcom/alicegpt/textfollower/speech/ModelStore;
    .locals 1
    .param p0, "it"    # Lcom/alicegpt/textfollower/speech/EngineKind;

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    sget-object v0, Lcom/alicegpt/textfollower/speech/ModelStore;->Companion:Lcom/alicegpt/textfollower/speech/ModelStore$Companion;

    invoke-virtual {v0, p0}, Lcom/alicegpt/textfollower/speech/ModelStore$Companion;->of(Lcom/alicegpt/textfollower/speech/EngineKind;)Lcom/alicegpt/textfollower/speech/ModelStore;

    move-result-object v0

    return-object v0
.end method

.method private final themeRes()I
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v0, :cond_0

    const-string v0, "settings"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/Settings;->getTheme()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 208
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 209
    sget v0, Lcom/alicegpt/textfollower/R$style;->Theme_App_Dark:I

    goto :goto_0

    .line 207
    :pswitch_0
    sget v0, Lcom/alicegpt/textfollower/R$style;->Theme_App_Black:I

    goto :goto_0

    .line 206
    :pswitch_1
    sget v0, Lcom/alicegpt/textfollower/R$style;->Theme_App_Dark:I

    goto :goto_0

    .line 205
    :pswitch_2
    sget v0, Lcom/alicegpt/textfollower/R$style;->Theme_App_Sepia:I

    goto :goto_0

    .line 204
    :pswitch_3
    sget v0, Lcom/alicegpt/textfollower/R$style;->Theme_App_Light:I

    goto :goto_0

    .line 211
    :cond_1
    sget v0, Lcom/alicegpt/textfollower/R$style;->Theme_App_Light:I

    .line 213
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final toggleListening()V
    .locals 2

    .line 574
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->modelReady:Z

    if-nez v0, :cond_1

    .line 575
    iget v0, p0, Lcom/alicegpt/textfollower/MainActivity;->modelProgress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->prepareModel()V

    .line 576
    :cond_0
    return-void

    .line 578
    :cond_1
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    if-eqz v0, :cond_4

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    .line 580
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v0, :cond_2

    const-string v0, "engine"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_2
    invoke-interface {v0}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->stop()V

    .line 581
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/SessionStats;->pause()V

    .line 582
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->tracker:Lcom/alicegpt/textfollower/tracking/TextTracker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TextTracker;->stopSearching()V

    .line 583
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alicegpt/textfollower/MainActivity;->searchSince:J

    .line 584
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    goto :goto_0

    .line 586
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    .line 587
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->startListening()V

    .line 589
    :goto_0
    return-void
.end method

.method private final trackerConfig(Lcom/alicegpt/textfollower/speech/EngineKind;)Lcom/alicegpt/textfollower/tracking/TrackerConfig;
    .locals 1
    .param p1, "kind"    # Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 234
    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->NEURAL:Lcom/alicegpt/textfollower/speech/EngineKind;

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->Companion:Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;->getNEURAL()Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->Companion:Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;->getVOSK()Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private final updateStats()V
    .locals 6

    .line 786
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->statsText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v0, "statsText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget v1, Lcom/alicegpt/textfollower/R$string;->stats_format:I

    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v2}, Lcom/alicegpt/textfollower/SessionStats;->getWordsRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v3}, Lcom/alicegpt/textfollower/SessionStats;->wordsPerMinute()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v4}, Lcom/alicegpt/textfollower/SessionStats;->getActiveMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/alicegpt/textfollower/MainActivity;->formatTime(J)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 479
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 480
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 481
    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 482
    .local v0, "uri":Landroid/net/Uri;
    :cond_1
    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->openFile(Landroid/net/Uri;)V

    .line 483
    return-void

    .line 481
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 480
    :cond_3
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->savePosition(Z)V

    .line 198
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 199
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 157
    sget v0, Lcom/alicegpt/textfollower/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->setContentView(I)V

    .line 158
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->bindViews()V

    .line 159
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->titleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "titleText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lcom/alicegpt/textfollower/MainActivity;->docTitle:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->lastHeard:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 835
    .local v0, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 160
    .local v2, "$i$a$-let-MainActivity$onConfigurationChanged$1":I
    iget-object v3, p0, Lcom/alicegpt/textfollower/MainActivity;->heardText:Landroid/widget/TextView;

    if-nez v3, :cond_1

    const-string v3, "heardText"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    sget v3, Lcom/alicegpt/textfollower/R$string;->heard_format:I

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->heardTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .end local v0    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-MainActivity$onConfigurationChanged$1":I
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/alicegpt/textfollower/MainActivity;->currentSection:I

    .line 162
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alicegpt/textfollower/MainActivity;->renderCursor(ZZ)V

    .line 163
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->updateStats()V

    .line 164
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 165
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 97
    new-instance v0, Lcom/alicegpt/textfollower/Settings;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/Settings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    .line 98
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->themeRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->setTheme(I)V

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget v0, Lcom/alicegpt/textfollower/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->setContentView(I)V

    .line 102
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->bindViews()V

    .line 104
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    const/4 v1, 0x0

    const-string v2, "settings"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/Settings;->getEngine()Lcom/alicegpt/textfollower/speech/EngineKind;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    .line 105
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->createEngine(Lcom/alicegpt/textfollower/speech/EngineKind;)Lcom/alicegpt/textfollower/speech/SpeechEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    .line 107
    invoke-virtual {p0}, Lcom/alicegpt/textfollower/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x80

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    .line 108
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->updateStats()V

    .line 109
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 111
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->prepareModel()V

    .line 112
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/alicegpt/textfollower/Settings;->getCurrentDoc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->loadDoc(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->settings:Lcom/alicegpt/textfollower/Settings;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/alicegpt/textfollower/Settings;->getSeenIntro()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alicegpt/textfollower/ui/Dialogs;->INSTANCE:Lcom/alicegpt/textfollower/ui/Dialogs;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/alicegpt/textfollower/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/alicegpt/textfollower/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alicegpt/textfollower/ui/Dialogs;->showIntro(Landroid/app/Activity;Lkotlin/jvm/functions/Function0;)V

    .line 114
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 191
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v0, :cond_0

    const-string v0, "engine"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->release()V

    .line 192
    return-void
.end method

.method public onEngineFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->starting:Z

    .line 717
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v1}, Lcom/alicegpt/textfollower/SessionStats;->pause()V

    .line 718
    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->engineKind:Lcom/alicegpt/textfollower/speech/EngineKind;

    sget-object v2, Lcom/alicegpt/textfollower/speech/EngineKind;->NEURAL:Lcom/alicegpt/textfollower/speech/EngineKind;

    if-ne v1, v2, :cond_0

    .line 720
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/alicegpt/textfollower/R$string;->engine_fallback:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/alicegpt/textfollower/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 721
    sget-object v0, Lcom/alicegpt/textfollower/speech/EngineKind;->VOSK:Lcom/alicegpt/textfollower/speech/EngineKind;

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->changeEngine(Lcom/alicegpt/textfollower/speech/EngineKind;)V

    goto :goto_0

    .line 723
    :cond_0
    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    .line 724
    iput-object p1, p0, Lcom/alicegpt/textfollower/MainActivity;->lastError:Ljava/lang/String;

    .line 725
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 727
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->starting:Z

    .line 709
    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    .line 710
    iput-object p1, p0, Lcom/alicegpt/textfollower/MainActivity;->lastError:Ljava/lang/String;

    .line 711
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/SessionStats;->pause()V

    .line 712
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 713
    return-void
.end method

.method public onFinal(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alicegpt/textfollower/MainActivity;->handleSpeech(Ljava/lang/String;Z)V

    return-void
.end method

.method public onLevel(F)V
    .locals 1
    .param p1, "level"    # F

    .line 693
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->mic:Lcom/alicegpt/textfollower/ui/MicButton;

    if-nez v0, :cond_0

    const-string v0, "mic"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alicegpt/textfollower/ui/MicButton;->setLevel(F)V

    .line 694
    return-void
.end method

.method public onListeningChanged(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->starting:Z

    .line 698
    if-eqz p1, :cond_0

    .line 699
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/SessionStats;->start()V

    goto :goto_0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/SessionStats;->pause()V

    .line 702
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->mic:Lcom/alicegpt/textfollower/ui/MicButton;

    if-nez v0, :cond_1

    const-string v0, "mic"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alicegpt/textfollower/ui/MicButton;->setLevel(F)V

    .line 704
    :goto_0
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 705
    return-void
.end method

.method public onPartial(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alicegpt/textfollower/MainActivity;->handleSpeech(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 179
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->savePosition(Z)V

    .line 180
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->statsTick:Lcom/alicegpt/textfollower/MainActivity$statsTick$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    const/4 v1, 0x0

    const-string v2, "engine"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 183
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->resumeAfterPause:Z

    .line 184
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->engine:Lcom/alicegpt/textfollower/speech/SpeechEngine;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-interface {v1}, Lcom/alicegpt/textfollower/speech/SpeechEngine;->stop()V

    .line 185
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->stats:Lcom/alicegpt/textfollower/SessionStats;

    invoke-virtual {v0}, Lcom/alicegpt/textfollower/SessionStats;->pause()V

    .line 187
    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 614
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 615
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 616
    :cond_0
    invoke-static {p3}, Lkotlin/collections/ArraysKt;->firstOrNull([I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 617
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->startListening()V

    goto :goto_1

    .line 619
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->wantListening:Z

    .line 620
    sget v0, Lcom/alicegpt/textfollower/R$string;->permission_needed:I

    invoke-virtual {p0, v0}, Lcom/alicegpt/textfollower/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->lastError:Ljava/lang/String;

    .line 621
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->refreshStatus()V

    .line 623
    :cond_3
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->statsTick:Lcom/alicegpt/textfollower/MainActivity$statsTick$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    iget-object v0, p0, Lcom/alicegpt/textfollower/MainActivity;->ui:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alicegpt/textfollower/MainActivity;->statsTick:Lcom/alicegpt/textfollower/MainActivity$statsTick$1;

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    iget-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->resumeAfterPause:Z

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alicegpt/textfollower/MainActivity;->resumeAfterPause:Z

    .line 173
    invoke-direct {p0}, Lcom/alicegpt/textfollower/MainActivity;->startListening()V

    .line 175
    :cond_0
    return-void
.end method
