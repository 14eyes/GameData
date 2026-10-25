require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q481Trigger = class("Q481Trigger", GadgetActorProxy)
Q481Trigger.defaultAlias = "Q481Trigger"
local Q481ClientConfig = require("Quest/Client/Q481ClientConfig")

function Q481Trigger:OnPostDataPrepare() end

function Q481Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q481Trigger:TriggerIn() end

function Q481Trigger:TriggerOut()
    print("OUT Q481Trigger")
    local actor = actorMgr:GetActor(Q481ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

return Q481Trigger
