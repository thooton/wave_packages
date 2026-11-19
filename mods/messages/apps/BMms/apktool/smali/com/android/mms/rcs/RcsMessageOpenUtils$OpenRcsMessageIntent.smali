.class public Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;
.super Landroid/content/Intent;
.source "RcsMessageOpenUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsMessageOpenUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenRcsMessageIntent"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 602
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 610
    invoke-super {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-super {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 611
    const-string/jumbo v0, "OpenRcsMessageIntent removed special characters from path"

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 612
    invoke-super {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "[^\\x00-\\x7F]"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 614
    :cond_0
    invoke-super {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
