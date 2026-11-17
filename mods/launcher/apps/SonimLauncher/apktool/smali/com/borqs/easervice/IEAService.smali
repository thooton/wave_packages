.class public interface abstract Lcom/borqs/easervice/IEAService;
.super Ljava/lang/Object;
.source "IEAService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/borqs/easervice/IEAService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCurrentEvents(ILjava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/borqs/easervice/EventInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerEventCallback(Lcom/borqs/easervice/IEventCallback;ILjava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterEventCallback(Lcom/borqs/easervice/IEventCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
