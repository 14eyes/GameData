require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102201Trigger = class("Q1102201Trigger", GadgetActorProxy)
Q1102201Trigger.defaultAlias = "Q1102201Trigger"
local Q11022ClientConfig = require("Quest/Client/Q11022ClientConfig")

function Q1102201Trigger:OnPostDataPrepare() end

function Q1102201Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(2.8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1102201Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11022ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1102201)
    end

    self:DestroySelf()
end

function Q1102201Trigger:TriggerOut() end
return Q1102201Trigger
