require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q370Trigger = class("Q370Trigger", GadgetActorProxy)
Q370Trigger.defaultAlias = "Q370Trigger"
local Q370ClientConfig = require("Quest/Client/Q370ClientConfig")

function Q370Trigger:OnPostDataPrepare() end

function Q370Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q370Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q370ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q370Trigger:TriggerOut() end
return Q370Trigger
