require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q102003Trigger = class("Q102003Trigger", GadgetActorProxy)
Q102003Trigger.defaultAlias = "Q102003Trigger"
local Q1020ClientConfig = require("Quest/Client/Q1020ClientConfig")

function Q102003Trigger:OnPostDataPrepare() end

function Q102003Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q102003Trigger:TriggerIn()
    print("Out Q1020TriggerSP01")
    local actor = actorMgr:GetActor(Q1020ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(false, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q102003Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q102003Trigger
