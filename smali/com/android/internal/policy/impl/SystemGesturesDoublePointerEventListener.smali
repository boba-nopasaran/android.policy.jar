.class public Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesDoublePointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_LEFT:I = 0x4

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;

.field private mContext:Landroid/content/Context;

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mSwipeCount:[I

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;

    .prologue
    const/16 v1, 0x20

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownPointerId:[I

    .line 45
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownX:[F

    .line 46
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownY:[F

    .line 47
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownTime:[J

    .line 52
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeCount:[I

    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mContext:Landroid/content/Context;

    .line 58
    const-string v0, "callbacks"

    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;

    .line 59
    const/high16 v0, 0x43160000    # 150.0f

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeStartThreshold:I

    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeStartThreshold:I

    iput v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeDistanceThreshold:I

    .line 63
    return-void
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 121
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 122
    .local v1, "pointerId":I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->findIndex(I)I

    move-result v0

    .line 125
    .local v0, "i":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_23

    .line 126
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v0

    .line 127
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v0

    .line 128
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 132
    :cond_23
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_1b

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1b
    return-object p1
.end method

.method private detectSwipe(IJFF)I
    .registers 14
    .param p1, "i"    # I
    .param p2, "time"    # J
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    const-wide/16 v6, 0x1f4

    .line 169
    iget-object v4, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownX:[F

    aget v2, v4, p1

    .line 170
    .local v2, "fromX":F
    iget-object v4, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownY:[F

    aget v3, v4, p1

    .line 171
    .local v3, "fromY":F
    iget-object v4, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownTime:[J

    aget-wide v4, v4, p1

    sub-long v0, p2, v4

    .line 174
    .local v0, "elapsed":J
    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    cmpl-float v4, p5, v4

    if-lez v4, :cond_1e

    cmp-long v4, v0, v6

    if-gez v4, :cond_1e

    .line 176
    const/4 v4, 0x1

    .line 190
    :goto_1d
    return v4

    .line 178
    :cond_1e
    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    cmpg-float v4, p5, v4

    if-gez v4, :cond_2d

    cmp-long v4, v0, v6

    if-gez v4, :cond_2d

    .line 180
    const/4 v4, 0x2

    goto :goto_1d

    .line 182
    :cond_2d
    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v4, p4, v4

    if-lez v4, :cond_3b

    cmp-long v4, v0, v6

    if-gez v4, :cond_3b

    .line 184
    const/4 v4, 0x4

    goto :goto_1d

    .line 186
    :cond_3b
    iget v4, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    cmpg-float v4, p4, v4

    if-gez v4, :cond_4a

    cmp-long v4, v0, v6

    if-gez v4, :cond_4a

    .line 188
    const/4 v4, 0x3

    goto :goto_1d

    .line 190
    :cond_4a
    const/4 v4, 0x0

    goto :goto_1d
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .registers 13
    .param p1, "move"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x0

    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeCount:[I

    array-length v0, v0

    if-ge v1, v0, :cond_e

    .line 149
    iget-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeCount:[I

    aput v10, v0, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 151
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 152
    .local v7, "pointerCount":I
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_13
    if-ge v6, v7, :cond_46

    .line 153
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 154
    .local v8, "pointerId":I
    invoke-direct {p0, v8}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->findIndex(I)I

    move-result v1

    .line 155
    const/4 v0, -0x1

    if-eq v1, v0, :cond_43

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->detectSwipe(IJFF)I

    move-result v9

    .line 158
    .local v9, "swipe":I
    if-eqz v9, :cond_43

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeCount:[I

    aget v2, v0, v9

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v9

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeCount:[I

    aget v0, v0, v9

    const/4 v2, 0x1

    if-le v0, v2, :cond_43

    .line 165
    .end local v8    # "pointerId":I
    .end local v9    # "swipe":I
    :goto_42
    return v9

    .line 152
    .restart local v8    # "pointerId":I
    :cond_43
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .end local v8    # "pointerId":I
    :cond_46
    move v9, v10

    .line 165
    goto :goto_42
.end method

.method private dip2px(F)I
    .registers 5
    .param p1, "dpValue"    # F

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 195
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private findIndex(I)I
    .registers 6
    .param p1, "pointerId"    # I

    .prologue
    const/4 v1, -0x1

    .line 135
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownPointers:I

    if-ge v0, v2, :cond_10

    .line 136
    iget-object v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownPointerId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_d

    .line 144
    .end local v0    # "i":I
    :goto_c
    return v0

    .line 135
    .restart local v0    # "i":I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 140
    :cond_10
    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownPointers:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_18

    if-ne p1, v1, :cond_1a

    :cond_18
    move v0, v1

    .line 141
    goto :goto_c

    .line 143
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownPointerId:[I

    iget v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownPointers:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownPointers:I

    aput p1, v1, v2

    .line 144
    iget v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownPointers:I

    add-int/lit8 v0, v1, -0x1

    goto :goto_c
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_6a

    .line 118
    :cond_9
    :goto_9
    :pswitch_9
    return-void

    .line 76
    :pswitch_a
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeFireable:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDebugFireable:Z

    .line 78
    iput v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDownPointers:I

    .line 79
    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    goto :goto_9

    .line 82
    :pswitch_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    .line 83
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDebugFireable:Z

    if-eqz v3, :cond_9

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_32

    :goto_26
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDebugFireable:Z

    .line 85
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDebugFireable:Z

    if-nez v1, :cond_9

    .line 87
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;->onDebug()V

    goto :goto_9

    :cond_32
    move v1, v2

    .line 84
    goto :goto_26

    .line 92
    :pswitch_34
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeFireable:Z

    if-eqz v3, :cond_9

    .line 93
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    .line 94
    .local v0, "swipe":I
    if-nez v0, :cond_3f

    move v2, v1

    :cond_3f
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeFireable:Z

    .line 95
    if-ne v0, v1, :cond_49

    .line 97
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;->onDoubleSwipeFromTop()V

    goto :goto_9

    .line 98
    :cond_49
    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    .line 100
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;->onDoubleSwipeFromBottom()V

    goto :goto_9

    .line 101
    :cond_52
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5b

    .line 103
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;->onDoubleSwipeFromLeft()V

    goto :goto_9

    .line 104
    :cond_5b
    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 106
    iget-object v1, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mCallbacks:Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener$Callbacks;->onDoubleSwipeFromRight()V

    goto :goto_9

    .line 112
    .end local v0    # "swipe":I
    :pswitch_64
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mSwipeFireable:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SystemGesturesDoublePointerEventListener;->mDebugFireable:Z

    goto :goto_9

    .line 74
    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_a
        :pswitch_64
        :pswitch_34
        :pswitch_64
        :pswitch_9
        :pswitch_14
    .end packed-switch
.end method
