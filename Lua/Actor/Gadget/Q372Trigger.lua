require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q372Trigger = class("Q372Trigger", GadgetActorProxy)
Q372Trigger.defaultAlias = "Q372Trigger"
local Q372ClientConfig = require("Quest/Client/Q372ClientConfig")

function Q372Trigger:OnPostDataPrepare() end

function Q372Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q372Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q372ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q372Trigger:TriggerOut() end
return Q372Trigger
