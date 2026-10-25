require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600435Trigger = class("Q7600435Trigger", GadgetActorProxy)
Q7600435Trigger.defaultAlias = "Q7600435Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600435Trigger:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3, arg4)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    actorMgr:GetActor("76004"):CreateQuestNpcByIdWithPos(arg1, arg2, arg4, avatarPos, avatarForward)
end

function Q7600435Trigger:OnPostDataPrepare()
    print("Q7600435Trigger - OnPostDataPrepare")
    this = self
end

function Q7600435Trigger:OnPostComponentPrepare()
    print("Q7600435Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600435Trigger:TriggerIn()
    print("Q7600435Trigger - TriggerIn")
    this:CreateQuestNpcFaceToPlayer(7600435, 1005, 0.8, 0)
    actorMgr:GetActor("76004"):RequestInteraction(npcs.Paimon.alias, "", true)
    this:DestroySelf()
end

function Q7600435Trigger:PreTriggerIn()
    print("Q7600435Trigger - PreTriggerIn")
end

function Q7600435Trigger:LightUpTriggerIn()
    print("Q7600435Trigger - LightUpTriggerIn")
end

function Q7600435Trigger:TriggerOut()
    print("Q7600435Trigger - TriggerOut")
end

return Q7600435Trigger
