.class Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;
.super Ljava/lang/Object;
.source "MultiPickContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    iput p2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->val$groupPosition:I

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get2(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->val$groupPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    .line 361
    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get2(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->val$groupPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->this$1:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get2(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter$1;->val$groupPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
