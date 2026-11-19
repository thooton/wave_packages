.class public interface abstract Lcom/borqs/easervice/IEventCallback;
.super Ljava/lang/Object;
.source "IEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/borqs/easervice/IEventCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract notifyEvent(Lcom/borqs/easervice/EventInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
