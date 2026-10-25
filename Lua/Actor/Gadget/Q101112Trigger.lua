require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101112Trigger = class("Q101112Trigger", GadgetActorProxy)
Q101112Trigger.defaultAlias = "Q101112Trigger"
local Q1011ClientConfig = require("Quest/Client/Q1011ClientConfig")

function Q101112Trigger:OnPostDataPrepare() end

function Q101112Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(6.5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101112Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1011ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101112)
    end

    self:DestroySelf()
end

function Q101112Trigger:TriggerOut() end
return Q101112Trigger
