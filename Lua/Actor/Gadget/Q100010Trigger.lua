require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100010Trigger = class("Q100010Trigger", GadgetActorProxy)
Q100010Trigger.defaultAlias = "Q100010Trigger"
local Q1000ClientConfig = require("Quest/Client/Q1000ClientConfig")

function Q100010Trigger:OnPostDataPrepare() end

function Q100010Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(7.5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100010Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1000ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100010)
    end

    self:DestroySelf()
end

function Q100010Trigger:TriggerOut() end
return Q100010Trigger
