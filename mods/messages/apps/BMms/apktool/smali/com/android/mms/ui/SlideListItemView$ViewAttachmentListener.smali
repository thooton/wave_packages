.class Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;
.super Ljava/lang/Object;
.source "SlideListItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewAttachmentListener"
.end annotation


# instance fields
.field private final mAttachmentName:Ljava/lang/String;

.field private final mAttachmentUri:Landroid/net/Uri;

.field private final mImportVcard:Z

.field private final mLookupUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/mms/ui/SlideListItemView;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mAttachmentUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mImportVcard:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/mms/ui/SlideListItemView;Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mAttachmentUri:Landroid/net/Uri;

    .line 152
    iput-object p3, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mAttachmentName:Ljava/lang/String;

    .line 153
    iput-boolean p4, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mImportVcard:Z

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mLookupUri:Landroid/net/Uri;

    .line 155
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/SlideListItemView;Landroid/net/Uri;Ljava/lang/String;ZLandroid/net/Uri;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p2, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mAttachmentUri:Landroid/net/Uri;

    .line 159
    iput-object p3, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mAttachmentName:Ljava/lang/String;

    .line 160
    iput-boolean p4, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mImportVcard:Z

    .line 161
    iput-object p5, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mLookupUri:Landroid/net/Uri;

    .line 162
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mAttachmentUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mAttachmentName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideListItemView;->-get0(Lcom/android/mms/ui/SlideListItemView;)Landroid/content/Context;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mImportVcard:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0702bd

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideListItemView;->-get0(Lcom/android/mms/ui/SlideListItemView;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f07027a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    .line 171
    new-instance v0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;-><init>(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)V

    .line 212
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    invoke-static {v3}, Lcom/android/mms/ui/SlideListItemView;->-get0(Lcom/android/mms/ui/SlideListItemView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    const v3, 0x7f070266

    .line 212
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 218
    :cond_0
    return-void

    .line 168
    :cond_1
    const v0, 0x7f070166

    goto :goto_0
.end method

.method public save()V
    .locals 5

    .prologue
    .line 220
    const v0, 0x7f070261

    .line 221
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mAttachmentUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->mAttachmentName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/SlideListItemView;->-wrap0(Lcom/android/mms/ui/SlideListItemView;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_0

    .line 223
    const v0, 0x7f070260

    .line 224
    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    invoke-static {v2}, Lcom/android/mms/ui/SlideListItemView;->-get0(Lcom/android/mms/ui/SlideListItemView;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    .line 225
    const-string/jumbo v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 224
    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    invoke-static {v1}, Lcom/android/mms/ui/SlideListItemView;->-get0(Lcom/android/mms/ui/SlideListItemView;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    return-void
.end method
