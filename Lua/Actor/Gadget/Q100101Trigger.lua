require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100101Trigger = class("Q100101Trigger", GadgetActorProxy)
Q100101Trigger.defaultAlias = "Q100101Trigger"
local Q1001ClientConfig = require("Quest/Client/Q1001ClientConfig")

function Q100101Trigger:OnPostDataPrepare() end

function Q100101Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100101Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1001ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100101)
    end

    self:DestroySelf()
end

function Q100101Trigger:TriggerOut() end
return Q100101Trigger
