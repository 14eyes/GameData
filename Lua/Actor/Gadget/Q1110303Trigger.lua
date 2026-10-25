require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1110303Trigger = class("Q1110303Trigger", GadgetActorProxy)
Q1110303Trigger.defaultAlias = "Q1110303Trigger"
local Q11103ClientConfig = require("Quest/Client/Q11103ClientConfig")

function Q1110303Trigger:OnPostDataPrepare() end

function Q1110303Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(6, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1110303Trigger:TriggerIn()
    print("Out Q11103TriggerSP01")
    local actor = actorMgr:GetActor(Q11103ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:RequestInteraction("Npc10221")
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q1110303Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q1110303Trigger
