.class Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"


# static fields
.field static final APPEND_CATEGORY_NAME:Z = false

.field static DEBUG_ADD_REMOVE:Z = false

.field static DEBUG_ALL:Z = false

.field static DEBUG_ALL_ACTIVITIES:Z = false

.field static DEBUG_ANR:Z = false

.field static DEBUG_APP:Z = false

.field static DEBUG_BACKUP:Z = false

.field static DEBUG_BROADCAST:Z = false

.field static DEBUG_BROADCAST_BACKGROUND:Z = false

.field static DEBUG_BROADCAST_LIGHT:Z = false

.field static DEBUG_CLEANUP:Z = false

.field static DEBUG_CONFIGURATION:Z = false

.field static DEBUG_CONTAINERS:Z = false

.field static DEBUG_FOCUS:Z = false

.field static DEBUG_IDLE:Z = false

.field static DEBUG_IMMERSIVE:Z = false

.field static DEBUG_LOCKSCREEN:Z = false

.field static DEBUG_LOCKTASK:Z = false

.field static DEBUG_LRU:Z = false

.field static DEBUG_MU:Z = false

.field static DEBUG_OOM_ADJ:Z = false

.field static DEBUG_PAUSE:Z = false

.field static DEBUG_PERMISSIONS_REVIEW:Z = false

.field static DEBUG_POWER:Z = false

.field static DEBUG_POWER_QUICK:Z = false

.field static DEBUG_PROCESSES:Z = false

.field static final DEBUG_PROCESS_KILL:Z

.field static DEBUG_PROCESS_OBSERVERS:Z = false

.field static DEBUG_PROVIDER:Z = false

.field static DEBUG_PSS:Z = false

.field static DEBUG_RECENTS:Z = false

.field static DEBUG_RELEASE:Z = false

.field static DEBUG_RESULTS:Z = false

.field static DEBUG_SAVED_STATE:Z = false

.field static DEBUG_SCREENSHOTS:Z = false

.field static DEBUG_SERVICE:Z = false

.field static DEBUG_SERVICE_EXECUTING:Z = false

.field static DEBUG_STACK:Z = false

.field static DEBUG_STATES:Z = false

.field static DEBUG_SWITCH:Z = false

.field static DEBUG_TASKS:Z = false

.field static DEBUG_THUMBNAILS:Z = false

.field static DEBUG_TRANSITION:Z = false

.field static DEBUG_UID_OBSERVERS:Z = false

.field static DEBUG_URI_PERMISSION:Z = false

.field static DEBUG_USAGE_STATS:Z = false

.field static DEBUG_USER_LEAVING:Z = false

.field static DEBUG_VISIBILITY:Z = false

.field static DEBUG_VISIBLE_BEHIND:Z = false

.field static DEBUG_WHITELISTS:Z = false

.field static final POSTFIX_ADD_REMOVE:Ljava/lang/String;

.field static final POSTFIX_APP:Ljava/lang/String;

.field static final POSTFIX_BACKUP:Ljava/lang/String;

.field static final POSTFIX_BROADCAST:Ljava/lang/String;

.field static final POSTFIX_CLEANUP:Ljava/lang/String;

.field static final POSTFIX_CONFIGURATION:Ljava/lang/String;

.field static final POSTFIX_CONTAINERS:Ljava/lang/String;

.field static final POSTFIX_FOCUS:Ljava/lang/String;

.field static final POSTFIX_IDLE:Ljava/lang/String;

.field static final POSTFIX_IMMERSIVE:Ljava/lang/String;

.field static final POSTFIX_LOCKSCREEN:Ljava/lang/String;

.field static final POSTFIX_LOCKTASK:Ljava/lang/String;

.field static final POSTFIX_LRU:Ljava/lang/String;

.field static final POSTFIX_MU:Ljava/lang/String; = "_MU"

.field static final POSTFIX_OOM_ADJ:Ljava/lang/String;

.field static final POSTFIX_PAUSE:Ljava/lang/String;

.field static final POSTFIX_POWER:Ljava/lang/String;

.field static final POSTFIX_PROCESSES:Ljava/lang/String;

.field static final POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String;

.field static final POSTFIX_PROVIDER:Ljava/lang/String;

.field static final POSTFIX_PSS:Ljava/lang/String;

.field static final POSTFIX_RECENTS:Ljava/lang/String;

.field static final POSTFIX_RELEASE:Ljava/lang/String;

.field static final POSTFIX_RESULTS:Ljava/lang/String;

.field static final POSTFIX_SAVED_STATE:Ljava/lang/String;

.field static final POSTFIX_SCREENSHOTS:Ljava/lang/String;

.field static final POSTFIX_SERVICE:Ljava/lang/String;

.field static final POSTFIX_SERVICE_EXECUTING:Ljava/lang/String;

.field static final POSTFIX_STACK:Ljava/lang/String;

.field static final POSTFIX_STATES:Ljava/lang/String;

