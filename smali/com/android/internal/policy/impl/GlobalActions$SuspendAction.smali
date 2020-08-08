.class final Lcom/android/internal/policy/impl/GlobalActions$SuspendAction;
.super Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuspendAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .registers 4

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SuspendAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    .line 459
    const v0, 0x108009f

    const v1, 0x10406fb

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;-><init>(II)V

    .line 461
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/GlobalActions;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/GlobalActions$1;

    .prologue
    .line 457
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/GlobalActions$SuspendAction;-><init>(Lcom/android/internal/policy/impl/GlobalActions;)V

    return-void
.end method


# virtual methods
.method public onLongPress()Z
    .registers 2

    .prologue
    .line 465
    const/4 v0, 0x1

    return v0
.end method

.method public onPress()V
    .registers 14

    .prologue
    .line 481
    new-instance v5, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 482
    .local v5, "ifilter":Landroid/content/IntentFilter;
    iget-object v10, p0, Lcom/android/internal/policy/impl/GlobalActions$SuspendAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 483
    .local v2, "batteryStatus":Landroid/content/Intent;
    const-string v10, "plugged"

    const/4 v11, -0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 484
    .local v3, "chargePlug":I
    const-string v10, "GlobalActions"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "reboot onPress(), chargePlug="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v10, p0, Lcom/android/internal/policy/impl/GlobalActions$SuspendAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 487
    .local v1, "am":Landroid/app/ActivityManager;
    const/16 v10, 0x64

    invoke-virtual {v1, v10}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v8

    .line 488
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v7, 0x0

    .line 489
    .local v7, "isAppRunning":Z
    const-string v0, "com.car.carservice"

    .line 490
    .local v0, "CAR_SERVICE_PKG_NAME":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 492
    .local v6, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v10, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4c

    .line 493
    const/4 v7, 0x1

    .line 498
    .end local v6    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_65
    if-eqz v7, :cond_81

    .line 499
    const-string v10, "GlobalActions"

    const-string v11, "notify CarService to force sleep."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.car.launcher.FORCE_SLEEP"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v9, "sleepIntent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/internal/policy/impl/GlobalActions$SuspendAction;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/internal/policy/impl/GlobalActions;->access$200(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v10

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v9, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 521
    .end local v9    # "sleepIntent":Landroid/content/Intent;
    :goto_80
    return-void

    .line 504
    :cond_81
    const-string v10, "GlobalActions"

    const-string v11, "not found com.car.carservice"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/android/internal/policy/impl/GlobalActions$SuspendAction$1;

    invoke-direct {v11, p0}, Lcom/android/internal/policy/impl/GlobalActions$SuspendAction$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$SuspendAction;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_80
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 475
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 470
    const/4 v0, 0x1

    return v0
.end method
