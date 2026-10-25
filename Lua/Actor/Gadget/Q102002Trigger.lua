require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q102002Trigger = class("Q102002Trigger", GadgetActorProxy)
Q102002Trigger.defaultAlias = "Q102002Trigger"
local Q1020ClientConfig = require("Quest/Client/Q1020ClientConfig")

function Q102002Trigger:OnPostDataPrepare() end

function Q102002Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(5, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q102002Trigger:TriggerIn()
    print("Out Q1020TriggerSP01-------")
    local actor = actorMgr:GetActor(Q1020ClientConfig.ActorAlias)
    print("Out Q1020TriggerSP02")
    if actor ~= nil then
        print("Out Q1020TriggerSP03")
        actor:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:CreateQuestNpcById(102002, 1005)
            arg1:RequestInteraction("Paimon")
            arg1:TransmitPlayerByQuestId(102002, 1)
            print("SHOW BLACK SCREEN 12000")
        end, nil, task, "QUEST_Black_Q1200010")

        print("Out Q1020TriggerSP04")
    end

    self:DestroySelf()
end

function Q102002Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q102002Trigger
