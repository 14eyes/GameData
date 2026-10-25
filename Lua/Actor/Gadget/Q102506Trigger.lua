require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q102506Trigger = class("Q102506Trigger", GadgetActorProxy)
Q102506Trigger.defaultAlias = "Q102506Trigger"
local Q1025ClientConfig = require("Quest/Client/Q1025ClientConfig")

function Q102506Trigger:OnPostDataPrepare() end

function Q102506Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(15, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q102506Trigger:TriggerIn()
    print("Out Q1025TriggerSP01*********")
    local actor = actorMgr:GetActor(Q1025ClientConfig.ActorAlias)
    print("Out Q1025TriggerSP02")
    if actor ~= nil then
        print("Out Q1025TriggerSP03")
        actor:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:RequestInteraction("Npc208301")
            print("SHOW BLACK SCREEN 12000")
        end, nil, task, "QUEST_Black_Q1200010")

        print("Out Q1025TriggerSP04")
    end

    self:DestroySelf()
end

function Q102506Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q102506Trigger
