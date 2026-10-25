require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1011401Trigger = class("Q1011401Trigger", GadgetActorProxy)
Q1011401Trigger.defaultAlias = "Q1011401Trigger"
local Q10114ClientConfig = require("Quest/Client/Q10114ClientConfig")

function Q1011401Trigger:OnPostDataPrepare() end

function Q1011401Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(100, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1011401Trigger:TriggerIn() end

function Q1011401Trigger:TriggerOut()
    local actor = actorMgr:GetActor(Q10114ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1011401)
    end

    self:DestroySelf()
end

return Q1011401Trigger
