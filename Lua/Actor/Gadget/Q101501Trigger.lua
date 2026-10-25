require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101501Trigger = class("Q101501Trigger", GadgetActorProxy)
Q101501Trigger.defaultAlias = "Q101501Trigger"
local Q1015ClientConfig = require("Quest/Client/Q1015ClientConfig")

function Q101501Trigger:OnPostDataPrepare() end

function Q101501Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101501Trigger:TriggerIn()
    print("Out Q1015TriggerSP01")
    local actor = actorMgr:GetActor(Q1015ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(false, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q101501Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q101501Trigger
