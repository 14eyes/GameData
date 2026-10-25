require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12039 = class("Quest12039", QuestActorProxy)
Quest12039.defaultAlias = "Quest12039"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest12039:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest12039:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1203901"] = self.OnSubStart1203901,
        ["1203905"] = self.OnSubStart1203905,
        ["1203906"] = self.OnSubStart1203906,
        ["1203907"] = self.OnSubStart1203907,
        ["1203908"] = self.OnSubStart1203908,
        ["1203909"] = self.OnSubStart1203909,
        ["1203921"] = self.OnSubStart1203921,
        ["1203923"] = self.OnSubStart1203923,
        ["1203910"] = self.OnSubStart1203910,
        ["1203922"] = self.OnSubStart1203922,
        ["1203911"] = self.OnSubStart1203911,
        ["1203912"] = self.OnSubStart1203912,
        ["1203913"] = self.OnSubStart1203913,
        ["1203914"] = self.OnSubStart1203914,
        ["1203915"] = self.OnSubStart1203915,
        ["1203916"] = self.OnSubStart1203916,
        ["1203917"] = self.OnSubStart1203917,
        ["1203918"] = self.OnSubStart1203918,
        ["1203902"] = self.OnSubStart1203902,
        ["1203919"] = self.OnSubStart1203919,
        ["1203920"] = self.OnSubStart1203920,
        ["1203903"] = self.OnSubStart1203903,
        ["1203904"] = self.OnSubStart1203904
    }
end

function Quest12039:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1203901"] = self.OnSubFinish1203901,
        ["1203905"] = self.OnSubFinish1203905,
        ["1203906"] = self.OnSubFinish1203906,
        ["1203907"] = self.OnSubFinish1203907,
        ["1203908"] = self.OnSubFinish1203908,
        ["1203909"] = self.OnSubFinish1203909,
        ["1203921"] = self.OnSubFinish1203921,
        ["1203923"] = self.OnSubFinish1203923,
        ["1203910"] = self.OnSubFinish1203910,
        ["1203922"] = self.OnSubFinish1203922,
        ["1203911"] = self.OnSubFinish1203911,
        ["1203912"] = self.OnSubFinish1203912,
        ["1203913"] = self.OnSubFinish1203913,
        ["1203914"] = self.OnSubFinish1203914,
        ["1203915"] = self.OnSubFinish1203915,
        ["1203916"] = self.OnSubFinish1203916,
        ["1203917"] = self.OnSubFinish1203917,
        ["1203918"] = self.OnSubFinish1203918,
        ["1203902"] = self.OnSubFinish1203902,
        ["1203919"] = self.OnSubFinish1203919,
        ["1203920"] = self.OnSubFinish1203920,
        ["1203903"] = self.OnSubFinish1203903,
        ["1203904"] = self.OnSubFinish1203904
    }
end

function Quest12039:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12039:Start()
    print("Start")
end

function Quest12039:OnDestroy()
    print("OnDestroy")
end

function Quest12039:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12039:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12039:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12589Data.alias, 1071)
    self:SafeDestroyQuestNpc(npcs.Npc12589Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 1071)
    self:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12636Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3054Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3028Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3042Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3028Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc3042Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q12039Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q12039Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q12039Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q12039Trigger3", 1071, false)
    actorMgr:DestroyEntityActor("Q12039Trigger4", 1071, false)
    actorMgr:DestroyEntityActor("Q12039Trigger5", 1071, false)
    actorMgr:DestroyEntityActor("Q12039Trigger6", 3, false)
    self:ActorDestroy("Q12039Trigger7")
end

function Quest12039:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12039:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest12039:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest12039:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest12039:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest12039:OnSubStart1203901(arg1)
    print("OnSubStart1203901")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12039:OnSubFinish1203901(arg1)
    print("OnSubFinish1203901")
end

function Quest12039:OnSubStart1203905(arg1)
    print("OnSubStart1203905")
    self:NpcDestroy(npcs.Npc1032Data.alias, 1071)
    self:NpcDestroy(npcs.Npc12589Data.alias, 1071)
    self:GetQuestNpcActor(npcs.Npc12589Data.alias):UnSpawnAttach("Kazuha3_Offset_WeaponR")
    self:ActorDestroy("Q12039Trigger3")
    self:ActorDestroy("Q12039Trigger4")
    self:ActorDestroy("Q12039Trigger5")
    self:ActorDestroy("Q12039Trigger7")
end

function Quest12039:OnSubFinish1203905(arg1)
    print("OnSubFinish1203905")
end

function Quest12039:OnSubStart1203906(arg1)
    print("OnSubStart1203906")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreen(arg1, npcs.Npc1032Data.id, 2)
        arg1_2:CallDelay(0.51, function(arg1)
            actorMgr:CreateActorWithPos("Q12039Trigger3", "Actor/Gadget/Q12039Trigger3", 70900002, 0, sceneData:GetDummyPoint(1071, "Q1203905_N1032").pos, sceneData:GetDummyPoint(1071, "Q1203905_N1032").rot, true, false, 1071)
        end)
    end)
end

