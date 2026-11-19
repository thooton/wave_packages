.class Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;
.super Ljava/lang/Object;
.source "AccessArrayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/AccessArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfo"
.end annotation


# instance fields
.field private mLabel:Ljava/lang/String;

.field private mPkgAndClassName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonim/borqs/launcher/AccessArrayList;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/AccessArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;->this$0:Lcom/sonim/borqs/launcher/AccessArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;->mLabel:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;->mPkgAndClassName:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgAndClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;->mPkgAndClassName:Ljava/lang/String;

    return-object v0
.end method
