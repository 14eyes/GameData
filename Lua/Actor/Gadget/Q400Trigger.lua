require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40001Trigger = class("Q40001Trigger", GadgetActorProxy)
Q40001Trigger.defaultAlias = "Q40001Trigger"
local Q400ClientConfig = require("Quest/Client/Q400ClientConfig")

function Q40001Trigger:OnPostDataPrepare() end

function Q40001Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(100, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q40001Trigger:TriggerIn() end

function Q40001Trigger:TriggerOut()
    local actor = actorMgr:GetActor(Q400ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 40001)
    end

    self:DestroySelf()
end

return Q40001Trigger
