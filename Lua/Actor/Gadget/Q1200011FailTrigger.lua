require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1200011FailTrigger = class("Q1200011FailTrigger", GadgetActorProxy)
Q1200011FailTrigger.defaultAlias = "Q1200011FailTrigger"
local Q12000ClientConfig = require("Quest/Client/Q12000ClientConfig")

function Q1200011FailTrigger:OnPostDataPrepare() end

function Q1200011FailTrigger:OnPostComponentPrepare()
    self:AddComponentTrigger(100, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200011FailTrigger:TriggerIn()
    print("Out Q12000TriggerSP01")
end

function Q1200011FailTrigger:TriggerOut()
    print("35301 start: 111")
    local actor = actorMgr:GetActor(Q12000ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(true, nil)
        self:ShowBlackScreen(0.5, 1.5, 0.5)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

return Q1200011FailTrigger
