.class Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;
.super Ljava/lang/Object;
.source "ApplicationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/ApplicationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppInfo"
.end annotation


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private appName:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/ApplicationAdapter;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;->this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;->appName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method
