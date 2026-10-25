require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100000Trigger = class("Q100000Trigger", GadgetActorProxy)
Q100000Trigger.defaultAlias = "Q100000Trigger"
local Q1000ClientConfig = require("Quest/Client/Q1000ClientConfig")

function Q100000Trigger:OnPostDataPrepare() end

function Q100000Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100000Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1000ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100000)
    end

    self:DestroySelf()
end

function Q100000Trigger:TriggerOut() end
return Q100000Trigger
