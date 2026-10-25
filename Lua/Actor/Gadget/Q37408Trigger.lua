require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q37408Trigger = class("Q37408Trigger", GadgetActorProxy)
Q37408Trigger.defaultAlias = "Q37408Trigger"
local Q374ClientConfig = require("Quest/Client/Q374ClientConfig")

function Q37408Trigger:OnPostDataPrepare() end

function Q37408Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q37408Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q374ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 37408)
    end

    self:DestroySelf()
end

function Q37408Trigger:TriggerOut() end
return Q37408Trigger
