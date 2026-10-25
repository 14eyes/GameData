require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1200004Trigger = class("Q1200004Trigger", GadgetActorProxy)
Q1200004Trigger.defaultAlias = "Q1200004Trigger"
local Q12000ClientConfig = require("Quest/Client/Q12000ClientConfig")

function Q1200004Trigger:OnPostDataPrepare() end

function Q1200004Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200004Trigger:TriggerIn()
    print("Out Q12000TriggerSP01")
    local actor = actorMgr:GetActor(Q12000ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(false, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q1200004Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q1200004Trigger
