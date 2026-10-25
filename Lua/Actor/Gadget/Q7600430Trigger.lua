require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600430Trigger = class("Q7600430Trigger", GadgetActorProxy)
Q7600430Trigger.defaultAlias = "Q7600430Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600430Trigger:CreateQuestNpcFaceToPlayer(arg1, arg2, arg3, arg4)
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    avatarPos.x = avatarPos.x + avatarForward.x * arg3
    avatarPos.z = avatarPos.z + avatarForward.z * arg3
    avatarForward.x = avatarForward.x * -1
    avatarForward.z = avatarForward.z * -1
    actorMgr:GetActor("76004"):CreateQuestNpcByIdWithPos(arg1, arg2, arg4, avatarPos, avatarForward)
end

function Q7600430Trigger:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Q7600430Trigger:OnPostDataPrepare()
    print("Q7600430Trigger - OnPostDataPrepare")
    this = self
end

function Q7600430Trigger:OnPostComponentPrepare()
    print("Q7600430Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600430Trigger:TriggerIn()
    print("Q7600430Trigger - TriggerIn")
    this:CreateQuestNpcFaceToPlayer(7600430, 1005, 0.8, 0)
    actorMgr:GetActor("76004"):RequestInteraction(npcs.Paimon.alias, "", true)
    this:ActorDestroy("Q7600430Trigger")
end

function Q7600430Trigger:PreTriggerIn()
    print("Q7600430Trigger - PreTriggerIn")
end

function Q7600430Trigger:LightUpTriggerIn()
    print("Q7600430Trigger - LightUpTriggerIn")
end

function Q7600430Trigger:TriggerOut()
    print("Q7600430Trigger - TriggerOut")
end

return Q7600430Trigger
