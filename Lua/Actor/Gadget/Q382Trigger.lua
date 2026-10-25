require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q382Trigger = class("Q382Trigger", GadgetActorProxy)
Q382Trigger.defaultAlias = "Q382Trigger"
local Q382ClientConfig = require("Quest/Client/Q382ClientConfig")

function Q382Trigger:OnPostDataPrepare() end

function Q382Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q382Trigger:TriggerIn()
    print("Out Q382Trigger")
    local actor = actorMgr:GetActor(Q382ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q382Trigger:TriggerOut() end
return Q382Trigger
