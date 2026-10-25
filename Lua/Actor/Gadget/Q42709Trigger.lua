require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q42709Trigger = class("Q42709Trigger", GadgetActorProxy)
Q42709Trigger.defaultAlias = "Q42709Trigger"
local Q427ClientConfig = require("Quest/Client/Q427ClientConfig")

function Q42709Trigger:OnPostDataPrepare() end

function Q42709Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(30, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q42709Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q427ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 42709)
    end

    self:DestroySelf()
end

function Q42709Trigger:TriggerOut() end
return Q42709Trigger
