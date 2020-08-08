.class public Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;
.super Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MWcbPhoneWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;)V
    .registers 2

    .prologue
    .line 4983
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-direct {p0}, Lcom/mediatek/common/multiwindow/IMWPhoneWindowCallback$Stub;-><init>()V

    .line 4984
    return-void
.end method


# virtual methods
.method public setFloatDecorVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    .line 4998
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 4999
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5002
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/mediatek/multiwindow/MultiWindowProxy;->isSticky(Landroid/os/IBinder;)Z

    move-result v1

    # invokes: Lcom/android/internal/policy/impl/PhoneWindow;->updateStickView(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$3300(Lcom/android/internal/policy/impl/PhoneWindow;Z)V

    .line 5003
    return-void
.end method

.method public setWindowType(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "iBinder"    # Landroid/os/IBinder;
    .param p2, "windowType"    # I

    .prologue
    const/4 v1, 0x1

    .line 4988
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-object p1, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mToken:Landroid/os/IBinder;

    .line 4989
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    if-ne p2, v1, :cond_10

    .line 4990
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindow:Z

    .line 4994
    :cond_f
    :goto_f
    return-void

    .line 4991
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowProxy:Lcom/mediatek/multiwindow/MultiWindowProxy;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_f

    .line 4992
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$MWcbPhoneWindow;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mMultiWindowDialog:Z

    goto :goto_f
.end method
