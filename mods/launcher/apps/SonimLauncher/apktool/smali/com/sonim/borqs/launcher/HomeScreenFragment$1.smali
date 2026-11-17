.class Lcom/sonim/borqs/launcher/HomeScreenFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "HomeScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/HomeScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/HomeScreenFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    .line 188
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v5, 0x0

    .line 190
    const-string/jumbo v1, "HomeScreenFragment"

    const-string/jumbo v2, " battery  "

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 192
    const-string/jumbo v2, "HomeScreenFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " battery plug : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string/jumbo v2, "status"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 198
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 199
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-static {v0, v5}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->-set0(Lcom/sonim/borqs/launcher/HomeScreenFragment;Z)Z

    .line 200
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->onProfileChange()V

    .line 201
    return-void

    .line 204
    :cond_0
    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-static {v1, v6}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->-set0(Lcom/sonim/borqs/launcher/HomeScreenFragment;Z)Z

    .line 207
    const-string/jumbo v1, "level"

    .line 206
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 208
    const-string/jumbo v2, "scale"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 210
    if-ltz v1, :cond_1

    if-lez v2, :cond_1

    .line 211
    mul-int/lit8 v0, v1, 0x64

    div-int/2addr v0, v2

    .line 213
    :cond_1
    const-string/jumbo v1, "HomeScreenFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " battery  level : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->-get0(Lcom/sonim/borqs/launcher/HomeScreenFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->-get0(Lcom/sonim/borqs/launcher/HomeScreenFragment;)Landroid/widget/TextView;

    move-result-object v1

    .line 216
    const v2, 0x7f02002d

    .line 215
    invoke-virtual {v1, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 217
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    new-array v2, v6, [Ljava/lang/Object;

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 217
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3, v2}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 219
    iget-object v2, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-static {v2}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->-get0(Lcom/sonim/borqs/launcher/HomeScreenFragment;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 221
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->-get0(Lcom/sonim/borqs/launcher/HomeScreenFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_2
    :goto_0
    return-void

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-static {v0, v5}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->-set0(Lcom/sonim/borqs/launcher/HomeScreenFragment;Z)Z

    .line 226
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->onProfileChange()V

    goto :goto_0
.end method
