require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14009Trigger8 = class("Q14009Trigger8", GadgetActorProxy)
Q14009Trigger8.defaultAlias = "Q14009Trigger8"
local Q14009ClientConfig = require("Quest/Client/Q14009ClientConfig")

local this
local subIDs = Q14009ClientConfig.SubIDs
local npcs = Q14009ClientConfig.Npcs
local points = Q14009ClientConfig.Points
local datas = Q14009ClientConfig.Datas

function Q14009Trigger8:OnPostDataPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger8] OnPostDataPrepare")
    this = self
end

function Q14009Trigger8:OnPostComponentPrepare()
    print("[MainId: 14009][Trigger: Q14009Trigger8] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q14009Trigger8:TriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger8] TriggerIn")
    actorMgr:GetActor("14009"):CallDelayByQuest("3", 0.5, function(arg1)
        local questNpcActor = actorMgr:GetActor("14009"):GetQuestNpcActor(npcs.Npc13503Data.alias)
        questNpcActor:PlayEmojiBubble("EmojiBubble_Emoji_Sleep")
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, false)
        actorMgr:GetActor("14009"):CreateSpeechBubbleTask(npcs.Npc13503Data.id, 140099914, 5, true, 6, 8, true)
        this:DestroySelf()
    end)
end

function Q14009Trigger8:PreTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger8] PreTriggerIn")
end

function Q14009Trigger8:LightUpTriggerIn()
    print("[MainId: 14009][Trigger: Q14009Trigger8] LightUpTriggerIn")
end

function Q14009Trigger8:TriggerOut()
    print("[MainId: 14009][Trigger: Q14009Trigger8] TriggerOut")
end

return Q14009Trigger8
