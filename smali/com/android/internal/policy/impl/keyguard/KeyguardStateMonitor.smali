.class public Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;
.super Lcom/android/internal/policy/IKeyguardStateCallback$Stub;
.source "KeyguardStateMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardStateMonitor"


# instance fields
.field private volatile mInputRestricted:Z

.field private volatile mIsAnthTheftEnabled:Z

.field private volatile mIsShowing:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private volatile mSimSecure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/IKeyguardService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;-><init>()V

    .line 51
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 52
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 54
    :try_start_13
    invoke-interface {p2, p0}, Lcom/android/internal/policy/IKeyguardService;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    .line 58
    :goto_16
    return-void

    .line 55
    :catch_17
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardStateMonitor"

    const-string v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method


# virtual methods
.method public isInputRestricted()Z
    .registers 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    return v0
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mIsAnthTheftEnabled:Z

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    return v0
.end method

.method public onAntiTheftStateChanged(Z)V
    .registers 5
    .param p1, "antiTheftEnabled"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mIsAnthTheftEnabled:Z

    .line 95
    const-string v0, "KeyguardStateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAntiTheftStateChanged() - mIsAnthTheftEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mIsAnthTheftEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void
.end method

.method public onInputRestrictedStateChanged(Z)V
    .registers 2
    .param p1, "inputRestricted"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mInputRestricted:Z

    .line 89
    return-void
.end method

.method public onShowingStateChanged(Z)V
    .registers 2
    .param p1, "showing"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mIsShowing:Z

    .line 75
    return-void
.end method

.method public onSimSecureStateChanged(Z)V
    .registers 2
    .param p1, "simSecure"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mSimSecure:Z

    .line 80
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 84
    return-void
.end method
