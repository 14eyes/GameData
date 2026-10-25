require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101509Trigger = class("Q101509Trigger", GadgetActorProxy)
Q101509Trigger.defaultAlias = "Q101509Trigger"
local Q1015ClientConfig = require("Quest/Client/Q1015ClientConfig")

function Q101509Trigger:OnPostDataPrepare() end

function Q101509Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(7, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101509Trigger:TriggerIn()
    print("Out Q101509TriggerSP01")
    local actor = actorMgr:GetActor(Q1015ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
        print("***************get quest success111")
    end

    self:DestroySelf()
end

function Q101509Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q101509Trigger
