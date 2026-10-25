require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101510FailTrigger = class("Q101510FailTrigger", GadgetActorProxy)
Q101510FailTrigger.defaultAlias = "Q101510FailTrigger"
local Q1015ClientConfig = require("Quest/Client/Q1015ClientConfig")

function Q101510FailTrigger:OnPostDataPrepare() end

function Q101510FailTrigger:OnPostComponentPrepare()
    self:AddComponentTrigger(100, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101510FailTrigger:TriggerIn()
    print("Out Q1015TriggerSP01")
end

function Q101510FailTrigger:TriggerOut()
    print("35301 start: 111")
    local actor = actorMgr:GetActor(Q1015ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(true, nil)
        self:ShowBlackScreen(0.5, 1.5, 0.5)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

return Q101510FailTrigger
