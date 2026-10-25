require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40069_FeiCryTrigger = class("Q40069_FeiCryTrigger", GadgetActorProxy)
Q40069_FeiCryTrigger.defaultAlias = "Q40069_FeiCryTrigger"
local Q40069ClientConfig = require("Quest/Client/Q40069ClientConfig")

local subIDs = Q40069ClientConfig.SubIDs
local npcs = Q40069ClientConfig.Npcs
local datas = Q40069ClientConfig.Datas

function Q40069_FeiCryTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40069_FeiCryTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40069_FeiCryTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40069"):ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12620Data.alias)
        questNpcActor:DoFreeStyle(5030, true, nil, true, true, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true)
    end)
end

function Q40069_FeiCryTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40069_FeiCryTrigger
