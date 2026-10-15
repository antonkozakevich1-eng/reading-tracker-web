.class public final Lcom/alicegpt/textfollower/speech/AutoGain;
.super Ljava/lang/Object;
.source "AutoGain.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/speech/AutoGain$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0010\u0017\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005J\u0006\u0010\u0012\u001a\u00020\u0013J\u0018\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0002J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000bH\u0002J\u0010\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000bH\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/AutoGain;",
        "",
        "<init>",
        "()V",
        "sensitivity",
        "",
        "getSensitivity",
        "()I",
        "setSensitivity",
        "(I)V",
        "gain",
        "",
        "speechLevel",
        "noiseFloor",
        "process",
        "buf",
        "",
        "n",
        "reset",
        "",
        "rms",
        "limit",
        "v",
        "levelOf",
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
.field private static final Companion:Lcom/alicegpt/textfollower/speech/AutoGain$Companion;

.field public static final KNEE:F = 24000.0f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TARGET_RMS:F = 0.08f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private gain:F

.field private noiseFloor:F

.field private volatile sensitivity:I

.field private speechLevel:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alicegpt/textfollower/speech/AutoGain$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alicegpt/textfollower/speech/AutoGain$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/alicegpt/textfollower/speech/AutoGain;->Companion:Lcom/alicegpt/textfollower/speech/AutoGain$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x32

    iput v0, p0, Lcom/alicegpt/textfollower/speech/AutoGain;->sensitivity:I

    .line 21
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alicegpt/textfollower/speech/AutoGain;->gain:F

    .line 23
    const v0, 0x3b03126f    # 0.002f

    iput v0, p0, Lcom/alicegpt/textfollower/speech/AutoGain;->noiseFloor:F

    .line 16
    return-void
.end method

.method private final levelOf(F)F
    .locals 4
    .param p1, "rms"    # F

    .line 79
    const v0, 0x3727c5ac    # 1.0E-5f

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    .line 80
    .local v0, "db":F
    const/high16 v1, 0x42700000    # 60.0f

    add-float/2addr v1, v0

    const/high16 v2, 0x42480000    # 50.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v1

    return v1
.end method

.method private final limit(F)F
    .locals 6
    .param p1, "v"    # F

    .line 71
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 72
    .local v0, "a":F
    const v1, 0x46bb8000    # 24000.0f

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_0

    return p1

    .line 73
    :cond_0
    sub-float v2, v0, v1

    .line 74
    .local v2, "over":F
    const v3, 0x4608fc00    # 8767.0f

    div-float v4, v2, v3

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    div-float v4, v5, v4

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    .line 75
    .local v5, "soft":F
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    const v3, 0x46fffe00    # 32767.0f

    if-gez v1, :cond_1

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    neg-float v1, v1

    goto :goto_0

    :cond_1
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    return v1
.end method

