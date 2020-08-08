.class Lcom/android/internal/policy/impl/PhoneWindowManager$18;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 5180
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 5183
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 5184
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$18;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v4, "input"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    .line 5185
    .local v1, "inputManager":Landroid/hardware/input/InputManager;
    const-string v3, "WindowManager"

    const-string v4, ">>>>>>>> InjectEvent Start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5186
    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 5188
    :try_start_1e
    const-string v3, "WindowManager"

    const-string v4, "***** Sleeping."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5189
    const-wide/16 v4, 0x2710

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 5190
    const-string v3, "WindowManager"

    const-string v4, "***** Waking up."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_31} :catch_39
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_31} :catch_42
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_31} :catch_4b

    .line 5198
    :goto_31
    const-string v3, "WindowManager"

    const-string v4, "<<<<<<<< InjectEvent End"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5199
    return-void

    .line 5191
    :catch_39
    move-exception v0

    .line 5192
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "WindowManager"

    const-string v4, "IllegalArgumentException: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 5193
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_42
    move-exception v0

    .line 5194
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "WindowManager"

    const-string v4, "SecurityException: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 5195
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4b
    move-exception v0

    .line 5196
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "WindowManager"

    const-string v4, "InterruptedException: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method
