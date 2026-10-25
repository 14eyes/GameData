require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q12001FailTrigger = class("Q12001FailTrigger", GadgetActorProxy)
Q12001FailTrigger.defaultAlias = "Q12001FailTrigger"
local Q12001ClientConfig = require("Quest/Client/Q12001ClientConfig")

function Q12001FailTrigger:OnPostDataPrepare() end

function Q12001FailTrigger:OnPostComponentPrepare()
    self:AddComponentTrigger(58, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q12001FailTrigger:TriggerIn()
    print("Out Q12000TriggerSP01")
end

function Q12001FailTrigger:TriggerOut()
    print("35301 start: 111")
    local actor = actorMgr:GetActor(Q12001ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(true, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

return Q12001FailTrigger
