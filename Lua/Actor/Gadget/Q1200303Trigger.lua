require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1200304Trigger = class("Q1200304Trigger", GadgetActorProxy)
Q1200304Trigger.defaultAlias = "Q1200304Trigger"
local Q12003ClientConfig = require("Quest/Client/Q12003ClientConfig")

function Q1200304Trigger:OnPostDataPrepare() end

function Q1200304Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(3, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200304Trigger:TriggerIn()
    print("Out Q12003TriggerSP01")
    local actor = actorMgr:GetActor(Q12003ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(false, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q1200304Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q1200304Trigger
