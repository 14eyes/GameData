require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73188TriggerBubble20848 = class("Q73188TriggerBubble20848", GadgetActorProxy)
Q73188TriggerBubble20848.defaultAlias = "Q73188TriggerBubble20848"
local Q73188ClientConfig = require("Quest/Client/Q73188ClientConfig")

local subIDs = Q73188ClientConfig.SubIDs
local npcs = Q73188ClientConfig.Npcs

function Q73188TriggerBubble20848:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73188TriggerBubble20848:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73188TriggerBubble20848:TriggerIn()
    print("TriggerIn")
    local questGlobalVar = self:GetQuestGlobalVar(7138802)
    if questGlobalVar == 1 then
        Print("1111111111111111111111")
        actorMgr:GetActor("73188"):CreateSpeechBubbleTask(npcs.Npc20848Data.id, 731880101, 3, true, 4, 5)
        Print("AAAAAAAAAAAAAAAAAAAAA")
    elseif questGlobalVar == 2 then
        Print("222222222222222222222222")
        actorMgr:GetActor("73188"):CreateSpeechBubbleTask(npcs.Npc20848Data.id, 731880102, 3, true, 4, 5)
        Print("BBBBBBBBBBBBBBBBBBBBBB")
    elseif questGlobalVar == 3 then
        Print("33333333333333333333333333")
        actorMgr:GetActor("73188"):CreateSpeechBubbleTask(npcs.Npc20848Data.id, 731880102, 3, true, 4, 5)
        Print("CCCCCCCCCCCCCCCCCCCCCCCCC")
    end

    self:DestroySelf()
end

function Q73188TriggerBubble20848:TriggerOut()
    print("TriggerOut")
end

return Q73188TriggerBubble20848
