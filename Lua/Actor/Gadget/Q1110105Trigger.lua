require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1110105Trigger = class("Q1110105Trigger", GadgetActorProxy)
Q1110105Trigger.defaultAlias = "Q1110105Trigger"
local Q11101ClientConfig = require("Quest/Client/Q11101ClientConfig")

function Q1110105Trigger:OnPostDataPrepare() end

function Q1110105Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q1110105Trigger:TriggerIn()
    print("Out Q11101TriggerSP01")
    local actor = actorMgr:GetActor(Q11101ClientConfig.ActorAlias)
    if actor ~= nil then
        print("***************get quest success")
        actor:RequestInteraction("Npc10202")
    end

    print("35301 start: 222")
    self:DestroySelf()
end

function Q1110105Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q1110105Trigger
