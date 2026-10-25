require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1200310FailTrigger = class("Q1200310FailTrigger", GadgetActorProxy)
Q1200310FailTrigger.defaultAlias = "Q1200310FailTrigger"
local Q12003ClientConfig = require("Quest/Client/Q12003ClientConfig")

function Q1200310FailTrigger:OnPostDataPrepare() end

function Q1200310FailTrigger:OnPostComponentPrepare()
    self:AddComponentTrigger(40, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1200310FailTrigger:TriggerIn()
    print("Out Q12000TriggerSP01")
end

function Q1200310FailTrigger:TriggerOut()
    print("35301 start: 111")
    local actor = actorMgr:GetActor(Q12003ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(true, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

return Q1200310FailTrigger