.method private final rms([SI)F
    .locals 7
    .param p1, "buf"    # [S
    .param p2, "n"    # I

    .line 61
    const-wide/16 v0, 0x0

    .line 62
    .local v0, "s":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 63
    aget-short v3, p1, v2

    int-to-double v3, v3

    const-wide/high16 v5, 0x40e0000000000000L    # 32768.0

    div-double/2addr v3, v5

    .line 64
    .local v3, "v":D
    mul-double v5, v3, v3

    add-double/2addr v0, v5

    .line 62
    .end local v3    # "v":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2    # "i":I
    :cond_0
    int-to-double v2, p2

    div-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method


# virtual methods
.method public final getSensitivity()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/alicegpt/textfollower/speech/AutoGain;->sensitivity:I

    return v0
.end method

.method public final process([SI)F
    .locals 19
    .param p1, "buf"    # [S
    .param p2, "n"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "buf"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return v3

    .line 28
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/alicegpt/textfollower/speech/AutoGain;->rms([SI)F

    move-result v4

    .line 31
    .local v4, "rms":F
    iget v5, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->noiseFloor:F

    cmpg-float v5, v4, v5

    const/high16 v6, 0x3f000000    # 0.5f

    if-gez v5, :cond_1

    mul-float v5, v4, v6

    iget v7, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->noiseFloor:F

    mul-float/2addr v7, v6

    goto :goto_0

    :cond_1
    iget v5, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->noiseFloor:F

    const v7, 0x3f804189    # 1.002f

    mul-float/2addr v5, v7

    const v7, 0x358637bd    # 1.0E-6f

    :goto_0
    add-float/2addr v5, v7

    iput v5, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->noiseFloor:F

    .line 32
    iget v5, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->noiseFloor:F

    const v7, 0x3951b717    # 2.0E-4f

    const v8, 0x3d4ccccd    # 0.05f

    invoke-static {v5, v7, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v5

    iput v5, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->noiseFloor:F

    .line 34
    iget v5, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->noiseFloor:F

    const/high16 v7, 0x40200000    # 2.5f

    mul-float/2addr v5, v7

    cmpl-float v5, v4, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v5, :cond_2

    const v5, 0x3a9d4952    # 0.0012f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v8

    .line 35
    .local v5, "isSpeech":Z
    :goto_1
    if-eqz v5, :cond_5

    iget v9, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->speechLevel:F

    cmpg-float v9, v9, v3

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    move v7, v8

    :goto_2
    if-eqz v7, :cond_4

    move v7, v4

    goto :goto_3

    :cond_4
    iget v7, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->speechLevel:F

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v7, v9

    const v9, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v4

    add-float/2addr v7, v9

    :goto_3
    iput v7, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->speechLevel:F

    .line 37
    :cond_5
    iget v7, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->sensitivity:I

    const/16 v9, 0x64

    invoke-static {v7, v8, v9}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    .line 38
    .local v7, "s":F
    const/high16 v8, 0x42180000    # 38.0f

    mul-float/2addr v8, v7

    const/high16 v9, 0x40000000    # 2.0f

    add-float/2addr v8, v9

    .line 39
    .local v8, "maxGain":F
    iget v9, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->speechLevel:F

    cmpl-float v3, v9, v3

    const/high16 v9, 0x3f800000    # 1.0f

    if-lez v3, :cond_6

    const v3, 0x3da3d70a    # 0.08f

    iget v10, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->speechLevel:F

    div-float/2addr v3, v10

    invoke-static {v3, v9, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v3

    goto :goto_4

    :cond_6
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 41
    .local v3, "target":F
    :goto_4
    iget v10, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->gain:F

    cmpg-float v10, v3, v10

    if-gez v10, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v5, :cond_8

    const v6, 0x3e19999a    # 0.15f

    goto :goto_5

    :cond_8
    const v6, 0x3ca3d70a    # 0.02f

    .line 42
    .local v6, "rate":F
    :goto_5
    iget v10, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->gain:F

    iget v11, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->gain:F

    sub-float v11, v3, v11

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    iput v10, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->gain:F

    .line 43
    iget v10, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->gain:F

    invoke-static {v10, v9, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v9

    iput v9, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->gain:F

    .line 45
    const-wide/16 v9, 0x0

    .line 46
    .local v9, "sumSq":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v2, :cond_9

    .line 47
    aget-short v12, v1, v11

    int-to-float v12, v12

    iget v13, v0, Lcom/alicegpt/textfollower/speech/AutoGain;->gain:F

    mul-float/2addr v12, v13

    invoke-direct {v0, v12}, Lcom/alicegpt/textfollower/speech/AutoGain;->limit(F)F

    move-result v12

    .line 48
    .local v12, "v":F
    float-to-int v13, v12

    int-to-short v13, v13

    aput-short v13, v1, v11

    .line 49
    float-to-double v13, v12

    const-wide/high16 v15, 0x40e0000000000000L    # 32768.0

    div-double/2addr v13, v15

    move/from16 v18, v3

    move/from16 v17, v4

    .end local v3    # "target":F
    .end local v4    # "rms":F
    .local v17, "rms":F
    .local v18, "target":F
    float-to-double v3, v12

    div-double/2addr v3, v15

    mul-double/2addr v13, v3

    add-double/2addr v9, v13

    .line 46
    .end local v12    # "v":F
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v17

    move/from16 v3, v18

    goto :goto_6

    .end local v17    # "rms":F
    .end local v18    # "target":F
    .restart local v3    # "target":F
    .restart local v4    # "rms":F
    :cond_9
    move/from16 v18, v3

    move/from16 v17, v4

    .line 51
    .end local v3    # "target":F
    .end local v4    # "rms":F
    .end local v11    # "i":I
    .restart local v17    # "rms":F
    .restart local v18    # "target":F
    int-to-double v3, v2

    div-double v3, v9, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 52
    .local v3, "outRms":F
    invoke-direct {v0, v3}, Lcom/alicegpt/textfollower/speech/AutoGain;->levelOf(F)F

    move-result v4

    return v4
.end method

.method public final reset()V
    .locals 1

    .line 56
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alicegpt/textfollower/speech/AutoGain;->gain:F

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/alicegpt/textfollower/speech/AutoGain;->speechLevel:F

    .line 58
    return-void
.end method

.method public final setSensitivity(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 18
    iput p1, p0, Lcom/alicegpt/textfollower/speech/AutoGain;->sensitivity:I

    .line 19
    return-void
.end method
