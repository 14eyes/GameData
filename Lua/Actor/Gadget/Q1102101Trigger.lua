require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102101Trigger = class("Q1102101Trigger", GadgetActorProxy)
Q1102101Trigger.defaultAlias = "Q1102101Trigger"
local Q11021ClientConfig = require("Quest/Client/Q11021ClientConfig")

function Q1102101Trigger:OnPostDataPrepare() end

function Q1102101Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(9, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1102101Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11021ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1102101)
    end

    self:DestroySelf()
end

function Q1102101Trigger:TriggerOut() end
return Q1102101Trigger
