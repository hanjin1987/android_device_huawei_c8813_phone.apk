.class Lcom/android/phone/CallFeaturesSetting$3;
.super Landroid/os/Handler;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/CallFeaturesSetting;)V
    .registers 2
    .parameter

    .prologue
    .line 1174
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1177
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1178
    .local v4, result:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 1179
    .local v1, done:Z
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_da

    .line 1225
    :cond_c
    :goto_c
    if-eqz v1, :cond_22

    .line 1227
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$600(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 1228
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    const/16 v6, 0x259

    #calls: Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V
    invoke-static {v5, v6}, Lcom/android/phone/CallFeaturesSetting;->access$1100(Lcom/android/phone/CallFeaturesSetting;I)V

    .line 1230
    :cond_1d
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$1200(Lcom/android/phone/CallFeaturesSetting;)V

    .line 1232
    :cond_22
    return-void

    .line 1181
    :pswitch_23
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #setter for: Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;
    invoke-static {v7, v4}, Lcom/android/phone/CallFeaturesSetting;->access$302(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;

    .line 1182
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->access$500(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_33

    move v5, v6

    :cond_33
    #setter for: Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z
    invoke-static {v7, v5}, Lcom/android/phone/CallFeaturesSetting;->access$402(Lcom/android/phone/CallFeaturesSetting;Z)Z

    .line 1185
    const/4 v1, 0x1

    .line 1186
    goto :goto_c

    .line 1188
    :pswitch_38
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->access$600(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v7, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_75

    .line 1190
    const-string v7, "CallFeaturesSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in setting fwd# "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_75
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z
    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->access$700(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v0

    .line 1196
    .local v0, completed:Z
    if-eqz v0, :cond_c

    .line 1197
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->access$800(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_8b

    .line 1199
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #calls: Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$900(Lcom/android/phone/CallFeaturesSetting;)V

    goto :goto_c

    .line 1201
    :cond_8b
    const-string v7, "CallFeaturesSetting"

    const-string v8, "Overall fwd changes completed in failure. Check if we need to try rollback for some settings."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #setter for: Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v7, v5}, Lcom/android/phone/CallFeaturesSetting;->access$1002(Lcom/android/phone/CallFeaturesSetting;Z)Z

    .line 1204
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$600(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1206
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_a5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c7

    .line 1207
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1208
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v5, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_a5

    .line 1210
    const-string v5, "CallFeaturesSetting"

    const-string v7, "Rollback will be required"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #setter for: Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v5, v6}, Lcom/android/phone/CallFeaturesSetting;->access$1002(Lcom/android/phone/CallFeaturesSetting;Z)Z

    .line 1215
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_c7
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting$3;->this$0:Lcom/android/phone/CallFeaturesSetting;

    #getter for: Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z
    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->access$1000(Lcom/android/phone/CallFeaturesSetting;)Z

    move-result v5

    if-nez v5, :cond_d6

    .line 1216
    const-string v5, "CallFeaturesSetting"

    const-string v6, "No rollback needed."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_d6
    const/4 v1, 0x1

    .line 1219
    goto/16 :goto_c

    .line 1179
    nop

    :pswitch_data_da
    .packed-switch 0x1f4
        :pswitch_23
        :pswitch_38
    .end packed-switch
.end method
