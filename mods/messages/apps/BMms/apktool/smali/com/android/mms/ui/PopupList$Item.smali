.class public Lcom/android/mms/ui/PopupList$Item;
.super Ljava/lang/Object;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public final id:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput p1, p0, Lcom/android/mms/ui/PopupList$Item;->id:I

    .line 211
    iput-object p2, p0, Lcom/android/mms/ui/PopupList$Item;->title:Ljava/lang/String;

    .line 212
    return-void
.end method


# virtual methods
.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/mms/ui/PopupList$Item;->title:Ljava/lang/String;

    .line 216
    return-void
.end method