.field static final POSTFIX_SWITCH:Ljava/lang/String;

.field static final POSTFIX_TASKS:Ljava/lang/String;

.field static final POSTFIX_THUMBNAILS:Ljava/lang/String;

.field static final POSTFIX_TRANSITION:Ljava/lang/String;

.field static final POSTFIX_UID_OBSERVERS:Ljava/lang/String;

.field static final POSTFIX_URI_PERMISSION:Ljava/lang/String;

.field static final POSTFIX_USER_LEAVING:Ljava/lang/String;

.field static final POSTFIX_VISIBILITY:Ljava/lang/String;

.field static final POSTFIX_VISIBLE_BEHIND:Ljava/lang/String;

.field static final TAG_AM:Ljava/lang/String; = "ActivityManager"

.field static final TAG_WITH_CLASS_NAME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    .line 96
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    .line 99
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_0

    :cond_0
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_KILL:Z

    .line 102
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    .line 103
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    .line 104
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_4

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_APP:Z

    .line 105
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_5

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    .line 106
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_6

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    .line 107
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_7

    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_BACKGROUND:Z

    .line 108
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    if-nez v0, :cond_8

    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    .line 109
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_9

    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CLEANUP:Z

    .line 110
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_a

    move v0, v2

    :goto_8
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    .line 111
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_b

    move v0, v2

    :goto_9
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_CONTAINERS:Z

    .line 112
    sput-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOCUS:Z

    .line 113
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_c

    move v0, v2

    :goto_a
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IDLE:Z

    .line 114
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_d

    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    .line 115
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_e

    move v0, v2

    :goto_c
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKSCREEN:Z

    .line 116
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_f

    move v0, v2

    :goto_d
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LOCKTASK:Z

    .line 117
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_10

    move v0, v2

    :goto_e
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    .line 118
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_11

    move v0, v2

    :goto_f
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    .line 119
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_12

    move v0, v2

    :goto_10
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    .line 120
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_13

    move v0, v2

    :goto_11
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PAUSE:Z

    .line 121
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_14

    move v0, v2

    :goto_12
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    .line 122
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-nez v0, :cond_15

    move v0, v2

    :goto_13
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    .line 123
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_16

    move v0, v2

    :goto_14
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    .line 124
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_17

    move v0, v2

    :goto_15
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    .line 125
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_18

    move v0, v2

    :goto_16
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    .line 126
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_19

    move v0, v2

    :goto_17
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    .line 127
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_1a

    move v0, v2

    :goto_18
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RECENTS:Z

    .line 128
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_1b

    move v0, v2

    :goto_19
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RELEASE:Z

    .line 129
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_1c

    move v0, v2

    :goto_1a
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_RESULTS:Z

    .line 130
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_1d

    move v0, v2

    :goto_1b
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    .line 131
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_1e

    move v0, v2

    :goto_1c
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SCREENSHOTS:Z

    .line 132
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_1f

    move v0, v2

    :goto_1d
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    .line 133
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_20

    move v0, v2

    :goto_1e
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    .line 134
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_21

    move v0, v2

    :goto_1f
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STACK:Z

    .line 135
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_22

    move v0, v2

    :goto_20
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_STATES:Z

    .line 136
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_23

    move v0, v2

    :goto_21
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SWITCH:Z

    .line 137
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_24

    move v0, v2

    :goto_22
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TASKS:Z

    .line 138
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_25

    move v0, v2

    :goto_23
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_THUMBNAILS:Z

    .line 139
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_26

    move v0, v2

    :goto_24
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_TRANSITION:Z

    .line 140
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_27

    move v0, v2

    :goto_25
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    .line 141
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_28

    move v0, v2

    :goto_26
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_URI_PERMISSION:Z

    .line 142
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_29

    move v0, v2

    :goto_27
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    .line 143
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_2a

    move v0, v2

    :goto_28
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBILITY:Z

    .line 144
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL_ACTIVITIES:Z

    if-nez v0, :cond_2b

    move v0, v2

    :goto_29
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_VISIBLE_BEHIND:Z

    .line 145
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_2c

    move v0, v2

    :goto_2a
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    .line 146
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_2d

    move v0, v2

    :goto_2b
    sput-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    .line 147
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALL:Z

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_WHITELISTS:Z

    .line 150
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    .line 151
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_APP:Ljava/lang/String;

    .line 152
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_BACKUP:Ljava/lang/String;

    .line 153
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_BROADCAST:Ljava/lang/String;

    .line 154
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CLEANUP:Ljava/lang/String;

    .line 155
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    .line 156
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONTAINERS:Ljava/lang/String;

    .line 157
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_IDLE:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_IMMERSIVE:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKSCREEN:Ljava/lang/String;

    .line 161
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    .line 162
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LRU:Ljava/lang/String;

    .line 164
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_OOM_ADJ:Ljava/lang/String;

    .line 165
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PAUSE:Ljava/lang/String;

    .line 166
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_POWER:Ljava/lang/String;

    .line 168
    const-string/jumbo v0, ""

    .line 167
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROCESSES:Ljava/lang/String;

    .line 170
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROVIDER:Ljava/lang/String;

    .line 171
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PSS:Ljava/lang/String;

    .line 172
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    .line 173
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RELEASE:Ljava/lang/String;

    .line 174
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    .line 175
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SAVED_STATE:Ljava/lang/String;

    .line 176
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SCREENSHOTS:Ljava/lang/String;

    .line 177
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SERVICE:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, ""

    .line 178
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SERVICE_EXECUTING:Ljava/lang/String;

    .line 180
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STACK:Ljava/lang/String;

    .line 181
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    .line 182
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    .line 183
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    .line 184
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_THUMBNAILS:Ljava/lang/String;

    .line 185
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TRANSITION:Ljava/lang/String;

    .line 187
    const-string/jumbo v0, ""

    .line 186
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_UID_OBSERVERS:Ljava/lang/String;

    .line 188
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_URI_PERMISSION:Ljava/lang/String;

    .line 189
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    .line 190
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_VISIBILITY:Ljava/lang/String;

    .line 191
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_VISIBLE_BEHIND:Ljava/lang/String;

    .line 23
    return-void

    :cond_2
    move v0, v1

    .line 96
    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 102
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 104
    goto/16 :goto_2

    :cond_5
    move v0, v1

    .line 105
    goto/16 :goto_3

    :cond_6
    move v0, v1

    .line 106
    goto/16 :goto_4

    :cond_7
    move v0, v1

    .line 107
    goto/16 :goto_5

    :cond_8
    move v0, v1

    .line 108
    goto/16 :goto_6

    :cond_9
    move v0, v1

    .line 109
    goto/16 :goto_7

    :cond_a
    move v0, v1

    .line 110
    goto/16 :goto_8

    :cond_b
    move v0, v1

    .line 111
    goto/16 :goto_9

    :cond_c
    move v0, v1

    .line 113
    goto/16 :goto_a

    :cond_d
    move v0, v1

    .line 114
    goto/16 :goto_b

    :cond_e
    move v0, v1

    .line 115
    goto/16 :goto_c

    :cond_f
    move v0, v1

    .line 116
    goto/16 :goto_d

    :cond_10
    move v0, v1

    .line 117
    goto/16 :goto_e

    :cond_11
    move v0, v1

    .line 118
    goto/16 :goto_f

    :cond_12
    move v0, v1

    .line 119
    goto/16 :goto_10

    :cond_13
    move v0, v1

    .line 120
    goto/16 :goto_11

    :cond_14
    move v0, v1

    .line 121
    goto/16 :goto_12

    :cond_15
    move v0, v1

    .line 122
    goto/16 :goto_13

    :cond_16
    move v0, v1

    .line 123
    goto/16 :goto_14

    :cond_17
    move v0, v1

    .line 124
    goto/16 :goto_15

    :cond_18
    move v0, v1

    .line 125
    goto/16 :goto_16

    :cond_19
    move v0, v1

    .line 126
    goto/16 :goto_17

    :cond_1a
    move v0, v1

    .line 127
    goto/16 :goto_18

    :cond_1b
    move v0, v1

    .line 128
    goto/16 :goto_19

    :cond_1c
    move v0, v1

    .line 129
    goto/16 :goto_1a

    :cond_1d
    move v0, v1

    .line 130
    goto/16 :goto_1b

    :cond_1e
    move v0, v1

    .line 131
    goto/16 :goto_1c

    :cond_1f
    move v0, v1

    .line 132
    goto/16 :goto_1d

    :cond_20
    move v0, v1

    .line 133
    goto/16 :goto_1e

    :cond_21
    move v0, v1

    .line 134
    goto/16 :goto_1f

    :cond_22
    move v0, v1

    .line 135
    goto/16 :goto_20

    :cond_23
    move v0, v1

    .line 136
    goto/16 :goto_21

    :cond_24
    move v0, v1

    .line 137
    goto/16 :goto_22

    :cond_25
    move v0, v1

    .line 138
    goto/16 :goto_23

    :cond_26
    move v0, v1

    .line 139
    goto/16 :goto_24

    :cond_27
    move v0, v1

    .line 140
    goto/16 :goto_25

    :cond_28
    move v0, v1

    .line 141
    goto/16 :goto_26

    :cond_29
    move v0, v1

    .line 142
    goto/16 :goto_27

    :cond_2a
    move v0, v1

    .line 143
    goto/16 :goto_28

    :cond_2b
    move v0, v1

    .line 144
    goto/16 :goto_29

    :cond_2c
    move v0, v1

    .line 145
    goto/16 :goto_2a

    :cond_2d
    move v0, v1

    .line 146
    goto/16 :goto_2b
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
