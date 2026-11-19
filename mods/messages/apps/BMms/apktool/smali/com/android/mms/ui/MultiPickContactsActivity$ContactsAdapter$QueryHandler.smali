.class Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MultiPickContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    .line 326
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 327
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$QueryHandler;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->-get0(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;)Lcom/android/mms/ui/MultiPickContactsActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/mms/ui/MultiPickContactsActivity;->-wrap2(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;)V

    .line 332
    return-void
.end method
