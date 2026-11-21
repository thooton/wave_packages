.class public Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;
.super Ljava/lang/Object;
.source "PermissionsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager$PermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRequestCodeId:I

.field private final mRequestIdToCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager$PermissionsResultCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->mRequestIdToCallback:Ljava/util/Map;

    .line 30
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    const-class v1, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->sInstance:Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->sInstance:Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;

    .line 38
    :cond_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->sInstance:Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getNextRequestId()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 42
    :try_start_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->mRequestCodeId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->mRequestCodeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->mRequestIdToCallback:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager$PermissionsResultCallback;

    .line 70
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->mRequestIdToCallback:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p3}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsUtil;->allGranted([I)Z

    move-result v1

    .line 73
    invoke-interface {v0, v1}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager$PermissionsResultCallback;->onRequestPermissionsResult(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 74
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized requestPermissions(Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager$PermissionsResultCallback;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 4
    .param p1    # Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager$PermissionsResultCallback;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {v0, p3}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsUtil;->getDeniedPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit p0

    .line 52
    return-void

    .line 55
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->getNextRequestId()I

    move-result v1

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 59
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->mRequestIdToCallback:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    if-eqz p2, :cond_1

    .line 61
    invoke-static {p2, v1, v0}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsUtil;->requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 65
    return-void

    .line 63
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/permissions/PermissionsManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v0}, Lcom/nuance/flext9_OEM/input/permissions/PermissionsActivity;->run(Landroid/content/Context;I[Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