function Quest12039:OnSubFinish1203906(arg1)
    print("OnSubFinish1203906")
    self:NpcDestroy(npcs.Npc1032Data.alias, 1071)
    self:ActorDestroy("Q12039Trigger3")
end

function Quest12039:OnSubStart1203907(arg1)
    print("OnSubStart1203907")
end

function Quest12039:OnSubFinish1203907(arg1)
    print("OnSubFinish1203907")
end

function Quest12039:OnSubStart1203908(arg1)
    print("OnSubStart1203908")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreen(arg1, npcs.Npc1032Data.id, 2)
        arg1_2:CallDelay(0.51, function(arg1)
            actorMgr:CreateActorWithPos("Q12039Trigger4", "Actor/Gadget/Q12039Trigger4", 70900002, 0, sceneData:GetDummyPoint(1071, "Q1203907_N1032").pos, sceneData:GetDummyPoint(1071, "Q1203907_N1032").rot, true, false, 1071)
        end)
    end)
end

function Quest12039:OnSubFinish1203908(arg1)
    print("OnSubFinish1203908")
    self:NpcDestroy(npcs.Npc1032Data.alias, 1071)
    self:ActorDestroy("Q12039Trigger4")
end

function Quest12039:OnSubStart1203909(arg1)
    print("OnSubStart1203909")
end

function Quest12039:OnSubFinish1203909(arg1)
    print("OnSubFinish1203909")
end

function Quest12039:OnSubStart1203921(arg1)
    print("OnSubStart1203921")
end

function Quest12039:OnSubFinish1203921(arg1)
    print("OnSubFinish1203921")
end

function Quest12039:OnSubStart1203923(arg1)
    print("OnSubStart1203923")
end

function Quest12039:OnSubFinish1203923(arg1)
    print("OnSubFinish1203923")
end

function Quest12039:OnSubStart1203910(arg1)
    print("OnSubStart1203910")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreen(arg1, npcs.Npc1032Data.id, 2)
        arg1_2:CallDelay(0.51, function(arg1)
            actorMgr:CreateActorWithPos("Q12039Trigger5", "Actor/Gadget/Q12039Trigger5", 70900002, 0, sceneData:GetDummyPoint(1071, "Q1203909_N12635").pos, sceneData:GetDummyPoint(1071, "Q1203909_N12635").rot, true, false, 1071)
        end)
    end)
end

function Quest12039:OnSubFinish1203910(arg1)
    print("OnSubFinish1203910")
    self:NpcDestroy(npcs.Npc12589Data.alias, 1071)
    self:NpcDestroy(npcs.Npc1032Data.alias, 1071)
    self:ActorDestroy("Q12039Trigger5")
end

function Quest12039:OnSubStart1203922(arg1)
    print("OnSubStart1203922")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:NpcCreateWithBlackscreen(arg1, npcs.Npc1032Data.id, 2)
        arg1_2:CallDelay(0.51, function(arg1)
            actorMgr:CreateActorWithPos("Q12039Trigger5", "Actor/Gadget/Q12039Trigger5", 70900002, 0, sceneData:GetDummyPoint(1071, "Q1203909_N12635").pos, sceneData:GetDummyPoint(1071, "Q1203909_N12635").rot, true, false, 1071)
        end)
    end)
end

function Quest12039:OnSubFinish1203922(arg1)
    print("OnSubFinish1203922")
    self:NpcDestroy(npcs.Npc12589Data.alias, 1071)
    self:NpcDestroy(npcs.Npc1032Data.alias, 1071)
    self:ActorDestroy("Q12039Trigger5")
end

function Quest12039:OnSubStart1203911(arg1)
    print("OnSubStart1203911")
end

function Quest12039:OnSubFinish1203911(arg1)
    print("OnSubFinish1203911")
end

function Quest12039:OnSubStart1203912(arg1)
    print("OnSubStart1203912")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc12589Data.id, 1)
        arg1_2:NpcCreateWithBlackscreen(arg1, npcs.Npc1032Data.id, 2)
        arg1_2:CallDelay(0.51, function(arg1)
            actorMgr:CreateActorWithPos("Q12039Trigger5", "Actor/Gadget/Q12039Trigger5", 70900002, 0, sceneData:GetDummyPoint(1071, "Q1203909_N12635").pos, sceneData:GetDummyPoint(1071, "Q1203909_N12635").rot, true, false, 1071)
        end)
    end)
end

function Quest12039:OnSubFinish1203912(arg1)
    print("OnSubFinish1203912")
    self:ActorDestroy("Q12039Trigger5")
end

function Quest12039:OnSubStart1203913(arg1)
    print("OnSubStart1203913")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc1032Data.id, 1)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc12589Data.alias)
        questNpcActor:DoFreeStyle(4503, true, nil, true, true, false)
        questNpcActor:SpawnAttach("Kazuha3_Offset_WeaponR")
        actorMgr:CreateActorWithPos("Q12039Trigger7", "Actor/Gadget/Q12039Trigger7", 70900002, 0, sceneData:GetDummyPoint(1071, "Q1203907_N1032").pos, sceneData:GetDummyPoint(1071, "Q1203907_N1032").rot, true, false, 1071)
    end)
