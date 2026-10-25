require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q371Trigger = class("Q371Trigger", GadgetActorProxy)
Q371Trigger.defaultAlias = "Q371Trigger"
local Q371ClientConfig = require("Quest/Client/Q371ClientConfig")

function Q371Trigger:OnPostDataPrepare() end

function Q371Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q371Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q371ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q371Trigger:TriggerOut() end
return Q371Trigger
