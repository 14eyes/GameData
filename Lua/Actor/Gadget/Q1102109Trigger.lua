require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102109Trigger = class("Q1102109Trigger", GadgetActorProxy)
Q1102109Trigger.defaultAlias = "Q1102109Trigger"
local Q11021ClientConfig = require("Quest/Client/Q11021ClientConfig")

function Q1102109Trigger:OnPostDataPrepare() end

function Q1102109Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1102109Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11021ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1102109)
    end

    self:DestroySelf()
end

function Q1102109Trigger:TriggerOut() end
return Q1102109Trigger
