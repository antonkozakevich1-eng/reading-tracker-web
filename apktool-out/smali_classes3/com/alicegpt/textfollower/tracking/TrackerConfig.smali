.class public final Lcom/alicegpt/textfollower/tracking/TrackerConfig;
.super Ljava/lang/Object;
.source "TextTracker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0013\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008Z\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 o2\u00020\u0001:\u0001oB\u00bd\u0002\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\u0003\u00a2\u0006\u0004\u0008$\u0010%J\u0006\u0010H\u001a\u00020\u0000J\t\u0010I\u001a\u00020\u0003H\u00c6\u0003J\t\u0010J\u001a\u00020\u0005H\u00c6\u0003J\t\u0010K\u001a\u00020\u0003H\u00c6\u0003J\t\u0010L\u001a\u00020\u0003H\u00c6\u0003J\t\u0010M\u001a\u00020\u0003H\u00c6\u0003J\t\u0010N\u001a\u00020\u0003H\u00c6\u0003J\t\u0010O\u001a\u00020\u0003H\u00c6\u0003J\t\u0010P\u001a\u00020\u0003H\u00c6\u0003J\t\u0010Q\u001a\u00020\u0003H\u00c6\u0003J\t\u0010R\u001a\u00020\u0003H\u00c6\u0003J\t\u0010S\u001a\u00020\u000fH\u00c6\u0003J\t\u0010T\u001a\u00020\u000fH\u00c6\u0003J\t\u0010U\u001a\u00020\u0003H\u00c6\u0003J\t\u0010V\u001a\u00020\u000fH\u00c6\u0003J\t\u0010W\u001a\u00020\u000fH\u00c6\u0003J\t\u0010X\u001a\u00020\u000fH\u00c6\u0003J\t\u0010Y\u001a\u00020\u000fH\u00c6\u0003J\t\u0010Z\u001a\u00020\u000fH\u00c6\u0003J\t\u0010[\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\\\u001a\u00020\u0003H\u00c6\u0003J\t\u0010]\u001a\u00020\u0003H\u00c6\u0003J\t\u0010^\u001a\u00020\u000fH\u00c6\u0003J\t\u0010_\u001a\u00020\u000fH\u00c6\u0003J\t\u0010`\u001a\u00020\u000fH\u00c6\u0003J\t\u0010a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010b\u001a\u00020\u000fH\u00c6\u0003J\t\u0010c\u001a\u00020\u000fH\u00c6\u0003J\t\u0010d\u001a\u00020\u000fH\u00c6\u0003J\t\u0010e\u001a\u00020\u000fH\u00c6\u0003J\t\u0010f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010g\u001a\u00020\u0003H\u00c6\u0003J\u00bf\u0002\u0010h\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u000f2\u0008\u0008\u0002\u0010 \u001a\u00020\u000f2\u0008\u0008\u0002\u0010!\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\"\u001a\u00020\u00032\u0008\u0008\u0002\u0010#\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010i\u001a\u00020j2\u0008\u0010k\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010l\u001a\u00020\u000fH\u00d6\u0001J\t\u0010m\u001a\u00020nH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\'R\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\'R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008,\u0010\'R\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010\'R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\'R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008/\u0010\'R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\'R\u0011\u0010\r\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010\'R\u0011\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0011\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00103R\u0011\u0010\u0011\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u0010\'R\u0011\u0010\u0012\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00103R\u0011\u0010\u0013\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00103R\u0011\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00103R\u0011\u0010\u0015\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u00103R\u0011\u0010\u0016\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u00103R\u0011\u0010\u0017\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010\'R\u0011\u0010\u0018\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010\'R\u0011\u0010\u0019\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010\'R\u0011\u0010\u001a\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u00103R\u0011\u0010\u001b\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u00103R\u0011\u0010\u001c\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u00103R\u0011\u0010\u001d\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u0010\'R\u0011\u0010\u001e\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u00103R\u0011\u0010\u001f\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u00103R\u0011\u0010 \u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u00103R\u0011\u0010!\u001a\u00020\u000f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u00103R\u0011\u0010\"\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u0010\'R\u0011\u0010#\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010\'\u00a8\u0006p"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/tracking/TrackerConfig;",
        "",
        "rho",
        "",
        "advance",
        "",
        "pStop",
        "pStart",
        "pBack",
        "pSkip",
        "pReread",
        "pJump",
        "backgroundFloor",
        "prune",
        "beam",
        "",
        "wideCap",
        "seekOn",
        "needNear",
        "needMid",
        "needFar",
        "needJump",
        "needHuge",
        "tauMove",
        "tauMid",
        "tauFar",
        "jitter",
        "farAfter",
        "hugeAfter",
        "lockThreshold",
        "lostWords",
        "searchNeedFar",
        "searchNeedJump",
        "searchNeedHuge",
        "searchTauFar",
        "searchJump",
        "<init>",
        "(D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDD)V",
        "getRho",
        "()D",
        "getAdvance",
        "()[D",
        "getPStop",
        "getPStart",
        "getPBack",
        "getPSkip",
        "getPReread",
        "getPJump",
        "getBackgroundFloor",
        "getPrune",
        "getBeam",
        "()I",
        "getWideCap",
        "getSeekOn",
        "getNeedNear",
        "getNeedMid",
        "getNeedFar",
        "getNeedJump",
        "getNeedHuge",
        "getTauMove",
        "getTauMid",
        "getTauFar",
        "getJitter",
        "getFarAfter",
        "getHugeAfter",
        "getLockThreshold",
        "getLostWords",
        "getSearchNeedFar",
        "getSearchNeedJump",
        "getSearchNeedHuge",
        "getSearchTauFar",
        "getSearchJump",
        "searching",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component30",
        "component31",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field public static final Companion:Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;

