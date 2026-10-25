require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q102101Trigger = class("Q102101Trigger", GadgetActorProxy)
Q102101Trigger.defaultAlias = "Q102101Trigger"
local Q1021ClientConfig = require("Quest/Client/Q1021ClientConfig")

function Q102101Trigger:OnPostDataPrepare() end

function Q102101Trigger:OnPostComponentPrepare()
    print("***************create trigger 1111")
    self:AddComponentTrigger(25, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q102101Trigger:TriggerIn()
    print("Out Q1020TriggerSP01-------")
    local actor = actorMgr:GetActor(Q1021ClientConfig.ActorAlias)
    print("Out Q1020TriggerSP02")
    if actor ~= nil then
        print("Out Q1020TriggerSP03")
        actor:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:CreateQuestNpcById(102101, 1005)
            arg1:RequestInteraction("Paimon")
            arg1:TransmitPlayerByQuestId(102101, 1)
            print("SHOW BLACK SCREEN 12000")
        end, nil, task, "QUEST_Black_Q1200010")

        print("Out Q1020TriggerSP04")
    end

    self:DestroySelf()
end

function Q102101Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q102101Trigger
