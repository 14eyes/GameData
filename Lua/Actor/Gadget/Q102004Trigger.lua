require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q102004Trigger = class("Q102004Trigger", GadgetActorProxy)
Q102004Trigger.defaultAlias = "Q102004Trigger"
local Q1020ClientConfig = require("Quest/Client/Q1020ClientConfig")

function Q102004Trigger:OnPostDataPrepare() end

function Q102004Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q102004Trigger:TriggerIn()
    print("Out Q1020TriggerSP01-------")
    local actor = actorMgr:GetActor(Q1020ClientConfig.ActorAlias)
    print("Out Q1020TriggerSP02")
    if actor ~= nil then
        print("Out Q1020TriggerSP03")
        actor:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:TransmitPlayerByQuestId(102004, 1)
            print("SHOW BLACK SCREEN 12000")
        end, nil, task, "QUEST_Black_Q1200010")

        print("Out Q1020TriggerSP04")
    end

    self:DestroySelf()
end

function Q102004Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q102004Trigger
