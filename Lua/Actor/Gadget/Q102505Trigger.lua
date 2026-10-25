require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q102505Trigger = class("Q102505Trigger", GadgetActorProxy)
Q102505Trigger.defaultAlias = "Q102505Trigger"
local Q1025ClientConfig = require("Quest/Client/Q1025ClientConfig")

function Q102505Trigger:OnPostDataPrepare() end

function Q102505Trigger:OnPostComponentPrepare()
    self:AddComponentTrigger(8, DistType.EULER, M.Pos(0, 0.8, 0), self.TriggerIn, self.TriggerOut)
end

function Q102505Trigger:TriggerIn()
    print("Out Q1025TriggerSP01-------")
    local actor = actorMgr:GetActor(Q1025ClientConfig.ActorAlias)
    print("Out Q1025TriggerSP02")
    if actor ~= nil then
        print("Out Q1025TriggerSP03")
        actor:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            arg1:RequestInteraction("Npc207101")
            arg1:TransmitPlayerByQuestId(102505, 1)
            print("SHOW BLACK SCREEN 12000")
        end, nil, task, "QUEST_Black_Q1200010")

        print("Out Q1025TriggerSP04")
    end

    self:DestroySelf()
end

function Q102505Trigger:TriggerOut()
    print("35301 start: 111")
end

return Q102505Trigger
