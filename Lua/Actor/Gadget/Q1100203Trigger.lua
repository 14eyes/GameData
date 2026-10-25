require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1100203Trigger = class("Q1100203Trigger", GadgetActorProxy)
Q1100203Trigger.defaultAlias = "Q1100203Trigger"
local Q11002ClientConfig = require("Quest/Client/Q11002ClientConfig")

function Q1100203Trigger:OnPostDataPrepare() end

function Q1100203Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100203Trigger:TriggerIn()
    print("IN Q1100203Trigger")
    local actor = actorMgr:GetActor(Q11002ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1100203)
    end

    self:DestroySelf()
end

function Q1100203Trigger:TriggerOut() end
return Q1100203Trigger
