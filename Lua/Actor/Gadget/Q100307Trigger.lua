require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100307Trigger = class("Q100307Trigger", GadgetActorProxy)
Q100307Trigger.defaultAlias = "Q100307Trigger"
local Q1003ClientConfig = require("Quest/Client/Q1003ClientConfig")

function Q100307Trigger:OnPostDataPrepare() end

function Q100307Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100307Trigger:TriggerIn()
    print("IN Q100307Trigger")
    local actor = actorMgr:GetActor(Q1003ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100307)
    end

    self:DestroySelf()
end

function Q100307Trigger:TriggerOut() end
return Q100307Trigger
