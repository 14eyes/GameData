require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q40064_KazuhaDrunkTrigger = class("Q40064_KazuhaDrunkTrigger", GadgetActorProxy)
Q40064_KazuhaDrunkTrigger.defaultAlias = "Q40064_KazuhaDrunkTrigger"
local Q40064ClientConfig = require("Quest/Client/Q40064ClientConfig")

local subIDs = Q40064ClientConfig.SubIDs
local npcs = Q40064ClientConfig.Npcs
local gadgets = Q40064ClientConfig.Gadgets
local datas = Q40064ClientConfig.Datas

function Q40064_KazuhaDrunkTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q40064_KazuhaDrunkTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q40064_KazuhaDrunkTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40064"):ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1032Data.alias)
        questNpcActor:SitOnChair(8010)
        questNpcActor:PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Default01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_LowClosed01", 0, false, true)
        questNpcActor:LookAt(sceneData:GetDummyPoint(1009, "Q4006404_winecup").pos)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Q40064_KazuhaDrunkTrigger:TriggerOut()
    print("TriggerOut")
end

return Q40064_KazuhaDrunkTrigger
