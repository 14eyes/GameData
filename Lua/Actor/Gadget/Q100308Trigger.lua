require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q100308Trigger = class("Q100308Trigger", GadgetActorProxy)
Q100308Trigger.defaultAlias = "Q100308Trigger"
local Q1003ClientConfig = require("Quest/Client/Q1003ClientConfig")

function Q100308Trigger:OnPostDataPrepare() end

function Q100308Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q100308Trigger:TriggerIn()
    print("IN Q100308Trigger")
    local actor = actorMgr:GetActor(Q1003ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 100308)
    end

    self:DestroySelf()
end

function Q100308Trigger:TriggerOut() end
return Q100308Trigger
