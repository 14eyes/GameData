require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1100206Trigger = class("Q1100206Trigger", GadgetActorProxy)
Q1100206Trigger.defaultAlias = "Q1100206Trigger"
local Q11002ClientConfig = require("Quest/Client/Q11002ClientConfig")

function Q1100206Trigger:OnPostDataPrepare() end

function Q1100206Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1100206Trigger:TriggerIn()
    print("IN Q1100206Trigger")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q1100204M2").pos, 2, 2, true)
    local actor = actorMgr:GetActor(Q11002ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1100205)
    end

    self:DestroySelf()
end

function Q1100206Trigger:TriggerOut() end
return Q1100206Trigger
