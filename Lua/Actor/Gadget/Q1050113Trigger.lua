require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1050113Trigger = class("Q1050113Trigger", GadgetActorProxy)
Q1050113Trigger.defaultAlias = "Q1050113Trigger"
local Q10501ClientConfig = require("Quest/Client/Q10501ClientConfig")

function Q1050113Trigger:OnPostDataPrepare() end

function Q1050113Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1050113Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q10501ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1050113)
    end

    self:DestroySelf()
end

function Q1050113Trigger:TriggerOut() end
return Q1050113Trigger
