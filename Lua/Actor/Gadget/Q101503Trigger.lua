require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q101503Trigger = class("Q101503Trigger", GadgetActorProxy)
Q101503Trigger.defaultAlias = "Q101503Trigger"
local Q1015ClientConfig = require("Quest/Client/Q1015ClientConfig")

function Q101503Trigger:OnPostDataPrepare() end

function Q101503Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(15, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q101503Trigger:TriggerIn()
    print("Out Q1015TriggerSP01")
    local actor = actorMgr:GetActor(Q1015ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:FinishQuest(false, nil)
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q101503Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q101503Trigger
