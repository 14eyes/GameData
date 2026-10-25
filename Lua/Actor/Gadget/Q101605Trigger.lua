require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101605Trigger = class("Q101605Trigger", GadgetActorProxy)
Q101605Trigger.defaultAlias = "Q101605Trigger"
local Q1016ClientConfig = require("Quest/Client/Q1016ClientConfig")

function Q101605Trigger:OnPostDataPrepare() end

function Q101605Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(15, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101605Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q1016ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 101605)
    end

    self:DestroySelf()
end

function Q101605Trigger:TriggerOut() end
return Q101605Trigger
