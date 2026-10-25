require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1110101Trigger = class("Q1110101Trigger", GadgetActorProxy)
Q1110101Trigger.defaultAlias = "Q1110101Trigger"
local Q11101ClientConfig = require("Quest/Client/Q11101ClientConfig")

function Q1110101Trigger:OnPostDataPrepare() end

function Q1110101Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1110101Trigger:TriggerIn()
    print("Out Q11101TriggerSP01")
    local actor = actorMgr:GetActor(Q11101ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
        print("***************get quest success")
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q1110101Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q1110101Trigger
