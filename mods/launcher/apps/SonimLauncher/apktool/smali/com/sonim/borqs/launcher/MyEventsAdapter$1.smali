.class final Lcom/sonim/borqs/launcher/MyEventsAdapter$1;
.super Ljava/lang/Object;
.source "MyEventsAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/MyEventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonim/borqs/launcher/MyEventsItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/sonim/borqs/launcher/MyEventsItem;Lcom/sonim/borqs/launcher/MyEventsItem;)I
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p2}, Lcom/sonim/borqs/launcher/MyEventsItem;->getEventTypeAndPriority()I

    move-result v0

    invoke-virtual {p1}, Lcom/sonim/borqs/launcher/MyEventsItem;->getEventTypeAndPriority()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 118
    check-cast p1, Lcom/sonim/borqs/launcher/MyEventsItem;

    check-cast p2, Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-virtual {p0, p1, p2}, Lcom/sonim/borqs/launcher/MyEventsAdapter$1;->compare(Lcom/sonim/borqs/launcher/MyEventsItem;Lcom/sonim/borqs/launcher/MyEventsItem;)I

    move-result v0

    return v0
.end method
