.class Lcom/android/phone/multiwaveview/GlowPadView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/android/phone/multiwaveview/GlowPadView;)V
    .registers 2
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/phone/multiwaveview/GlowPadView$2;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6
    .parameter "animator"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView$2;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->ping()V

    .line 170
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView$2;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/multiwaveview/GlowPadView$2;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    #getter for: Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterX:F
    invoke-static {v2}, Lcom/android/phone/multiwaveview/GlowPadView;->access$100(Lcom/android/phone/multiwaveview/GlowPadView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/phone/multiwaveview/GlowPadView$2;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    #getter for: Lcom/android/phone/multiwaveview/GlowPadView;->mWaveCenterY:F
    invoke-static {v3}, Lcom/android/phone/multiwaveview/GlowPadView;->access$200(Lcom/android/phone/multiwaveview/GlowPadView;)F

    move-result v3

    #calls: Lcom/android/phone/multiwaveview/GlowPadView;->switchToState(IFF)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/multiwaveview/GlowPadView;->access$300(Lcom/android/phone/multiwaveview/GlowPadView;IFF)V

    .line 171
    iget-object v0, p0, Lcom/android/phone/multiwaveview/GlowPadView$2;->this$0:Lcom/android/phone/multiwaveview/GlowPadView;

    #calls: Lcom/android/phone/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V
    invoke-static {v0}, Lcom/android/phone/multiwaveview/GlowPadView;->access$400(Lcom/android/phone/multiwaveview/GlowPadView;)V

    .line 172
    return-void
.end method
