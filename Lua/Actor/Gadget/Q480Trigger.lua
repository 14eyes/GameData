require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q480Trigger = class("Q480Trigger", GadgetActorProxy)
Q480Trigger.defaultAlias = "Q480Trigger"
local Q480ClientConfig = require("Quest/Client/Q480ClientConfig")

function Q480Trigger:OnPostDataPrepare() end

function Q480Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q480Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q480ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48005)
    end

    self:DestroySelf()
end

function Q480Trigger:TriggerOut() end
return Q480Trigger
