require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100901Trigger = class("Q100901Trigger", GadgetActorProxy)
Q100901Trigger.defaultAlias = "Q100901Trigger"
local Q1009ClientConfig = require("Quest/Client/Q1009ClientConfig")

function Q100901Trigger:OnPostDataPrepare() end

function Q100901Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100901Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1009ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100901)
    end

    self:DestroySelf()
end

function Q100901Trigger:TriggerOut() end
return Q100901Trigger
