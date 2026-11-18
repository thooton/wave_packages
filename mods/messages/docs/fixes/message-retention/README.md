# Keep saved SMS and MMS

Messages no longer shows the stock “Set limits / No limits” startup prompt. The
legacy startup scan could also enable automatic deletion without prompting if no
conversation exceeded the limits. Neither branch runs anymore.

Both SMS/MMS retention checks return disabled regardless of stored preferences.
The age-retention receiver no longer starts the deletion service. Settings hides
both the count and age controls from either stock settings layout. Manual
deletion, the memory-status screen, low-storage warnings, and network delivery
validity settings are unchanged. No manifest or resource edits are needed.

Verified on the XP3800 at `cc145bb`: no prompt after a cold inbox launch, and
Settings shows Memory status with no message-limit controls. The post-install
database integrity check passed with no missing pre-install SMS or MMS IDs.
