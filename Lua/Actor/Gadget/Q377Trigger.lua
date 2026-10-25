require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q377Trigger = class("Q377Trigger", GadgetActorProxy)
Q377Trigger.defaultAlias = "Q377Trigger"
local Q377ClientConfig = require("Quest/Client/Q377ClientConfig")

function Q377Trigger:OnPostDataPrepare() end

function Q377Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q377Trigger:TriggerIn()
    print("Out Q377Trigger")
    local actor = actorMgr:GetActor(Q377ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    self:DestroySelf()
end

function Q377Trigger:TriggerOut() end
return Q377Trigger
