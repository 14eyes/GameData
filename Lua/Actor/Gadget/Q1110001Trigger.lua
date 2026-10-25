require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1110001Trigger = class("Q1110001Trigger", GadgetActorProxy)
Q1110001Trigger.defaultAlias = "Q1110001Trigger"
local Q11100ClientConfig = require("Quest/Client/Q11100ClientConfig")

function Q1110001Trigger:OnPostDataPrepare() end

function Q1110001Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(12, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1110001Trigger:TriggerIn()
    print("Out Q11100TriggerSP01")
    local actor = actorMgr:GetActor(Q11100ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(false, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q1110001Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q1110001Trigger
