require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101108Trigger = class("Q101108Trigger", GadgetActorProxy)
Q101108Trigger.defaultAlias = "Q101108Trigger"
local Q1011ClientConfig = require("Quest/Client/Q1011ClientConfig")

function Q101108Trigger:OnPostDataPrepare() end

function Q101108Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101108Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1011ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101108)
    end

    self:DestroySelf()
end

function Q101108Trigger:TriggerOut() end
return Q101108Trigger
