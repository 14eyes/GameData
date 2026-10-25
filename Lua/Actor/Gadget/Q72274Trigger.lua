require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q72274Trigger = class("Q72274Trigger", GadgetActorProxy)
Q72274Trigger.defaultAlias = "Q72274Trigger"
local Q72274ClientConfig = require("Quest/Client/Q72274ClientConfig")

local subIDs = Q72274ClientConfig.SubIDs
local npcs = Q72274ClientConfig.Npcs

function Q72274Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q72274Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, sceneData:GetDummyPoint(40050, "WQ-7227401"), self.TriggerIn, self.TriggerOut)
end

function Q72274Trigger:TriggerIn()
    print("TriggerIn")
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = -0.05
    local v = 1
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * v
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    local v2 = avatarForward
    v2.x = v2.x * -0.1
    v2.z = v2.z * -1
    actorMgr:GetActor("72274"):CreateQuestNpcByIdWithPos(7227401, npcs.PaimonData.id, 40050, avatarPos, M.Dir2Euler(v2))
    actorMgr:GetActor("72274"):RequestInteraction(npcs.PaimonData.alias)
    self:DestroySelf()
end

function Q72274Trigger:TriggerOut()
    print("TriggerOut")
end

return Q72274Trigger
