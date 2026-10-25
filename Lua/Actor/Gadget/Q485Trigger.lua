require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q485Trigger = class("Q485Trigger", GadgetActorProxy)
Q485Trigger.defaultAlias = "Q485Trigger"
local Q485ClientConfig = require("Quest/Client/Q485ClientConfig")

function Q485Trigger:OnPostDataPrepare() end

function Q485Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q485Trigger:TriggerIn()
    print("In Q485Trigger")
    local actor = actorMgr:GetActor(Q485ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q485Trigger:TriggerOut() end
return Q485Trigger