.field private static final NEURAL:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

.field private static final VOSK:Lcom/alicegpt/textfollower/tracking/TrackerConfig;


# instance fields
.field private final advance:[D

.field private final backgroundFloor:D

.field private final beam:I

.field private final farAfter:I

.field private final hugeAfter:I

.field private final jitter:I

.field private final lockThreshold:D

.field private final lostWords:I

.field private final needFar:I

.field private final needHuge:I

.field private final needJump:I

.field private final needMid:I

.field private final needNear:I

.field private final pBack:D

.field private final pJump:D

.field private final pReread:D

.field private final pSkip:D

.field private final pStart:D

.field private final pStop:D

.field private final prune:D

.field private final rho:D

.field private final searchJump:D

.field private final searchNeedFar:I

.field private final searchNeedHuge:I

.field private final searchNeedJump:I

.field private final searchTauFar:D

.field private final seekOn:D

.field private final tauFar:D

.field private final tauMid:D

.field private final tauMove:D

.field private final wideCap:I


# direct methods
.method static constructor <clinit>()V
    .locals 102

    new-instance v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->Companion:Lcom/alicegpt/textfollower/tracking/TrackerConfig$Companion;

    .line 76
    new-instance v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    move-object v2, v0

    const v50, 0x7fffffff

    const/16 v51, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const-wide/16 v48, 0x0

    invoke-direct/range {v2 .. v51}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;-><init>(D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->NEURAL:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    .line 82
    new-instance v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    move-object/from16 v52, v0

    const v100, 0x7ffdde7f

    const/16 v101, 0x0

    const-wide/16 v53, 0x0

    const/16 v55, 0x0

    const-wide/16 v56, 0x0

    const-wide/16 v58, 0x0

    const-wide/16 v60, 0x0

    const-wide/16 v62, 0x0

    const-wide/16 v64, 0x0

    const-wide v66, 0x3ee4f8b588e368f1L    # 1.0E-5

    const-wide v68, 0x3f689374bc6a7efaL    # 0.003

    const-wide/16 v70, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x3

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x8

    const-wide/16 v81, 0x0

    const-wide/16 v83, 0x0

    const-wide/16 v85, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const-wide/16 v90, 0x0

    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    const-wide/16 v96, 0x0

    const-wide/16 v98, 0x0

    invoke-direct/range {v52 .. v101}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;-><init>(D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->VOSK:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 50

    move-object/from16 v0, p0

    const v48, 0x7fffffff

    const/16 v49, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    invoke-direct/range {v0 .. v49}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;-><init>(D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDD)V
    .locals 16
    .param p1, "rho"    # D
    .param p3, "advance"    # [D
    .param p4, "pStop"    # D
    .param p6, "pStart"    # D
    .param p8, "pBack"    # D
    .param p10, "pSkip"    # D
    .param p12, "pReread"    # D
    .param p14, "pJump"    # D
    .param p16, "backgroundFloor"    # D
    .param p18, "prune"    # D
    .param p20, "beam"    # I
    .param p21, "wideCap"    # I
    .param p22, "seekOn"    # D
    .param p24, "needNear"    # I
    .param p25, "needMid"    # I
    .param p26, "needFar"    # I
    .param p27, "needJump"    # I
    .param p28, "needHuge"    # I
    .param p29, "tauMove"    # D
    .param p31, "tauMid"    # D
    .param p33, "tauFar"    # D
    .param p35, "jitter"    # I
    .param p36, "farAfter"    # I
    .param p37, "hugeAfter"    # I
    .param p38, "lockThreshold"    # D
    .param p40, "lostWords"    # I
    .param p41, "searchNeedFar"    # I
    .param p42, "searchNeedJump"    # I
    .param p43, "searchNeedHuge"    # I
    .param p44, "searchTauFar"    # D
    .param p46, "searchJump"    # D

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "advance"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    move-wide/from16 v2, p1

    iput-wide v2, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->rho:D

    .line 14
    iput-object v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->advance:[D

    .line 16
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStop:D

    .line 18
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStart:D

    .line 20
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pBack:D

    .line 22
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pSkip:D

    .line 24
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pReread:D

    .line 26
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pJump:D

    .line 28
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->backgroundFloor:D

    .line 30
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->prune:D

    .line 31
    move/from16 v3, p20

    iput v3, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->beam:I

    .line 33
    move/from16 v1, p21

    iput v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->wideCap:I

    .line 35
    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->seekOn:D

    .line 39
    move/from16 v1, p24

    iput v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needNear:I

    .line 40
    move/from16 v2, p25

    iput v2, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needMid:I

    .line 41
    move/from16 v1, p26

    iput v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needFar:I

    .line 42
    move/from16 v1, p27

    iput v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needJump:I

    .line 43
    move/from16 v1, p28

    iput v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needHuge:I

    .line 44
    move-wide/from16 v1, p29

    iput-wide v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMove:D

    .line 45
    move-wide/from16 v1, p31

    iput-wide v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMid:D

    .line 46
    move-wide/from16 v1, p33

    iput-wide v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauFar:D

    .line 48
    move/from16 v1, p35

    iput v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->jitter:I

    .line 50
    move/from16 v2, p36

    iput v2, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->farAfter:I

    .line 51
    move/from16 v1, p37

    iput v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->hugeAfter:I

    .line 55
    move-wide/from16 v1, p38

    iput-wide v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lockThreshold:D

    .line 57
    move/from16 v1, p40

    iput v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lostWords:I

    .line 58
    move/from16 v2, p41

    iput v2, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedFar:I

    .line 59
    move/from16 v1, p42

    iput v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedJump:I

    .line 60
    move/from16 v1, p43

    iput v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedHuge:I

    .line 61
    move-wide/from16 v1, p44

    iput-wide v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchTauFar:D

    .line 62
    move-wide/from16 v1, p46

    iput-wide v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchJump:D

    .line 10
    return-void
.end method

.method public synthetic constructor <init>(D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDDILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 48

    .line 10
    move/from16 v0, p48

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 12
    const-wide v1, 0x3fe3333333333333L    # 0.6

    goto :goto_0

    .line 10
    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    const-wide v4, 0x3fe999999999999aL    # 0.8

    const-wide/16 v6, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eqz v3, :cond_1

    .line 14
    new-array v3, v9, [D

    const/4 v11, 0x0

    aput-wide v6, v3, v11

    const/4 v11, 0x1

    aput-wide v4, v3, v11

    const-wide v11, 0x3fb999999999999aL    # 0.1

    aput-wide v11, v3, v10

    const-wide v11, 0x3f9eb851eb851eb8L    # 0.03

    aput-wide v11, v3, v8

    goto :goto_1

    .line 10
    :cond_1
    move-object/from16 v3, p3

    :goto_1
    and-int/lit8 v11, v0, 0x4

    if-eqz v11, :cond_2

    .line 16
    const-wide v11, 0x3fa47ae147ae147bL    # 0.04

    goto :goto_2

    .line 10
    :cond_2
    move-wide/from16 v11, p4

    :goto_2
    and-int/lit8 v13, v0, 0x8

    const-wide v14, 0x3fa999999999999aL    # 0.05

    if-eqz v13, :cond_3

    .line 18
    move-wide/from16 v16, v14

    goto :goto_3

    .line 10
    :cond_3
    move-wide/from16 v16, p6

    :goto_3
    and-int/lit8 v13, v0, 0x10

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    if-eqz v13, :cond_4

    .line 20
    move-wide/from16 v20, v18

    goto :goto_4

    .line 10
    :cond_4
    move-wide/from16 v20, p8

    :goto_4
    and-int/lit8 v13, v0, 0x20

    if-eqz v13, :cond_5

    .line 22
    goto :goto_5

    .line 10
    :cond_5
    move-wide/from16 v18, p10

    :goto_5
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_6

    .line 24
    goto :goto_6

    .line 10
    :cond_6
    move-wide/from16 v14, p12

    :goto_6
    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_7

    .line 26
    const-wide v22, 0x3f33a92a30553261L    # 3.0E-4

    goto :goto_7

    .line 10
    :cond_7
    move-wide/from16 v22, p14

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    .line 28
    goto :goto_8

    .line 10
    :cond_8
    move-wide/from16 v6, p16

    :goto_8
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_9

    .line 30
    const-wide v24, 0x3e7ad7f29abcaf48L    # 1.0E-7

    goto :goto_9

    .line 10
    :cond_9
    move-wide/from16 v24, p18

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    .line 31
    const/16 v13, 0x96

    goto :goto_a

    .line 10
    :cond_a
    move/from16 v13, p20

    :goto_a
    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_b

    .line 33
    const/16 v4, 0x258

    goto :goto_b

    .line 10
    :cond_b
    move/from16 v4, p21

    :goto_b
    and-int/lit16 v5, v0, 0x1000

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    if-eqz v5, :cond_c

    .line 35
    move-wide/from16 v28, v26

    goto :goto_c

    .line 10
    :cond_c
    move-wide/from16 v28, p22

    :goto_c
    and-int/lit16 v5, v0, 0x2000

    if-eqz v5, :cond_d

    .line 39
    move v5, v10

    goto :goto_d

    .line 10
    :cond_d
    move/from16 v5, p24

    :goto_d
    and-int/lit16 v8, v0, 0x4000

    if-eqz v8, :cond_e

    .line 40
    move v8, v10

    goto :goto_e

    .line 10
    :cond_e
    move/from16 v8, p25

    :goto_e
    const v30, 0x8000

    and-int v30, v0, v30

    if-eqz v30, :cond_f

    .line 41
    const/16 v30, 0x3

    goto :goto_f

    .line 10
    :cond_f
    move/from16 v30, p26

    :goto_f
    const/high16 v31, 0x10000

    and-int v31, v0, v31

    if-eqz v31, :cond_10

    .line 42
    move/from16 v31, v9

    goto :goto_10

    .line 10
    :cond_10
    move/from16 v31, p27

    :goto_10
    const/high16 v32, 0x20000

    and-int v32, v0, v32

    if-eqz v32, :cond_11

    .line 43
    const/16 v32, 0x6

    goto :goto_11

    .line 10
    :cond_11
    move/from16 v32, p28

    :goto_11
    const/high16 v33, 0x40000

    and-int v33, v0, v33

    if-eqz v33, :cond_12

    .line 44
    goto :goto_12

    .line 10
    :cond_12
    move-wide/from16 v26, p29

    :goto_12
    const/high16 v33, 0x80000

    and-int v33, v0, v33

    if-eqz v33, :cond_13

    .line 45
    const-wide v33, 0x3fe999999999999aL    # 0.8

    goto :goto_13

    .line 10
    :cond_13
    move-wide/from16 v33, p31

    :goto_13
    const/high16 v35, 0x100000

    and-int v35, v0, v35

    const-wide v36, 0x3fef0a3d70a3d70aL    # 0.97

    if-eqz v35, :cond_14

    .line 46
    move-wide/from16 v38, v36

    goto :goto_14

    .line 10
    :cond_14
    move-wide/from16 v38, p33

    :goto_14
    const/high16 v35, 0x200000

    and-int v35, v0, v35

    if-eqz v35, :cond_15

    .line 48
    goto :goto_15

    .line 10
    :cond_15
    move/from16 v10, p35

    :goto_15
    const/high16 v35, 0x400000

    and-int v35, v0, v35

    if-eqz v35, :cond_16

    .line 50
    const/16 v35, 0x3c

    goto :goto_16

    .line 10
    :cond_16
    move/from16 v35, p36

    :goto_16
    const/high16 v40, 0x800000

    and-int v40, v0, v40

    if-eqz v40, :cond_17

    .line 51
    const/16 v40, 0xc8

    goto :goto_17

    .line 10
    :cond_17
    move/from16 v40, p37

    :goto_17
    const/high16 v41, 0x1000000

    and-int v41, v0, v41

    if-eqz v41, :cond_18

    .line 55
    const-wide/high16 v41, 0x3fd0000000000000L    # 0.25

    goto :goto_18

    .line 10
    :cond_18
    move-wide/from16 v41, p38

    :goto_18
    const/high16 v43, 0x2000000

    and-int v43, v0, v43

    if-eqz v43, :cond_19

    .line 57
    move/from16 v43, v9

    goto :goto_19

    .line 10
    :cond_19
    move/from16 v43, p40

    :goto_19
    const/high16 v44, 0x4000000

    and-int v44, v0, v44

    if-eqz v44, :cond_1a

    .line 58
    const/16 v44, 0x3

    goto :goto_1a

    .line 10
    :cond_1a
    move/from16 v44, p41

    :goto_1a
    const/high16 v45, 0x8000000

    and-int v45, v0, v45

    if-eqz v45, :cond_1b

    .line 59
    const/16 v45, 0x3

    goto :goto_1b

    .line 10
    :cond_1b
    move/from16 v45, p42

    :goto_1b
    const/high16 v46, 0x10000000

    and-int v46, v0, v46

    if-eqz v46, :cond_1c

    .line 60
    goto :goto_1c

    .line 10
    :cond_1c
    move/from16 v9, p43

    :goto_1c
    const/high16 v46, 0x20000000

    and-int v46, v0, v46

    if-eqz v46, :cond_1d

    .line 61
    goto :goto_1d

    .line 10
    :cond_1d
    move-wide/from16 v36, p44

    :goto_1d
    const/high16 v46, 0x40000000    # 2.0f

    and-int v0, v0, v46

    if-eqz v0, :cond_1e

    .line 62
    const-wide v46, 0x3f689374bc6a7efaL    # 0.003

    goto :goto_1e

    .line 10
    :cond_1e
    move-wide/from16 v46, p46

    :goto_1e
    move-object/from16 p1, p0

    move-wide/from16 p2, v1

    move-object/from16 p4, v3

    move-wide/from16 p5, v11

    move-wide/from16 p7, v16

    move-wide/from16 p9, v20

    move-wide/from16 p11, v18

    move-wide/from16 p13, v14

    move-wide/from16 p15, v22

    move-wide/from16 p17, v6

    move-wide/from16 p19, v24

    move/from16 p21, v13

    move/from16 p22, v4

    move-wide/from16 p23, v28

    move/from16 p25, v5

    move/from16 p26, v8

    move/from16 p27, v30

    move/from16 p28, v31

    move/from16 p29, v32

    move-wide/from16 p30, v26

    move-wide/from16 p32, v33

    move-wide/from16 p34, v38

    move/from16 p36, v10

    move/from16 p37, v35

    move/from16 p38, v40

    move-wide/from16 p39, v41

    move/from16 p41, v43

    move/from16 p42, v44

    move/from16 p43, v45

    move/from16 p44, v9

    move-wide/from16 p45, v36

    move-wide/from16 p47, v46

    invoke-direct/range {p1 .. p48}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;-><init>(D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDD)V

    .line 63
    return-void
.end method

.method public static final synthetic access$getNEURAL$cp()Lcom/alicegpt/textfollower/tracking/TrackerConfig;
    .locals 1

    .line 9
    sget-object v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->NEURAL:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    return-object v0
.end method

.method public static final synthetic access$getVOSK$cp()Lcom/alicegpt/textfollower/tracking/TrackerConfig;
    .locals 1

    .line 9
    sget-object v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->VOSK:Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/alicegpt/textfollower/tracking/TrackerConfig;D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDDILjava/lang/Object;)Lcom/alicegpt/textfollower/tracking/TrackerConfig;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p48

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->rho:D

    goto :goto_0

    :cond_0
    move-wide/from16 v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->advance:[D

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStop:D

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStart:D

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p6

    :goto_3
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_4

    iget-wide v9, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pBack:D

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p8

    :goto_4
    and-int/lit8 v11, v1, 0x20

    if-eqz v11, :cond_5

    iget-wide v11, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pSkip:D

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p10

    :goto_5
    and-int/lit8 v13, v1, 0x40

    if-eqz v13, :cond_6

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pReread:D

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p12

    :goto_6
    and-int/lit16 v15, v1, 0x80

    move-wide/from16 p12, v13

    if-eqz v15, :cond_7

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pJump:D

    goto :goto_7

    :cond_7
    move-wide/from16 v13, p14

    :goto_7
    and-int/lit16 v15, v1, 0x100

    move-wide/from16 p14, v13

    if-eqz v15, :cond_8

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->backgroundFloor:D

    goto :goto_8

    :cond_8
    move-wide/from16 v13, p16

    :goto_8
    and-int/lit16 v15, v1, 0x200

    move-wide/from16 p16, v13

    if-eqz v15, :cond_9

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->prune:D

    goto :goto_9

    :cond_9
    move-wide/from16 v13, p18

    :goto_9
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_a

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->beam:I

    goto :goto_a

    :cond_a
    move/from16 v15, p20

    :goto_a
    move/from16 p20, v15

    and-int/lit16 v15, v1, 0x800

    if-eqz v15, :cond_b

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->wideCap:I

    goto :goto_b

    :cond_b
    move/from16 v15, p21

    :goto_b
    move/from16 p21, v15

    and-int/lit16 v15, v1, 0x1000

    move-wide/from16 p18, v13

    if-eqz v15, :cond_c

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->seekOn:D

    goto :goto_c

    :cond_c
    move-wide/from16 v13, p22

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needNear:I

    goto :goto_d

    :cond_d
    move/from16 v15, p24

    :goto_d
    move/from16 p24, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needMid:I

    goto :goto_e

    :cond_e
    move/from16 v15, p25

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p25, v15

    if-eqz v16, :cond_f

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needFar:I

    goto :goto_f

    :cond_f
    move/from16 v15, p26

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p26, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needJump:I

    goto :goto_10

    :cond_10
    move/from16 v15, p27

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p27, v15

    if-eqz v16, :cond_11

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needHuge:I

    goto :goto_11

    :cond_11
    move/from16 v15, p28

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-wide/from16 p22, v13

    if-eqz v16, :cond_12

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMove:D

    goto :goto_12

    :cond_12
    move-wide/from16 v13, p29

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-wide/from16 p29, v13

    if-eqz v16, :cond_13

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMid:D

    goto :goto_13

    :cond_13
    move-wide/from16 v13, p31

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-wide/from16 p31, v13

    if-eqz v16, :cond_14

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauFar:D

    goto :goto_14

    :cond_14
    move-wide/from16 v13, p33

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-wide/from16 p33, v13

    if-eqz v16, :cond_15

    iget v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->jitter:I

    goto :goto_15

    :cond_15
    move/from16 v13, p35

    :goto_15
    const/high16 v14, 0x400000

    and-int/2addr v14, v1

    if-eqz v14, :cond_16

    iget v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->farAfter:I

    goto :goto_16

    :cond_16
    move/from16 v14, p36

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move/from16 p36, v14

    if-eqz v16, :cond_17

    iget v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->hugeAfter:I

    goto :goto_17

    :cond_17
    move/from16 v14, p37

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move/from16 p35, v13

    move/from16 p37, v14

    if-eqz v16, :cond_18

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lockThreshold:D

    goto :goto_18

    :cond_18
    move-wide/from16 v13, p38

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-wide/from16 p38, v13

    if-eqz v16, :cond_19

    iget v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lostWords:I

    goto :goto_19

    :cond_19
    move/from16 v13, p40

    :goto_19
    const/high16 v14, 0x4000000

    and-int/2addr v14, v1

    if-eqz v14, :cond_1a

    iget v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedFar:I

    goto :goto_1a

    :cond_1a
    move/from16 v14, p41

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move/from16 p41, v14

    if-eqz v16, :cond_1b

    iget v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedJump:I

    goto :goto_1b

    :cond_1b
    move/from16 v14, p42

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move/from16 p42, v14

    if-eqz v16, :cond_1c

    iget v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedHuge:I

    goto :goto_1c

    :cond_1c
    move/from16 v14, p43

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move/from16 p40, v13

    move/from16 p43, v14

    if-eqz v16, :cond_1d

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchTauFar:D

    goto :goto_1d

    :cond_1d
    move-wide/from16 v13, p44

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v1, v1, v16

    move-wide/from16 p44, v13

    if-eqz v1, :cond_1e

    iget-wide v13, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchJump:D

    goto :goto_1e

    :cond_1e
    move-wide/from16 v13, p46

    :goto_1e
    move-wide/from16 p1, v2

    move-object/from16 p3, v4

    move-wide/from16 p4, v5

    move-wide/from16 p6, v7

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    move/from16 p28, v15

    move-wide/from16 p46, v13

    invoke-virtual/range {p0 .. p47}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->copy(D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDD)Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->rho:D

    return-wide v0
.end method

.method public final component10()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->prune:D

    return-wide v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->beam:I

    return v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->wideCap:I

    return v0
.end method

.method public final component13()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->seekOn:D

    return-wide v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needNear:I

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needMid:I

    return v0
.end method

.method public final component16()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needFar:I

    return v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needJump:I

    return v0
.end method

.method public final component18()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needHuge:I

    return v0
.end method

.method public final component19()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMove:D

    return-wide v0
.end method

.method public final component2()[D
    .locals 1

    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->advance:[D

    return-object v0
.end method

.method public final component20()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMid:D

    return-wide v0
.end method

.method public final component21()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauFar:D

    return-wide v0
.end method

.method public final component22()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->jitter:I

    return v0
.end method

.method public final component23()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->farAfter:I

    return v0
.end method

.method public final component24()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->hugeAfter:I

    return v0
.end method

.method public final component25()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lockThreshold:D

    return-wide v0
.end method

.method public final component26()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lostWords:I

    return v0
.end method

.method public final component27()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedFar:I

    return v0
.end method

.method public final component28()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedJump:I

    return v0
.end method

.method public final component29()I
    .locals 1

    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedHuge:I

    return v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStop:D

    return-wide v0
.end method

.method public final component30()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchTauFar:D

    return-wide v0
.end method

.method public final component31()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchJump:D

    return-wide v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStart:D

    return-wide v0
.end method

.method public final component5()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pBack:D

    return-wide v0
.end method

.method public final component6()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pSkip:D

    return-wide v0
.end method

.method public final component7()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pReread:D

    return-wide v0
.end method

.method public final component8()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pJump:D

    return-wide v0
.end method

.method public final component9()D
    .locals 2

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->backgroundFloor:D

    return-wide v0
.end method

.method public final copy(D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDD)Lcom/alicegpt/textfollower/tracking/TrackerConfig;
    .locals 51

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move-wide/from16 v16, p16

    move-wide/from16 v18, p18

    move/from16 v20, p20

    move/from16 v21, p21

    move-wide/from16 v22, p22

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move-wide/from16 v29, p29

    move-wide/from16 v31, p31

    move-wide/from16 v33, p33

    move/from16 v35, p35

    move/from16 v36, p36

    move/from16 v37, p37

    move-wide/from16 v38, p38

    move/from16 v40, p40

    move/from16 v41, p41

    move/from16 v42, p42

    move/from16 v43, p43

    move-wide/from16 v44, p44

    move-wide/from16 v46, p46

    const-string v0, "advance"

    move-wide/from16 v48, v1

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v50, Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    move-object/from16 v0, v50

    move-wide/from16 v1, v48

    invoke-direct/range {v0 .. v47}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;-><init>(D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDD)V

    return-object v50
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->rho:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->rho:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->advance:[D

    iget-object v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->advance:[D

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStop:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStop:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStart:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStart:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pBack:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pBack:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pSkip:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pSkip:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pReread:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pReread:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pJump:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pJump:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->backgroundFloor:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->backgroundFloor:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->prune:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->prune:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_b

    return v2

    :cond_b
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->beam:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->beam:I

    if-eq v3, v4, :cond_c

    return v2

    :cond_c
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->wideCap:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->wideCap:I

    if-eq v3, v4, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->seekOn:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->seekOn:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_e

    return v2

    :cond_e
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needNear:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needNear:I

    if-eq v3, v4, :cond_f

    return v2

    :cond_f
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needMid:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needMid:I

    if-eq v3, v4, :cond_10

    return v2

    :cond_10
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needFar:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needFar:I

    if-eq v3, v4, :cond_11

    return v2

    :cond_11
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needJump:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needJump:I

    if-eq v3, v4, :cond_12

    return v2

    :cond_12
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needHuge:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needHuge:I

    if-eq v3, v4, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMove:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMove:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_14

    return v2

    :cond_14
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMid:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMid:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauFar:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauFar:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_16

    return v2

    :cond_16
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->jitter:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->jitter:I

    if-eq v3, v4, :cond_17

    return v2

    :cond_17
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->farAfter:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->farAfter:I

    if-eq v3, v4, :cond_18

    return v2

    :cond_18
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->hugeAfter:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->hugeAfter:I

    if-eq v3, v4, :cond_19

    return v2

    :cond_19
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lockThreshold:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lockThreshold:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_1a

    return v2

    :cond_1a
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lostWords:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lostWords:I

    if-eq v3, v4, :cond_1b

    return v2

    :cond_1b
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedFar:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedFar:I

    if-eq v3, v4, :cond_1c

    return v2

    :cond_1c
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedJump:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedJump:I

    if-eq v3, v4, :cond_1d

    return v2

    :cond_1d
    iget v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedHuge:I

    iget v4, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedHuge:I

    if-eq v3, v4, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchTauFar:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchTauFar:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v3

    if-eqz v3, :cond_1f

    return v2

    :cond_1f
    iget-wide v3, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchJump:D

    iget-wide v5, v1, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchJump:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final getAdvance()[D
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->advance:[D

    return-object v0
.end method

.method public final getBackgroundFloor()D
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->backgroundFloor:D

    return-wide v0
.end method

.method public final getBeam()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->beam:I

    return v0
.end method

.method public final getFarAfter()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->farAfter:I

    return v0
.end method

.method public final getHugeAfter()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->hugeAfter:I

    return v0
.end method

.method public final getJitter()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->jitter:I

    return v0
.end method

.method public final getLockThreshold()D
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lockThreshold:D

    return-wide v0
.end method

.method public final getLostWords()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lostWords:I

    return v0
.end method

.method public final getNeedFar()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needFar:I

    return v0
.end method

.method public final getNeedHuge()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needHuge:I

    return v0
.end method

.method public final getNeedJump()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needJump:I

    return v0
.end method

.method public final getNeedMid()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needMid:I

    return v0
.end method

.method public final getNeedNear()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needNear:I

    return v0
.end method

.method public final getPBack()D
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pBack:D

    return-wide v0
.end method

.method public final getPJump()D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pJump:D

    return-wide v0
.end method

.method public final getPReread()D
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pReread:D

    return-wide v0
.end method

.method public final getPSkip()D
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pSkip:D

    return-wide v0
.end method

.method public final getPStart()D
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStart:D

    return-wide v0
.end method

.method public final getPStop()D
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStop:D

    return-wide v0
.end method

.method public final getPrune()D
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->prune:D

    return-wide v0
.end method

.method public final getRho()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->rho:D

    return-wide v0
.end method

.method public final getSearchJump()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchJump:D

    return-wide v0
.end method

.method public final getSearchNeedFar()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedFar:I

    return v0
.end method

.method public final getSearchNeedHuge()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedHuge:I

    return v0
.end method

.method public final getSearchNeedJump()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedJump:I

    return v0
.end method

.method public final getSearchTauFar()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchTauFar:D

    return-wide v0
.end method

.method public final getSeekOn()D
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->seekOn:D

    return-wide v0
.end method

.method public final getTauFar()D
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauFar:D

    return-wide v0
.end method

.method public final getTauMid()D
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMid:D

    return-wide v0
.end method

.method public final getTauMove()D
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMove:D

    return-wide v0
.end method

.method public final getWideCap()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->wideCap:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->rho:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->advance:[D

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStop:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStart:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pBack:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pSkip:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pReread:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pJump:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->backgroundFloor:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->prune:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->beam:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->wideCap:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->seekOn:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needNear:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needMid:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needFar:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needJump:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needHuge:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMove:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMid:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauFar:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->jitter:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->farAfter:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->hugeAfter:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lockThreshold:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lostWords:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedFar:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedJump:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedHuge:I

    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchTauFar:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchJump:D

    invoke-static {v2, v3}, Ljava/lang/Double;->hashCode(D)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final searching()Lcom/alicegpt/textfollower/tracking/TrackerConfig;
    .locals 50

    move-object/from16 v12, p0

    move-object/from16 v0, p0

    .line 70
    iget v1, v12, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needFar:I

    iget v2, v12, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedFar:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v26

    iget v1, v12, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needJump:I

    iget v2, v12, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedJump:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v27

    .line 71
    iget v1, v12, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needHuge:I

    iget v2, v12, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedHuge:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v28

    iget-wide v1, v12, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauFar:D

    iget-wide v3, v12, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchTauFar:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v33

    iget-wide v1, v12, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pJump:D

    iget-wide v3, v12, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchJump:D

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 69
    nop

    .line 71
    nop

    .line 69
    nop

    .line 70
    nop

    .line 71
    nop

    .line 69
    nop

    .line 71
    nop

    .line 69
    const v48, 0x7fec7f7f

    const/16 v49, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v12, v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    invoke-static/range {v0 .. v49}, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->copy$default(Lcom/alicegpt/textfollower/tracking/TrackerConfig;D[DDDDDDDDDIIDIIIIIDDDIIIDIIIIDDILjava/lang/Object;)Lcom/alicegpt/textfollower/tracking/TrackerConfig;

    move-result-object v0

    .line 72
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 50

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->rho:D

    iget-object v3, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->advance:[D

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStop:D

    iget-wide v6, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pStart:D

    iget-wide v8, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pBack:D

    iget-wide v10, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pSkip:D

    iget-wide v12, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pReread:D

    iget-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->pJump:D

    move-wide/from16 v16, v14

    iget-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->backgroundFloor:D

    move-wide/from16 v18, v14

    iget-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->prune:D

    move-wide/from16 v20, v14

    iget v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->beam:I

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->wideCap:I

    move/from16 v22, v14

    move/from16 v23, v15

    iget-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->seekOn:D

    move-wide/from16 v24, v14

    iget v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needNear:I

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needMid:I

    move/from16 v26, v15

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needFar:I

    move/from16 v27, v15

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needJump:I

    move/from16 v28, v15

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->needHuge:I

    move/from16 v29, v14

    move/from16 v30, v15

    iget-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMove:D

    move-wide/from16 v31, v14

    iget-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauMid:D

    move-wide/from16 v33, v14

    iget-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->tauFar:D

    move-wide/from16 v35, v14

    iget v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->jitter:I

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->farAfter:I

    move/from16 v37, v15

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->hugeAfter:I

    move/from16 v38, v14

    move/from16 v39, v15

    iget-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lockThreshold:D

    move-wide/from16 v40, v14

    iget v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->lostWords:I

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedFar:I

    move/from16 v42, v15

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedJump:I

    move/from16 v43, v15

    iget v15, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchNeedHuge:I

    move/from16 v44, v14

    move/from16 v45, v15

    iget-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchTauFar:D

    move-wide/from16 v46, v14

    iget-wide v14, v0, Lcom/alicegpt/textfollower/tracking/TrackerConfig;->searchJump:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v48, v14

    const-string v14, "TrackerConfig(rho="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", advance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pStop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pSkip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pReread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pJump="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backgroundFloor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prune="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", beam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wideCap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seekOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needNear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needMid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needFar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needJump="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needHuge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tauMove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tauMid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tauFar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", jitter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", farAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hugeAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lockThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lostWords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchNeedFar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchNeedJump="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchNeedHuge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchTauFar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", searchJump="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v1, v48

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
