.class Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;
.super Ljava/lang/Object;
.source "EventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/borqs/eventnotifier/EventNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingRequestHolder"
.end annotation


# instance fields
.field callback:Lcom/borqs/eventnotifier/EventCallback;

.field eventTypes:I

.field filterText:Ljava/lang/String;

.field missedEventsOnly:Z

.field final synthetic this$0:Lcom/borqs/eventnotifier/EventNotifier;


# direct methods
.method public constructor <init>(Lcom/borqs/eventnotifier/EventNotifier;Lcom/borqs/eventnotifier/EventCallback;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;->this$0:Lcom/borqs/eventnotifier/EventNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;->callback:Lcom/borqs/eventnotifier/EventCallback;

    .line 243
    iput p3, p0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;->eventTypes:I

    .line 244
    iput-object p4, p0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;->filterText:Ljava/lang/String;

    .line 245
    iput-boolean p5, p0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;->missedEventsOnly:Z

    .line 246
    return-void
.end method
