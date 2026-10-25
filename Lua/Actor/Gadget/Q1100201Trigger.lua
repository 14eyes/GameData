require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1100201Trigger = class("Q1100201Trigger", GadgetActorProxy)
Q1100201Trigger.defaultAlias = "Q1100201Trigger"
local Q11002ClientConfig = require("Quest/Client/Q11002ClientConfig")

function Q1100201Trigger:OnPostDataPrepare() end

function Q1100201Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100201Trigger:TriggerIn()
    print("IN Q1100201Trigger")
    local actor = actorMgr:GetActor(Q11002ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1100201)
    end

    self:DestroySelf()
end

function Q1100201Trigger:TriggerOut() end
return Q1100201Trigger
