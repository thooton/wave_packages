.class Lcom/sonim/borqs/launcher/LauncherActivity$1;
.super Ljava/util/ArrayList;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$1;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 233
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    const-string/jumbo v0, "com.android.mms/com.android.mms.ui.ConversationList"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$1;->add(Ljava/lang/Object;)Z

    .line 236
    const-string/jumbo v0, "com.android.contacts/com.android.contacts.activities.PeopleActivity"

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/LauncherActivity$1;->add(Ljava/lang/Object;)Z

    .line 1
    return-void
.end method
