.class Lcom/android/music/AudioPreview$5;
.super Landroid/content/AsyncQueryHandler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/AudioPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/AudioPreview$5;->this$0:Lcom/android/music/AudioPreview;

    .line 146
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    .line 151
    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    const-string/jumbo v0, "title"

    .line 153
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 156
    const-string/jumbo v1, "artist"

    .line 155
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 158
    const-string/jumbo v2, "_id"

    .line 157
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 160
    const-string/jumbo v3, "_display_name"

    .line 159
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 162
    if-ltz v2, :cond_0

    .line 163
    iget-object v4, p0, Lcom/android/music/AudioPreview$5;->this$0:Lcom/android/music/AudioPreview;

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/music/AudioPreview;->-set0(Lcom/android/music/AudioPreview;J)J

    .line 166
    :cond_0
    if-ltz v0, :cond_4

    .line 167
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v2, p0, Lcom/android/music/AudioPreview$5;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v2}, Lcom/android/music/AudioPreview;->-get9(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    if-ltz v1, :cond_2

    .line 170
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_1

    .line 173
    const-string/jumbo v1, "Your recordings"

    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 171
    if-eqz v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/music/AudioPreview$5;->this$0:Lcom/android/music/AudioPreview;

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Lcom/android/music/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/music/AudioPreview$5;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v1}, Lcom/android/music/AudioPreview;->-get10(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    .line 191
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/android/music/AudioPreview$5;->this$0:Lcom/android/music/AudioPreview;

    invoke-virtual {v0}, Lcom/android/music/AudioPreview;->setNames()V

    .line 194
    return-void

    .line 178
    :cond_4
    if-ltz v3, :cond_5

    .line 179
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/android/music/AudioPreview$5;->this$0:Lcom/android/music/AudioPreview;

    invoke-static {v1}, Lcom/android/music/AudioPreview;->-get9(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 184
    :cond_5
    const-string/jumbo v0, "AudioPreview"

    const-string/jumbo v1, "Cursor had no names for us"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_6
    const-string/jumbo v0, "AudioPreview"

    const-string/jumbo v1, "empty cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
