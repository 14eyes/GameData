local Common = common

if not Common then
    Common = require("Base/Common")
end

common = Common
require("Config/DefineCommon")

local SceneData = sceneData

if not SceneData then
    SceneData = require("Base/SceneData")
end

sceneData = SceneData
currSceneData = nil
local ActorData = actorData

if not ActorData then
    ActorData = require("Actor/ActorData")
end

actorData = ActorData
local ActorManager = actorMgr

if not ActorManager then
    ActorManager = require("Actor/ActorManager")
end

actorMgr = ActorManager
actorUtils = CS.MoleMole.ActorUtils
luaTaskUtils = CS.MoleMole.LuaTaskUtils
actorHandlerUtils = CS.MoleMole.LuaActorHandlerUtils
curtainUtils = CS.MoleMole.CurtainUtils
campHelper = CS.MoleMole.CampHelper
local GadgetFactory = gadgetFactory

if not GadgetFactory then
    GadgetFactory = require("Actor/Gadget/GadgetFactory")
end

gadgetFactory = GadgetFactory
globalActor = nil
local GlobalActorConfig = globalCfg

if not GlobalActorConfig then
    GlobalActorConfig = require("Actor/GlobalActorConfig")
end

globalCfg = GlobalActorConfig
local NpcModeType = npcMode

if not NpcModeType then
    NpcModeType = require("Actor/Npc/NpcMode/NpcModeType")
end

npcMode = NpcModeType
local NPCEventType = NpcEventType

if not NPCEventType then
    NPCEventType = require("Actor/Npc/NPCEventType")
end

NpcEventType = NPCEventType
local DailyNPCManager = DailyNpcManager

if not DailyNPCManager then
    DailyNPCManager = require("Actor/DailyNPCManager")
end

DailyNpcManager = DailyNPCManager
local NPCUtil = NpcUtil

if not NPCUtil then
    NPCUtil = require("Actor/Npc/NPCUtil")
end

NpcUtil = NPCUtil

ActorCommandType = {
    INVALID = -1,
    MOVE = 0,
    MOVE_ROUTE = 1,
    FREE_STYLE = 2,
    FREE_STYLE_CANCEL_DEFAULT = 3,
    FREE_STATE_TRIGGER = 4,
    SIT_ON_CHAIR = 5,
    STAND_FROM_CHAIR = 6,
    NOTIFY = 7,
    HIDE = 8,
    DESTROY = 9,
    ATTACH = 10,
    LOOKAT = 11,
    START_CALL = 12,
    ADD_GENERAL_MARK = 13,
    QUEST_MOVE_TASK = 14,
    DISABLE_INTEE_HEADCTRL = 15,
    QUEST_FORCE_AVATAR_WALK = 16,
    QUEST_NARRATOR_TASK = 17,
    QUEST_MOVE_PAUSE_TASK = 18,
    WALK_SPEED = 19,
    ATTACH_EFFECT = 20,
    EMO_SYNC = 21,
    CHANGE_NPC_MAT = 22,
    NPC_FOLLOW_TASK = 23,
    NPC_DYN_TO_GROUND = 24,
    NPC_RUN_AWAY_TASK = 25,
    CHECK_PLAYER_DIST_TASK = 26,
    NPC_SHOW_WITH_LEVEL_TAG = 27,
    FLOATING_WALK_SPEED = 28,
    ATTACH_OPERATE = 29,
    SET_FLOATNG_HEIGHT = 30,
    NPC_AVATAR_CHANGE_PENDANT_VISUAL = 31
}

LuaVirtualType = {
    None = 0,
    INpcActionCond = 1,
    NpcActionSceneCondition = 2,
    NpcActionDayNightCondition = 3,
    NpcActionAvatarFetterCondition = 4,
    NpcActionHomeEventCondition = 5,
    NpcActionMainQuestCondition = 6,
    NpcActionSubQuestCondition = 7,
    NpcActionScenePointUnlockCondition = 8,
    NpcActionQuestGlobalVarCondition = 9,
    NpcActionActivityCondCondition = 10,
    NpcActionLevelTagCondition = 11,
    NpcActionTaskVarCondition = 12,
    NpcActionDistToPlayerCondition = 13,
    NpcActionCardEventCondition = 14,
    NpcActionCommonCondition = 15,
    NpcActionLoungeEventCondition = 16,
    NpcActionAvatarConfigIdCondition = 17,
    NpcActionAvatarFeatureTagCondition = 18,
    NpcActionIsPlayerInVehicleCondition = 19,
    NpcActionIsPlayerInAnimStateCondition = 20,
    NpcActionIsInPlayerRangeCondition = 21,
    NpcActionIsInCameraViewCondition = 22,
    NpcActionGlobalValueCondition = 23,
    NpcActionAvatarGVCondition = 24,
    IPointType = 50,
    StandardPoint = 51,
    HomeBornPos = 52,
    NpcCurBornPos = 53,
    NpcHomeEventPos = 54,
    CardShowPos = 55,
    INpcReactionAction = 60,
    NpcReactionAction = 61,
    NpcWaitSecondsReactionAction = 62,
    NpcTurnToPlayerReactionAction = 63,
    NpcFaceToPlayerReactionAction = 64,
    NpcTurnBackReactionAction = 65,
    NpcPlayFreestyleReactionAction = 66,
    NpcPlayEmoReactionAction = 67,
    NpcPlaySpeechBubbleReactionAction = 68,
    NpcPlayReminderReactionAction = 69
}

LuaActorHandlerType = {None = 0, AvatarFightPropWatcher = 1}
EActorTargetType = {Avatar = 0, Npc = 1, QuestGadget = 2, GroupGadget = 3}
NpcNotifyPriority = {Max = 999999}
QuestLimitRegionType = {Sphere = 0, Cube = 1, Polygon = 2}
QuestLimitWarningType = {Banner = 0, Narrator = 1, Reminder = 2}