end

function Quest12039:OnSubFinish1203913(arg1)
    print("OnSubFinish1203913")
    self:NpcDestroy(npcs.Npc1032Data.alias, 1071)
    self:ActorDestroy("Q12039Trigger7")
end

function Quest12039:OnSubStart1203914(arg1)
    print("OnSubStart1203914")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12589Data.alias)
    questNpcActor:DoFreeStyle(4503, true, nil, true, true, false)
    questNpcActor:SpawnAttach("Kazuha3_Offset_WeaponR")
    actorMgr:CreateActorWithPos("Q12039Trigger7", "Actor/Gadget/Q12039Trigger7", 70900002, 0, sceneData:GetDummyPoint(1071, "Q1203907_N1032").pos, sceneData:GetDummyPoint(1071, "Q1203907_N1032").rot, true, false, 1071)
end

function Quest12039:OnSubFinish1203914(arg1)
    print("OnSubFinish1203914")
    self:NpcDestroy(npcs.Npc12589Data.alias, 1071)
    self:NpcDestroy(npcs.Npc1032Data.alias, 1071)
    self:GetQuestNpcActor(npcs.Npc12589Data.alias):UnSpawnAttach("Kazuha3_Offset_WeaponR")
    self:ActorDestroy("Q12039Trigger7")
end

function Quest12039:OnSubStart1203915(arg1)
    print("OnSubStart1203915")
    actorMgr:CreateActorWithPos("Q12039Trigger", "Actor/Gadget/Q12039Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203916").pos, sceneData:GetDummyPoint(3, "Q1203916").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12039:OnSubFinish1203915(arg1)
    print("OnSubFinish1203915")
    self:ActorDestroy("Q12039Trigger")
end

function Quest12039:OnSubStart1203916(arg1)
    print("OnSubStart1203916")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1032Data.id, 2, npcs.Npc1032Data.alias)
    self:NpcCreate(arg1, npcs.Npc12636Data.id, 3)
end

function Quest12039:OnSubFinish1203916(arg1)
    print("OnSubFinish1203916")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
    self:NpcDestroy(npcs.Npc12636Data.alias, 3)
end

function Quest12039:OnSubStart1203917(arg1)
    print("OnSubStart1203917")
end

function Quest12039:OnSubFinish1203917(arg1)
    print("OnSubFinish1203917")
end

function Quest12039:OnSubStart1203918(arg1)
    print("OnSubStart1203918")
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack("Q12039Trigger6", 1203918, 1032, 2, 45, 1)
end

function Quest12039:OnSubFinish1203918(arg1)
    print("OnSubFinish1203918")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
    self:NpcDestroy(npcs.Npc12636Data.alias, 3)
    self:ActorDestroy("Q12039Trigger6")
end

function Quest12039:OnSubStart1203902(arg1)
    print("OnSubStart1203902")
    self:NpcCreate(arg1, npcs.Npc3027Data.id, 2)
    actorMgr:CreateActorWithPos("Q12039Trigger1", "Actor/Gadget/Q12039Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1203902").pos, sceneData:GetDummyPoint(3, "guide_Q1203902").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3028Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
end

function Quest12039:OnSubFinish1203902(arg1)
    print("OnSubFinish1203902")
    self:ActorDestroy("Q12039Trigger1")
end

function Quest12039:OnSubStart1203919(arg1)
    print("OnSubStart1203919")
    self:RequestInteraction(npcs.Npc3027Data.alias)
end

function Quest12039:OnSubFinish1203919(arg1)
    print("OnSubFinish1203919")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
    self:NpcDestroy(npcs.Npc3027Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3042Data.alias, 0, true)
    self:TransmitPlayerById(arg1, 1)
    self:LightNotifyTo(npcs.Npc3028Data.alias, 0, true)
end

function Quest12039:OnSubStart1203920(arg1)
    print("OnSubStart1203920")
    actorMgr:CreateActorWithPos("Q12039Trigger2", "Actor/Gadget/Q12039Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203998_N10000005").pos, sceneData:GetDummyPoint(3, "Q1203998_N10000005").rot, true, false, 3)
end

function Quest12039:OnSubFinish1203920(arg1)
    print("OnSubFinish1203920")
    self:ActorDestroy("Q12039Trigger2")
end

function Quest12039:OnSubStart1203903(arg1)
    print("OnSubStart1203903")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc1032Data.id, 1, npcs.Npc1032Data.alias)
end

function Quest12039:OnSubFinish1203903(arg1)
    print("OnSubFinish1203903")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
end

function Quest12039:OnSubStart1203904(arg1)
    print("OnSubStart1203904")
    self:NpcCreate(arg1, npcs.Npc3054Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc3054Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest12039:OnSubFinish1203904(arg1)
    print("OnSubFinish1203904")
    self:NpcDestroy(npcs.Npc1032Data.alias, 3)
    self:NpcDestroy(npcs.Npc3054Data.alias, 3)
end

return Quest12039
