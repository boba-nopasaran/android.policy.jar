.class final Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecorView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModePopup:Landroid/widget/PopupWindow;

.field private mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private final mFeatureId:I

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastRightInset:I

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

.field private mNavigationGuard:Landroid/view/View;

.field private mRootScrollY:I

.field private mShowActionModePopup:Ljava/lang/Runnable;

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private final mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

.field private mStatusGuard:Landroid/view/View;

.field private mWatchingForMenu:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V
    .registers 12
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    const/4 v7, 0x0

    .line 2325
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 2326
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2268
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2273
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2275
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 2277
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2279
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2297
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    const/4 v1, 0x4

    const/high16 v2, 0x4000000

    const/16 v3, 0x30

    const-string v4, "android:status:background"

    const v5, 0x102002f

    const/16 v6, 0x400

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;-><init>(IIILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    .line 2303
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    const/4 v1, 0x2

    const/high16 v2, 0x8000000

    const/16 v3, 0x50

    const-string v4, "android:navigation:background"

    const v5, 0x1020030

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;-><init>(IIILjava/lang/String;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    .line 2314
    new-instance v0, Lcom/android/internal/widget/BackgroundFallback;

    invoke-direct {v0}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 2316
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastTopInset:I

    .line 2317
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 2318
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastRightInset:I

    .line 2319
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    .line 2320
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    .line 2321
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastWindowFlags:I

    .line 2323
    iput v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mRootScrollY:I

    .line 2327
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    .line 2329
    const v0, 0x10c000e

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 2331
    const v0, 0x10c000f

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 2334
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    .line 2336
    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/WindowInsets;
    .param p2, "x2"    # Z

    .prologue
    .line 2266
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 2266
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method private drawableChanged()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 3236
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    if-eqz v5, :cond_6

    .line 3293
    :cond_5
    :goto_5
    return-void

    .line 3240
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setPadding(IIII)V

    .line 3243
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->requestLayout()V

    .line 3244
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->invalidate()V

    .line 3246
    const/4 v4, -0x1

    .line 3252
    .local v4, "opacity":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3253
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3254
    .local v2, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_44

    .line 3255
    if-nez v2, :cond_50

    .line 3256
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 3289
    :cond_44
    :goto_44
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 3290
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_5

    .line 3291
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2400(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    goto :goto_5

    .line 3257
    :cond_50
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_83

    .line 3261
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 3262
    .local v3, "fop":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 3265
    .local v1, "bop":I
    if-eq v3, v10, :cond_74

    if-ne v1, v10, :cond_76

    .line 3266
    :cond_74
    const/4 v4, -0x1

    goto :goto_44

    .line 3267
    :cond_76
    if-nez v3, :cond_7a

    .line 3268
    move v4, v1

    goto :goto_44

    .line 3269
    :cond_7a
    if-nez v1, :cond_7e

    .line 3270
    move v4, v3

    goto :goto_44

    .line 3272
    :cond_7e
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_44

    .line 3280
    .end local v1    # "bop":I
    .end local v3    # "fop":I
    :cond_83
    const/4 v4, -0x3

    goto :goto_44
.end method

.method private isOutOfBounds(II)Z
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x5

    .line 2514
    if-lt p1, v0, :cond_15

    if-lt p2, v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private updateColorViewInt(Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;IIIZ)V
    .registers 15
    .param p1, "state"    # Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;
    .param p2, "sysUiVis"    # I
    .param p3, "color"    # I
    .param p4, "height"    # I
    .param p5, "animate"    # Z

    .prologue
    .line 3060
    if-lez p4, :cond_9d

    iget v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->systemUiHideFlag:I

    and-int/2addr v5, p2

    if-nez v5, :cond_9d

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->hideWindowFlag:I

    and-int/2addr v5, v6

    if-nez v5, :cond_9d

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v6, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->translucentFlag:I

    and-int/2addr v5, v6

    if-nez v5, :cond_9d

    const/high16 v5, -0x1000000

    and-int/2addr v5, p3

    if-eqz v5, :cond_9d

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_9d

    const/4 v1, 0x1

    .line 3066
    .local v1, "show":Z
    :goto_34
    const/4 v4, 0x0

    .line 3067
    .local v4, "visibilityChanged":Z
    iget-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 3069
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_9f

    .line 3070
    if-eqz v1, :cond_6b

    .line 3071
    new-instance v2, Landroid/view/View;

    .end local v2    # "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .restart local v2    # "view":Landroid/view/View;
    iput-object v2, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 3072
    invoke-virtual {v2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3073
    iget-object v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 3074
    iget v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->id:I

    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 3075
    const/4 v4, 0x1

    .line 3076
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3077
    const/4 v5, 0x0

    iput v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 3079
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x1

    const v7, 0x800003

    iget v8, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->verticalGravity:I

    or-int/2addr v7, v8

    invoke-direct {v5, v6, p4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3081
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .line 3096
    :cond_6b
    :goto_6b
    if-eqz v4, :cond_9c

    .line 3097
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3098
    if-eqz p5, :cond_e1

    .line 3099
    if-eqz v1, :cond_c2

    .line 3100
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_86

    .line 3101
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3102
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 3104
    :cond_86
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 3122
    :cond_9c
    :goto_9c
    return-void

    .line 3060
    .end local v1    # "show":Z
    .end local v2    # "view":Landroid/view/View;
    .end local v4    # "visibilityChanged":Z
    :cond_9d
    const/4 v1, 0x0

    goto :goto_34

    .line 3084
    .restart local v1    # "show":Z
    .restart local v2    # "view":Landroid/view/View;
    .restart local v4    # "visibilityChanged":Z
    :cond_9f
    if-eqz v1, :cond_be

    const/4 v3, 0x0

    .line 3085
    .local v3, "vis":I
    :goto_a2
    iget v5, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->targetVisibility:I

    if-eq v5, v3, :cond_c0

    const/4 v4, 0x1

    .line 3086
    :goto_a7
    iput v3, p1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 3087
    if-eqz v1, :cond_6b

    .line 3088
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3089
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v5, p4, :cond_ba

    .line 3090
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3091
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3093
    :cond_ba
    invoke-virtual {v2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_6b

    .line 3084
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "vis":I
    :cond_be
    const/4 v3, 0x4

    goto :goto_a2

    .line 3085
    .restart local v3    # "vis":I
    :cond_c0
    const/4 v4, 0x0

    goto :goto_a7

    .line 3107
    .end local v3    # "vis":I
    :cond_c2
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBarEnterExitDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;

    invoke-direct {v6, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_9c

    .line 3118
    :cond_e1
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 3119
    if-eqz v1, :cond_ed

    const/4 v5, 0x0

    :goto_e9
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9c

    :cond_ed
    const/4 v5, 0x4

    goto :goto_e9
.end method

.method private updateColorViewTranslations()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 3127
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3128
    .local v0, "rootScrollY":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_13

    .line 3129
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v3, v1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-lez v0, :cond_24

    int-to-float v1, v0

    :goto_10
    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 3131
    :cond_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-eqz v1, :cond_23

    .line 3132
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    if-gez v0, :cond_20

    int-to-float v2, v0

    :cond_20
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 3134
    :cond_23
    return-void

    :cond_24
    move v1, v2

    .line 3129
    goto :goto_10
.end method

.method private updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .registers 17
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .param p2, "animate"    # Z

    .prologue
    .line 2982
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 2983
    .local v6, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowSystemUiVisibility()I

    move-result v1

    or-int v2, v0, v1

    .line 2985
    .local v2, "sysUiVisibility":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mIsFloating:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1900(Lcom/android/internal/policy/impl/PhoneWindow;)Z

    move-result v0

    if-nez v0, :cond_a3

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 2986
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_116

    const/4 v10, 0x1

    .line 2987
    .local v10, "disallowAnimate":Z
    :goto_23
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastWindowFlags:I

    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/2addr v0, v1

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_119

    const/4 v0, 0x1

    :goto_2e
    or-int/2addr v10, v0

    .line 2989
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastWindowFlags:I

    .line 2991
    if-eqz p1, :cond_7d

    .line 2992
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastTopInset:I

    .line 2994
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 2996
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastRightInset:I

    .line 3002
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    if-eqz v0, :cond_11c

    const/4 v12, 0x1

    .line 3003
    .local v12, "hasTopStableInset":Z
    :goto_66
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    if-eq v12, v0, :cond_11f

    const/4 v0, 0x1

    :goto_6b
    or-int/2addr v10, v0

    .line 3004
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasTopStableInset:Z

    .line 3006
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    if-eqz v0, :cond_122

    const/4 v11, 0x1

    .line 3007
    .local v11, "hasBottomStableInset":Z
    :goto_75
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    if-eq v11, v0, :cond_125

    const/4 v0, 0x1

    :goto_7a
    or-int/2addr v10, v0

    .line 3008
    iput-boolean v11, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastHasBottomStableInset:Z

    .line 3011
    .end local v11    # "hasBottomStableInset":Z
    .end local v12    # "hasTopStableInset":Z
    :cond_7d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mStatusBarColor:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2000(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastTopInset:I

    if-eqz p2, :cond_128

    if-nez v10, :cond_128

    const/4 v5, 0x1

    :goto_8c
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;IIIZ)V

    .line 3013
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mNavigationBarColor:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastBottomInset:I

    if-eqz p2, :cond_12b

    if-nez v10, :cond_12b

    const/4 v5, 0x1

    :goto_9f
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewInt(Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;IIIZ)V

    .line 3021
    .end local v10    # "disallowAnimate":Z
    :cond_a3
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_12e

    and-int/lit16 v0, v2, 0x200

    if-nez v0, :cond_12e

    and-int/lit8 v0, v2, 0x2

    if-nez v0, :cond_12e

    const/4 v9, 0x1

    .line 3026
    .local v9, "consumingNavBar":Z
    :goto_b3
    if-eqz v9, :cond_130

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastRightInset:I

    .line 3027
    .local v8, "consumedRight":I
    :goto_b7
    if-eqz v9, :cond_132

    iget v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mLastBottomInset:I

    .line 3029
    .local v7, "consumedBottom":I
    :goto_bb
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_10f

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_10f

    .line 3031
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3032
    .local v13, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-ne v0, v8, :cond_e5

    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v0, v7, :cond_f7

    .line 3033
    :cond_e5
    iput v8, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3034
    iput v7, v13, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3035
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3037
    if-nez p1, :cond_f7

    .line 3040
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->requestApplyInsets()V

    .line 3043
    :cond_f7
    if-eqz p1, :cond_10f

    .line 3044
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3052
    .end local v13    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_10f
    if-eqz p1, :cond_115

    .line 3053
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p1

    .line 3055
    :cond_115
    return-object p1

    .line 2986
    .end local v7    # "consumedBottom":I
    .end local v8    # "consumedRight":I
    .end local v9    # "consumingNavBar":Z
    :cond_116
    const/4 v10, 0x0

    goto/16 :goto_23

    .line 2987
    .restart local v10    # "disallowAnimate":Z
    :cond_119
    const/4 v0, 0x0

    goto/16 :goto_2e

    .line 3002
    :cond_11c
    const/4 v12, 0x0

    goto/16 :goto_66

    .line 3003
    .restart local v12    # "hasTopStableInset":Z
    :cond_11f
    const/4 v0, 0x0

    goto/16 :goto_6b

    .line 3006
    :cond_122
    const/4 v11, 0x0

    goto/16 :goto_75

    .line 3007
    .restart local v11    # "hasBottomStableInset":Z
    :cond_125
    const/4 v0, 0x0

    goto/16 :goto_7a

    .line 3011
    .end local v11    # "hasBottomStableInset":Z
    .end local v12    # "hasTopStableInset":Z
    :cond_128
    const/4 v5, 0x0

    goto/16 :goto_8c

    .line 3013
    :cond_12b
    const/4 v5, 0x0

    goto/16 :goto_9f

    .line 3021
    .end local v10    # "disallowAnimate":Z
    :cond_12e
    const/4 v9, 0x0

    goto :goto_b3

    .line 3026
    .restart local v9    # "consumingNavBar":Z
    :cond_130
    const/4 v8, 0x0

    goto :goto_b7

    .line 3027
    .restart local v8    # "consumedRight":I
    :cond_132
    const/4 v7, 0x0

    goto :goto_bb
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)V
    .registers 10
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3208
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_76

    .line 3210
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 3211
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_3d

    .line 3212
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3214
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 3215
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3219
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    if-nez v2, :cond_77

    .line 3220
    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    .line 3221
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3223
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v6

    const v7, 0x800053

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3233
    :cond_76
    :goto_76
    return-void

    .line 3228
    :cond_77
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3229
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3230
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mNavigationGuard:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_76
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 15
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 3137
    const/4 v6, 0x0

    .line 3139
    .local v6, "showStatusGuard":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v7, :cond_ae

    .line 3140
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_ae

    .line 3142
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3144
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    .line 3145
    .local v2, "mlpChanged":Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7}, Lcom/android/internal/widget/ActionBarContextView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_db

    .line 3146
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_32

    .line 3147
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2202(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3149
    :cond_32
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2200(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/graphics/Rect;

    move-result-object v5

    .line 3153
    .local v5, "rect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Landroid/view/ViewGroup;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 3154
    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_bb

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    .line 3155
    .local v3, "newMargin":I
    :goto_49
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v3, :cond_8b

    .line 3156
    const/4 v2, 0x1

    .line 3157
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3159
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-nez v7, :cond_bd

    .line 3160
    new-instance v7, Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    .line 3161
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1060032

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3163
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusColorViewState:Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;

    iget-object v8, v8, Lcom/android/internal/policy/impl/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    iget v11, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v12, 0x800033

    invoke-direct {v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3178
    :cond_8b
    :goto_8b
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_d5

    const/4 v6, 0x1

    .line 3184
    :goto_90
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->getLocalFeatures()I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_d7

    const/4 v4, 0x1

    .line 3186
    .local v4, "nonOverlay":Z
    :goto_9b
    const/4 v8, 0x0

    if-eqz v4, :cond_d9

    if-eqz v6, :cond_d9

    const/4 v7, 0x1

    :goto_a1
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1, v8, v7, v9, v10}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    move-result-object p1

    .line 3195
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_a7
    :goto_a7
    if-eqz v2, :cond_ae

    .line 3196
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3200
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_ae
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v7, :cond_ba

    .line 3201
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    if-eqz v6, :cond_e4

    const/4 v7, 0x0

    :goto_b7
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3203
    :cond_ba
    return-object p1

    .line 3154
    .restart local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "mlpChanged":Z
    .restart local v5    # "rect":Landroid/graphics/Rect;
    :cond_bb
    const/4 v3, 0x0

    goto :goto_49

    .line 3167
    .restart local v3    # "newMargin":I
    :cond_bd
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3169
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eq v7, v8, :cond_8b

    .line 3170
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v7, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3171
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mStatusGuard:Landroid/view/View;

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8b

    .line 3178
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_d5
    const/4 v6, 0x0

    goto :goto_90

    .line 3184
    :cond_d7
    const/4 v4, 0x0

    goto :goto_9b

    .line 3186
    .restart local v4    # "nonOverlay":Z
    :cond_d9
    const/4 v7, 0x0

    goto :goto_a1

    .line 3190
    .end local v3    # "newMargin":I
    .end local v4    # "nonOverlay":Z
    .end local v5    # "rect":Landroid/graphics/Rect;
    :cond_db
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_a7

    .line 3191
    const/4 v2, 0x1

    .line 3192
    const/4 v7, 0x0

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_a7

    .line 3201
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "mlpChanged":Z
    :cond_e4
    const/16 v7, 0x8

    goto :goto_b7
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 8
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2495
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    if-eqz v3, :cond_30

    .line 2496
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 2497
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    invoke-virtual {v3, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v0, v3

    .line 2498
    .local v0, "bottom":I
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v2

    .line 2501
    .local v2, "newInsets":Landroid/view/WindowInsets;
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v3

    .line 2503
    .end local v0    # "bottom":I
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "newInsets":Landroid/view/WindowInsets;
    :goto_2f
    return-object v3

    :cond_30
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v3

    goto :goto_2f
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 2784
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG_TEST_BACKGROUND:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2785
    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 2787
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2788
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2456
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2457
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2351
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 2352
    .local v4, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2353
    .local v0, "action":I
    if-nez v0, :cond_2c

    move v3, v5

    .line 2355
    .local v3, "isDown":Z
    :goto_d
    if-eqz v3, :cond_4e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_4e

    .line 2358
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    if-lez v7, :cond_2e

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v7

    if-eq v7, v4, :cond_2e

    .line 2359
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2360
    .local v2, "handled":Z
    if-eqz v2, :cond_2e

    .line 2392
    .end local v2    # "handled":Z
    :cond_2b
    :goto_2b
    return v5

    .end local v3    # "isDown":Z
    :cond_2c
    move v3, v6

    .line 2353
    goto :goto_d

    .line 2367
    .restart local v3    # "isDown":Z
    :cond_2e
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v7

    if-eqz v7, :cond_4e

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v7, :cond_4e

    .line 2368
    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v8

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v7, v8, v4, p1, v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v6

    if-nez v6, :cond_2b

    .line 2374
    :cond_4e
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v6

    if-nez v6, :cond_d9

    .line 2375
    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 2376
    .local v1, "cb":Landroid/view/Window$Callback;
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->DBG_MOTION:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_90

    .line 2377
    const-string v6, "PhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchKeyEvent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cb = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mFeatureId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_90
    if-eqz v1, :cond_d4

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v6, :cond_d4

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 2382
    .restart local v2    # "handled":Z
    :goto_9a
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->DBG_MOTION:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_c2

    .line 2383
    const-string v6, "PhoneWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dispatchKeyEvent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", handled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_c2
    if-nez v2, :cond_2b

    .line 2392
    .end local v1    # "cb":Landroid/view/Window$Callback;
    .end local v2    # "handled":Z
    :goto_c4
    if-eqz v3, :cond_f2

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_2b

    .line 2380
    .restart local v1    # "cb":Landroid/view/Window$Callback;
    :cond_d4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_9a

    .line 2389
    .end local v1    # "cb":Landroid/view/Window$Callback;
    :cond_d9
    const-string v5, "PhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping key event due to destroyed state, event = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 2392
    :cond_f2
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_2b
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2400
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 2401
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v6, v7, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2403
    .local v1, "handled":Z
    if-eqz v1, :cond_2d

    .line 2404
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 2405
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v4

    iput-boolean v3, v4, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 2433
    :cond_2c
    :goto_2c
    return v3

    .line 2412
    .end local v1    # "handled":Z
    :cond_2d
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2413
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_6c

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_6c

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_6c

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 2415
    .restart local v1    # "handled":Z
    :goto_45
    if-nez v1, :cond_2c

    .line 2423
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5, v4, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v2

    .line 2424
    .local v2, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v2, :cond_6a

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-nez v5, :cond_6a

    .line 2425
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5, v2, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->preparePanel(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 2426
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v2, v6, p1, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1000(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v1

    .line 2428
    iput-boolean v4, v2, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 2429
    if-nez v1, :cond_2c

    :cond_6a
    move v3, v4

    .line 2433
    goto :goto_2c

    .line 2413
    .end local v1    # "handled":Z
    .end local v2    # "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    :cond_6c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_45
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2617
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2618
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2619
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2620
    const/4 v1, 0x1

    .line 2623
    :goto_17
    return v1

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_17
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2438
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2439
    .local v0, "cb":Landroid/view/Window$Callback;
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->DBG_MOTION:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 2440
    const-string v1, "PhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchEvent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", cb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", destroyed? = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFeatureId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    :cond_4a
    if-eqz v0, :cond_5d

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_5d

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_5d

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_5c
    return v1

    :cond_5d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_5c
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 2449
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2450
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_19

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_19

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_18
    return v1

    :cond_19
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_18
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 2766
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2768
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 2769
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2772
    :cond_c
    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1300()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2773
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2774
    .local v0, "paint":Landroid/graphics/Paint;
    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2775
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2776
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x43960000    # 300.0f

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2778
    .end local v0    # "paint":Landroid/graphics/Paint;
    :cond_2f
    return-void
.end method

.method public finishChanging()V
    .registers 2

    .prologue
    .line 2923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2924
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2925
    return-void
.end method

.method public isTransitionGroup()Z
    .registers 2

    .prologue
    .line 2978
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2967
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2968
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    .line 2969
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)V

    .line 2970
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2971
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2973
    :cond_1e
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 3325
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 3327
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 3329
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3330
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1d

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_1d

    .line 3331
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 3334
    :cond_1d
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    .line 3342
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2600(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 3344
    :cond_27
    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 3375
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v0, :cond_9

    .line 3376
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeAllPanels()V

    .line 3378
    :cond_9
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 3348
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 3350
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3351
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_13

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_13

    .line 3352
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 3355
    :cond_13
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    if-eqz v2, :cond_24

    .line 3356
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/widget/DecorContentParent;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 3359
    :cond_24
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_3d

    .line 3360
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3361
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3362
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3364
    :cond_3a
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 3367
    :cond_3d
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v2, v3, v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1200(Lcom/android/internal/policy/impl/PhoneWindow;IZ)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v1

    .line 3368
    .local v1, "st":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    if-eqz v1, :cond_52

    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_52

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v2, :cond_52

    .line 3369
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 3371
    :cond_52
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 2345
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 2346
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentRoot:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 2347
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2521
    .local v0, "action":I
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v3, :cond_23

    .line 2522
    if-nez v0, :cond_23

    .line 2523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2524
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2525
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2526
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    .line 2527
    const/4 v3, 0x1

    .line 2533
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_22
    return v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_22
.end method

.method protected onMeasure(II)V
    .registers 25
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 2675
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 2676
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_130

    const/4 v7, 0x1

    .line 2678
    .local v7, "isPortrait":Z
    :goto_1b
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 2679
    .local v18, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 2681
    .local v5, "heightMode":I
    const/4 v2, 0x0

    .line 2682
    .local v2, "fixedWidth":Z
    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6a

    .line 2683
    if-eqz v7, :cond_133

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 2684
    .local v15, "tvw":Landroid/util/TypedValue;
    :goto_38
    if-eqz v15, :cond_6a

    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    if-eqz v20, :cond_6a

    .line 2686
    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_13f

    .line 2687
    invoke-virtual {v15, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2694
    .local v16, "w":I
    :goto_55
    if-lez v16, :cond_6a

    .line 2695
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 2696
    .local v19, "widthSize":I
    move/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2698
    const/4 v2, 0x1

    .line 2703
    .end local v15    # "tvw":Landroid/util/TypedValue;
    .end local v16    # "w":I
    .end local v19    # "widthSize":I
    :cond_6a
    const/high16 v20, -0x80000000

    move/from16 v0, v20

    if-ne v5, v0, :cond_a7

    .line 2704
    if-eqz v7, :cond_170

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 2705
    .local v14, "tvh":Landroid/util/TypedValue;
    :goto_7c
    if-eqz v14, :cond_a7

    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    if-eqz v20, :cond_a7

    .line 2707
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17c

    .line 2708
    invoke-virtual {v14, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v3, v0

    .line 2714
    .local v3, "h":I
    :goto_97
    if-lez v3, :cond_a7

    .line 2715
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 2716
    .local v6, "heightSize":I
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    invoke-static/range {v20 .. v21}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2722
    .end local v3    # "h":I
    .end local v6    # "heightSize":I
    .end local v14    # "tvh":Landroid/util/TypedValue;
    :cond_a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    if-eqz v20, :cond_dc

    .line 2723
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 2724
    .local v11, "mode":I
    if-eqz v11, :cond_dc

    .line 2725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mOutsetBottom:Landroid/util/TypedValue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v12, v0

    .line 2726
    .local v12, "outset":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 2727
    .local v4, "height":I
    add-int v20, v4, v12

    move/from16 v0, v20

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2731
    .end local v4    # "height":I
    .end local v11    # "mode":I
    .end local v12    # "outset":I
    :cond_dc
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2733
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getMeasuredWidth()I

    move-result v17

    .line 2734
    .local v17, "width":I
    const/4 v8, 0x0

    .line 2736
    .local v8, "measure":Z
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2738
    if-nez v2, :cond_12a

    const/high16 v20, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_12a

    .line 2739
    if-eqz v7, :cond_1aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 2740
    .local v13, "tv":Landroid/util/TypedValue;
    :goto_104
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    if-eqz v20, :cond_12a

    .line 2742
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b6

    .line 2743
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    .line 2750
    .local v10, "min":I
    :goto_11d
    move/from16 v0, v17

    if-ge v0, v10, :cond_12a

    .line 2751
    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2752
    const/4 v8, 0x1

    .line 2759
    .end local v10    # "min":I
    .end local v13    # "tv":Landroid/util/TypedValue;
    :cond_12a
    if-eqz v8, :cond_12f

    .line 2760
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2762
    :cond_12f
    return-void

    .line 2676
    .end local v2    # "fixedWidth":Z
    .end local v5    # "heightMode":I
    .end local v7    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v17    # "width":I
    .end local v18    # "widthMode":I
    :cond_130
    const/4 v7, 0x0

    goto/16 :goto_1b

    .line 2683
    .restart local v2    # "fixedWidth":Z
    .restart local v5    # "heightMode":I
    .restart local v7    # "isPortrait":Z
    .restart local v18    # "widthMode":I
    :cond_133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v15, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_38

    .line 2688
    .restart local v15    # "tvw":Landroid/util/TypedValue;
    :cond_13f
    iget v0, v15, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16c

    .line 2689
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .restart local v16    # "w":I
    goto/16 :goto_55

    .line 2691
    .end local v16    # "w":I
    :cond_16c
    const/16 v16, 0x0

    .restart local v16    # "w":I
    goto/16 :goto_55

    .line 2704
    .end local v15    # "tvw":Landroid/util/TypedValue;
    .end local v16    # "w":I
    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_7c

    .line 2709
    .restart local v14    # "tvh":Landroid/util/TypedValue;
    :cond_17c
    iget v0, v14, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a7

    .line 2710
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v14, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v3, v0

    .restart local v3    # "h":I
    goto/16 :goto_97

    .line 2712
    .end local v3    # "h":I
    :cond_1a7
    const/4 v3, 0x0

    .restart local v3    # "h":I
    goto/16 :goto_97

    .line 2739
    .end local v3    # "h":I
    .end local v14    # "tvh":Landroid/util/TypedValue;
    .restart local v8    # "measure":Z
    .restart local v17    # "width":I
    :cond_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_104

    .line 2744
    .restart local v13    # "tv":Landroid/util/TypedValue;
    :cond_1b6
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1e1

    .line 2745
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v20

    move/from16 v0, v20

    float-to-int v10, v0

    .restart local v10    # "min":I
    goto/16 :goto_11d

    .line 2747
    .end local v10    # "min":I
    :cond_1e1
    const/4 v10, 0x0

    .restart local v10    # "min":I
    goto/16 :goto_11d
.end method

.method public onRootViewScrollYChanged(I)V
    .registers 2
    .param p1, "rootScrollY"    # I

    .prologue
    .line 3403
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mRootScrollY:I

    .line 3404
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViewTranslations()V

    .line 3405
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2510
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 3297
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 3301
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-nez p1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$800(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v1

    if-eqz v1, :cond_1b

    .line 3302
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    .line 3305
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3306
    .local v0, "cb":Landroid/view/Window$Callback;
    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_32

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_32

    .line 3307
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 3310
    :cond_32
    invoke-static {}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isFeatureSupport()Z

    move-result v1

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindow:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 3312
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFloatDecorFocus(Z)V

    .line 3315
    :cond_4b
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .registers 4
    .param p1, "visible"    # I

    .prologue
    .line 2961
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 2962
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 4
    .param p1, "eventType"    # I

    .prologue
    .line 2597
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2613
    :goto_c
    return-void

    .line 2604
    :cond_d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 2609
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_c

    .line 2611
    :cond_30
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_c
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2941
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2942
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2943
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->updateWindowResizeState()V

    .line 2945
    :cond_c
    return-void
.end method

.method public setBackgroundFallback(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 2339
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    if-eqz p1, :cond_22

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_c
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2340
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    invoke-virtual {v0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v0

    if-nez v0, :cond_24

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setWillNotDraw(Z)V

    .line 2341
    return-void

    .line 2339
    :cond_22
    const/4 v0, 0x0

    goto :goto_c

    .line 2340
    :cond_24
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method protected setFrame(IIII)Z
    .registers 14
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 2628
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .line 2629
    .local v1, "changed":Z
    if-eqz v1, :cond_68

    .line 2630
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 2631
    .local v2, "drawingBounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2633
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2634
    .local v3, "fg":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5c

    .line 2635
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 2636
    .local v4, "frameOffsets":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2637
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2638
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2639
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2640
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2641
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 2642
    .local v5, "framePadding":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 2643
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 2644
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 2645
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 2648
    .end local v4    # "frameOffsets":Landroid/graphics/Rect;
    .end local v5    # "framePadding":Landroid/graphics/Rect;
    :cond_5c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2649
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_68

    .line 2650
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 2652
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->invalidateOutline()V

    .line 2670
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawingBounds":Landroid/graphics/Rect;
    .end local v3    # "fg":Landroid/graphics/drawable/Drawable;
    :cond_68
    return v1
.end method

.method public setSurfaceFormat(I)V
    .registers 3
    .param p1, "format"    # I

    .prologue
    .line 3393
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFormat(I)V

    .line 3394
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .registers 4
    .param p1, "keepOn"    # Z

    .prologue
    const/16 v1, 0x80

    .line 3397
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    .line 3399
    :goto_9
    return-void

    .line 3398
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->clearFlags(I)V

    goto :goto_9
.end method

.method public setSurfaceType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 3389
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setType(I)V

    .line 3390
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 3410
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3411
    const-string v0, "PhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DecorView setVisiblity: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,Parent ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2928
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 2929
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2930
    if-eqz p1, :cond_14

    .line 2931
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2935
    :goto_10
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2937
    :cond_13
    return-void

    .line 2933
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2948
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 2949
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2950
    if-eqz p1, :cond_14

    .line 2951
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2955
    :goto_10
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2957
    :cond_13
    return-void

    .line 2953
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 6
    .param p1, "originalView"    # Landroid/view/View;

    .prologue
    .line 2794
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_43

    .line 2795
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1502(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 2796
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 2801
    :goto_23
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    .line 2803
    .local v0, "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    if-eqz v0, :cond_4d

    .line 2804
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$DialogMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 2810
    :cond_3a
    :goto_3a
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1602(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 2811
    if-eqz v0, :cond_5f

    const/4 v1, 0x1

    :goto_42
    return v1

    .line 2798
    .end local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_43
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_23

    .line 2805
    .restart local v0    # "helper":Lcom/android/internal/view/menu/MenuDialogHelper;
    :cond_4d
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1600(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 2808
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$1600(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuDialogHelper;->dismiss()V

    goto :goto_3a

    .line 2811
    :cond_5f
    const/4 v1, 0x0

    goto :goto_42
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 16
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2824
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_c

    .line 2825
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v8}, Landroid/view/ActionMode;->finish()V

    .line 2828
    :cond_c
    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;

    invoke-direct {v7, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$ActionModeCallbackWrapper;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Landroid/view/ActionMode$Callback;)V

    .line 2829
    .local v7, "wrappedCallback":Landroid/view/ActionMode$Callback;
    const/4 v4, 0x0

    .line 2830
    .local v4, "mode":Landroid/view/ActionMode;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    if-eqz v8, :cond_2c

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_2c

    .line 2832
    :try_start_22
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    invoke-interface {v8, v7}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    :try_end_2b
    .catch Ljava/lang/AbstractMethodError; {:try_start_22 .. :try_end_2b} :catch_148

    move-result-object v4

    .line 2837
    :cond_2c
    :goto_2c
    if-eqz v4, :cond_52

    .line 2838
    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2908
    :cond_30
    :goto_30
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v8, :cond_4f

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    if-eqz v8, :cond_4f

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_4f

    .line 2910
    :try_start_44
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-interface {v8, v9}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_4f
    .catch Ljava/lang/AbstractMethodError; {:try_start_44 .. :try_end_4f} :catch_145

    .line 2915
    :cond_4f
    :goto_4f
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    return-object v8

    .line 2840
    :cond_52
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-nez v8, :cond_e1

    .line 2841
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/PhoneWindow;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_12b

    .line 2843
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 2844
    .local v5, "outValue":Landroid/util/TypedValue;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 2845
    .local v2, "baseTheme":Landroid/content/res/Resources$Theme;
    const v8, 0x1010431

    invoke-virtual {v2, v8, v5, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2848
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v8, :cond_127

    .line 2849
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 2850
    .local v1, "actionBarTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2851
    iget v8, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 2853
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2854
    .local v0, "actionBarContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 2859
    .end local v1    # "actionBarTheme":Landroid/content/res/Resources$Theme;
    :goto_93
    new-instance v8, Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {v8, v0}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2860
    new-instance v8, Landroid/widget/PopupWindow;

    const v11, 0x1160019

    invoke-direct {v8, v0, v13, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    .line 2862
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v11, 0x2

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2864
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    iget-object v11, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2865
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v11, -0x1

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2867
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v11, 0x10102eb

    invoke-virtual {v8, v11, v5, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 2869
    iget v8, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 2871
    .local v3, "height":I
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v3}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 2872
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    const/4 v11, -0x2

    invoke-virtual {v8, v11}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2873
    new-instance v8, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    .line 2889
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v3    # "height":I
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_e1
    :goto_e1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v8, :cond_30

    .line 2890
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 2891
    new-instance v4, Lcom/android/internal/view/StandaloneActionMode;

    .end local v4    # "mode":Landroid/view/ActionMode;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-nez v8, :cond_13f

    move v8, v9

    :goto_f9
    invoke-direct {v4, v11, v12, v7, v8}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 2893
    .restart local v4    # "mode":Landroid/view/ActionMode;
    invoke-virtual {v4}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v8

    invoke-interface {p1, v4, v8}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v8

    if-eqz v8, :cond_141

    .line 2894
    invoke-virtual {v4}, Landroid/view/ActionMode;->invalidate()V

    .line 2895
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v4}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 2896
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v8, v10}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    .line 2897
    iput-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    .line 2898
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModePopup:Landroid/widget/PopupWindow;

    if-eqz v8, :cond_11e

    .line 2899
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mShowActionModePopup:Ljava/lang/Runnable;

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->post(Ljava/lang/Runnable;)Z

    .line 2901
    :cond_11e
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    goto/16 :goto_30

    .line 2856
    .restart local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .restart local v5    # "outValue":Landroid/util/TypedValue;
    :cond_127
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    .restart local v0    # "actionBarContext":Landroid/content/Context;
    goto/16 :goto_93

    .line 2881
    .end local v0    # "actionBarContext":Landroid/content/Context;
    .end local v2    # "baseTheme":Landroid/content/res/Resources$Theme;
    .end local v5    # "outValue":Landroid/util/TypedValue;
    :cond_12b
    const v8, 0x1020373

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewStub;

    .line 2883
    .local v6, "stub":Landroid/view/ViewStub;
    if-eqz v6, :cond_e1

    .line 2884
    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    goto :goto_e1

    .end local v4    # "mode":Landroid/view/ActionMode;
    .end local v6    # "stub":Landroid/view/ViewStub;
    :cond_13f
    move v8, v10

    .line 2891
    goto :goto_f9

    .line 2904
    .restart local v4    # "mode":Landroid/view/ActionMode;
    :cond_141
    iput-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    goto/16 :goto_30

    .line 2911
    :catch_145
    move-exception v8

    goto/16 :goto_4f

    .line 2833
    :catch_148
    move-exception v8

    goto/16 :goto_2c
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 2819
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public startChanging()V
    .registers 2

    .prologue
    .line 2919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2920
    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2490
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 2463
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    .line 2464
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 2466
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_18

    .line 2467
    if-ne v0, v1, :cond_17

    .line 2468
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 2474
    .end local v0    # "action":I
    :cond_17
    :goto_17
    return v1

    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_17
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2478
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2482
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2486
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method updateWindowResizeState()V
    .registers 4

    .prologue
    .line 3318
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3319
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    :cond_d
    const/4 v1, 0x1

    :goto_e
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->hackTurnOffWindowResizeAnim(Z)V

    .line 3321
    return-void

    .line 3319
    :cond_12
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .registers 2

    .prologue
    .line 3385
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .registers 2

    .prologue
    .line 3381
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method