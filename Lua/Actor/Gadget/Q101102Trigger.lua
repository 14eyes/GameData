require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101102Trigger = class("Q101102Trigger", GadgetActorProxy)
Q101102Trigger.defaultAlias = "Q101102Trigger"
local Q1011ClientConfig = require("Quest/Client/Q1011ClientConfig")

function Q101102Trigger:OnPostDataPrepare() end

function Q101102Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(45, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101102Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1011ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101102)
    end

    self:DestroySelf()
end

function Q101102Trigger:TriggerOut() end
return Q101102Trigger
