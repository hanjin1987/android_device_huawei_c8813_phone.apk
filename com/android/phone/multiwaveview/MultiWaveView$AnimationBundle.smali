.class Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;
.super Ljava/util/ArrayList;
.source "MultiWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/multiwaveview/MultiWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationBundle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/phone/multiwaveview/Tweener;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57b2878d90ed8b98L


# instance fields
.field private mSuspended:Z

.field final synthetic this$0:Lcom/android/phone/multiwaveview/MultiWaveView;


# direct methods
.method private constructor <init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->this$0:Lcom/android/phone/multiwaveview/MultiWaveView;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/multiwaveview/MultiWaveView;Lcom/android/phone/multiwaveview/MultiWaveView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;-><init>(Lcom/android/phone/multiwaveview/MultiWaveView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->size()I

    move-result v1

    .line 150
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 151
    invoke-virtual {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/Tweener;

    .line 152
    .local v0, anim:Lcom/android/phone/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 154
    .end local v0           #anim:Lcom/android/phone/multiwaveview/Tweener;
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->clear()V

    .line 155
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 140
    iget-boolean v3, p0, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->mSuspended:Z

    if-eqz v3, :cond_5

    .line 146
    :cond_4
    return-void

    .line 141
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->size()I

    move-result v1

    .line 142
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v1, :cond_4

    .line 143
    invoke-virtual {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/Tweener;

    .line 144
    .local v0, anim:Lcom/android/phone/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method public stop()V
    .registers 5

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->size()I

    move-result v1

    .line 159
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_15

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/multiwaveview/Tweener;

    .line 161
    .local v0, anim:Lcom/android/phone/multiwaveview/Tweener;
    iget-object v3, v0, Lcom/android/phone/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->end()V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 163
    .end local v0           #anim:Lcom/android/phone/multiwaveview/Tweener;
    :cond_15
    invoke-virtual {p0}, Lcom/android/phone/multiwaveview/MultiWaveView$AnimationBundle;->clear()V

    .line 164
    return-void
.end method
