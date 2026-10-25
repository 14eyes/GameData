require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100009Trigger = class("Q100009Trigger", GadgetActorProxy)
Q100009Trigger.defaultAlias = "Q100009Trigger"
local Q1000ClientConfig = require("Quest/Client/Q1000ClientConfig")

function Q100009Trigger:OnPostDataPrepare() end

function Q100009Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(7.5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100009Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1000ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100009)
    end

    self:DestroySelf()
end

function Q100009Trigger:TriggerOut() end
return Q100009Trigger
