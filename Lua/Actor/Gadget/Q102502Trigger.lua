require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q102502Trigger = class("Q102502Trigger", GadgetActorProxy)
Q102502Trigger.defaultAlias = "Q102502Trigger"
local Q1025ClientConfig = require("Quest/Client/Q1025ClientConfig")

function Q102502Trigger:OnPostDataPrepare() end

function Q102502Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(10, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q102502Trigger:TriggerIn()
    print("Out Q1025TriggerSP01*********")
    local actor = actorMgr:GetActor(Q1025ClientConfig.ActorAlias)
    print("Out Q1025TriggerSP02")
    if actor ~= nil then
        print("Out Q1025TriggerSP03")
        actor:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:CreateQuestNpcById(102521, 1005)
            arg1:RequestInteraction("Paimon")
            print("SHOW BLACK SCREEN 12000")
        end, nil, task, "QUEST_Black_Q1200010")

        print("Out Q1025TriggerSP04")
    end

    self:DestroySelf()
end

function Q102502Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q102502Trigger
