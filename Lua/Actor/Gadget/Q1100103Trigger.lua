require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1100103Trigger = class("Q1100103Trigger", GadgetActorProxy)
Q1100103Trigger.defaultAlias = "Q1100103Trigger"
local Q11001ClientConfig = require("Quest/Client/Q11001ClientConfig")

function Q1100103Trigger:OnPostDataPrepare() end

function Q1100103Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100103Trigger:TriggerIn() end

function Q1100103Trigger:TriggerOut()
    print("OUT Q1100103Trigger")
    local actor = actorMgr:GetActor(Q11001ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 1100103)
    end

    self:DestroySelf()
end

return Q1100103Trigger
