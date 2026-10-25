require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1029Trigger11 = class("Q1029Trigger11", GadgetActorProxy)
Q1029Trigger11.defaultAlias = "Q1029Trigger11"
local Q1029ClientConfig = require("Quest/Client/Q1029ClientConfig")

local subIDs = Q1029ClientConfig.SubIDs
local npcs = Q1029ClientConfig.Npcs
local datas = Q1029ClientConfig.Datas

function Q1029Trigger11:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1029Trigger11:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(25, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q1029Trigger11:TriggerIn()
    print("TriggerIn")
    local questNpcActor = actorMgr:GetActor("1029"):GetQuestNpcActor(npcs.PaimonData.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:PlayEmoSync("", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_Delta01", "Cs_Emo_Pet_Common/Cs_Emo_Paimon_Closed01", 0, false, true)
    questNpcActor:SpawnAttach("Paimon_BubbleWorry")
    self:DestroySelf()
end

function Q1029Trigger11:TriggerOut()
    print("TriggerOut")
end

return Q1029Trigger11
