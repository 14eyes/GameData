require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302503_Trigger = class("Q302503_Trigger", GadgetActorProxy)
Q302503_Trigger.defaultAlias = "Q302503_Trigger"
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

local this
local subIDs = Q3025ClientConfig.SubIDs
local npcs = Q3025ClientConfig.Npcs
local datas = Q3025ClientConfig.Datas

function Q302503_Trigger:OnPostDataPrepare()
    print("[MainId: 3025][Trigger: Q302503_Trigger] OnPostDataPrepare")
    this = self
end

function Q302503_Trigger:OnPostComponentPrepare()
    print("[MainId: 3025][Trigger: Q302503_Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(83, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302503_Trigger:TriggerIn()
    print("[MainId: 3025][Trigger: Q302503_Trigger] TriggerIn")
    local actor = actorMgr:GetActor("3025")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = avatarForward.z / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    local v = -avatarForward.x / math.sqrt(avatarForward.x ^ 2 + avatarForward.z ^ 2)
    avatarPos.x = avatarPos.x + n
    avatarPos.z = avatarPos.z + v
    actor:CreateQuestNpcByIdWithPos(302503, 13068, 0, avatarPos, avatarForward)
    actorMgr:GetActor("3025"):RequestInteraction(npcs.Npc13068Data.alias)
    this:DestroySelf()
end

function Q302503_Trigger:TriggerOut()
    print("[MainId: 3025][Trigger: Q302503_Trigger] TriggerOut")
end

return Q302503_Trigger
