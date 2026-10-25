require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102001Trigger = class("Q1102001Trigger", GadgetActorProxy)
Q1102001Trigger.defaultAlias = "Q1102001Trigger"
local Q11020ClientConfig = require("Quest/Client/Q11020ClientConfig")

function Q1102001Trigger:OnPostDataPrepare() end

function Q1102001Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(16.5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1102001Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11020ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1102001)
    end

    self:DestroySelf()
end

function Q1102001Trigger:TriggerOut() end
return Q1102001Trigger
