.class Lcom/android/mms/ui/MessagingPreferenceActivity$13;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->setChatWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$13;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 1475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1479
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    instance-of v0, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1481
    check-cast p1, Landroid/widget/ImageView;

    .line 1482
    check-cast p2, Landroid/graphics/drawable/Drawable;

    .line 1483
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1484
    const/4 v0, 0x1

    return v0

    .line 1486
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
