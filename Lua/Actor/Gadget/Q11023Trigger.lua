require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11023Trigger = class("Q11023Trigger", GadgetActorProxy)
Q11023Trigger.defaultAlias = "Q11023Trigger"
local Q11023ClientConfig = require("Quest/Client/Q11023ClientConfig")

function Q11023Trigger:OnPostDataPrepare() end

function Q11023Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(3.5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q11023Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11023ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q11023Trigger:TriggerOut() end
return Q11023Trigger
