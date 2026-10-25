require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q45416Trigger = class("Q45416Trigger", GadgetActorProxy)
Q45416Trigger.defaultAlias = "Q45416Trigger"
local Q454ClientConfig = require("Quest/Client/Q454ClientConfig")

function Q45416Trigger:OnPostDataPrepare() end

function Q45416Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(40, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q45416Trigger:TriggerIn()
    print("IN Q45416Trigger")
    local actor = actorMgr:GetActor(Q454ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 45416)
    end

    self:DestroySelf()
end

function Q45416Trigger:TriggerOut() end
return Q45416Trigger
