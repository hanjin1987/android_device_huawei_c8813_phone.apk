.class Lcom/android/phone/EnableIccPinScreen$2;
.super Ljava/lang/Object;
.source "EnableIccPinScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EnableIccPinScreen;->handleResult(Landroid/os/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EnableIccPinScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EnableIccPinScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/phone/EnableIccPinScreen$2;->this$0:Lcom/android/phone/EnableIccPinScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/EnableIccPinScreen$2;->this$0:Lcom/android/phone/EnableIccPinScreen;

    invoke-virtual {v0}, Lcom/android/phone/EnableIccPinScreen;->finish()V

    .line 127
    return-void
.end method