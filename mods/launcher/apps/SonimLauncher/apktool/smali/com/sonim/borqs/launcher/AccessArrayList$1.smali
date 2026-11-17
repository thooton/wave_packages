.class Lcom/sonim/borqs/launcher/AccessArrayList$1;
.super Ljava/lang/Object;
.source "AccessArrayList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/AccessArrayList;->getAppNameComparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/AccessArrayList;

.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/AccessArrayList;Ljava/text/Collator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/AccessArrayList$1;->this$0:Lcom/sonim/borqs/launcher/AccessArrayList;

    iput-object p2, p0, Lcom/sonim/borqs/launcher/AccessArrayList$1;->val$collator:Ljava/text/Collator;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final compare(Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;)I
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonim/borqs/launcher/AccessArrayList$1;->val$collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 89
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 87
    check-cast p1, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;

    check-cast p2, Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sonim/borqs/launcher/AccessArrayList$1;->compare(Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;Lcom/sonim/borqs/launcher/AccessArrayList$AppInfo;)I

    move-result v0

    return v0
.end method
