require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q45405Trigger = class("Q45405Trigger", GadgetActorProxy)
Q45405Trigger.defaultAlias = "Q45405Trigger"
local Q454ClientConfig = require("Quest/Client/Q454ClientConfig")

function Q45405Trigger:OnPostDataPrepare() end

function Q45405Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(55, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q45405Trigger:TriggerIn() end

function Q45405Trigger:TriggerOut()
    print("Out Q45405Trigger")
    local actor = actorMgr:GetActor(Q454ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 45405)
    end

    self:DestroySelf()
end

return Q45405Trigger
