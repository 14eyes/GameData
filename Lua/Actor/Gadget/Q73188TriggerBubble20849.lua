require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73188TriggerBubble20849 = class("Q73188TriggerBubble20849", GadgetActorProxy)
Q73188TriggerBubble20849.defaultAlias = "Q73188TriggerBubble20849"
local Q73188ClientConfig = require("Quest/Client/Q73188ClientConfig")

local subIDs = Q73188ClientConfig.SubIDs
local npcs = Q73188ClientConfig.Npcs

function Q73188TriggerBubble20849:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73188TriggerBubble20849:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73188TriggerBubble20849:TriggerIn()
    print("TriggerIn")
    local questGlobalVar = self:GetQuestGlobalVar(7138803)
    if questGlobalVar == 1 then
        actorMgr:GetActor("73188"):CreateSpeechBubbleTask(npcs.Npc20849Data.id, 731880104, 3, true, 4, 5)
    elseif questGlobalVar == 2 then
        actorMgr:GetActor("73188"):CreateSpeechBubbleTask(npcs.Npc20849Data.id, 731880105, 3, true, 4, 5)
    elseif questGlobalVar == 3 then
        actorMgr:GetActor("73188"):CreateSpeechBubbleTask(npcs.Npc20849Data.id, 731880106, 3, true, 4, 5)
    end

    self:DestroySelf()
end

function Q73188TriggerBubble20849:TriggerOut()
    print("TriggerOut")
end

return Q73188TriggerBubble20849
