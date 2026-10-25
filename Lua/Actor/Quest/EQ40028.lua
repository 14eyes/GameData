require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40028 = class("Quest40028", QuestActorProxy)
Quest40028.defaultAlias = "Quest40028"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest40028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4002801"] = self.OnSubStart4002801,
        ["4002802"] = self.OnSubStart4002802,
        ["4002803"] = self.OnSubStart4002803,
        ["4002804"] = self.OnSubStart4002804,
        ["4002818"] = self.OnSubStart4002818,
        ["4002806"] = self.OnSubStart4002806,
        ["4002815"] = self.OnSubStart4002815,
        ["4002819"] = self.OnSubStart4002819,
        ["4002807"] = self.OnSubStart4002807,
        ["4002808"] = self.OnSubStart4002808,
        ["4002816"] = self.OnSubStart4002816,
        ["4002809"] = self.OnSubStart4002809,
        ["4002820"] = self.OnSubStart4002820,
        ["4002810"] = self.OnSubStart4002810,
        ["4002811"] = self.OnSubStart4002811,
        ["4002812"] = self.OnSubStart4002812,
        ["4002813"] = self.OnSubStart4002813,
        ["4002814"] = self.OnSubStart4002814,
        ["4002817"] = self.OnSubStart4002817,
        ["4002805"] = self.OnSubStart4002805,
        ["4002821"] = self.OnSubStart4002821
    }
end

function Quest40028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4002801"] = self.OnSubFinish4002801,
        ["4002802"] = self.OnSubFinish4002802,
        ["4002803"] = self.OnSubFinish4002803,
        ["4002804"] = self.OnSubFinish4002804,
        ["4002818"] = self.OnSubFinish4002818,
        ["4002806"] = self.OnSubFinish4002806,
        ["4002815"] = self.OnSubFinish4002815,
        ["4002819"] = self.OnSubFinish4002819,
        ["4002807"] = self.OnSubFinish4002807,
        ["4002808"] = self.OnSubFinish4002808,
        ["4002816"] = self.OnSubFinish4002816,
        ["4002809"] = self.OnSubFinish4002809,
        ["4002820"] = self.OnSubFinish4002820,
        ["4002810"] = self.OnSubFinish4002810,
        ["4002811"] = self.OnSubFinish4002811,
        ["4002812"] = self.OnSubFinish4002812,
        ["4002813"] = self.OnSubFinish4002813,
        ["4002814"] = self.OnSubFinish4002814,
        ["4002817"] = self.OnSubFinish4002817,
        ["4002805"] = self.OnSubFinish4002805,
        ["4002821"] = self.OnSubFinish4002821
    }
end

function Quest40028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40028:Start()
    print("Start")
end

function Quest40028:OnDestroy()
    print("OnDestroy")
end

function Quest40028:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("WinterCampBossPage")
    end)
end

function Quest40028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40028:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
    local actor = actorMgr:GetActor("40028")
    actor:UnSpawn(gadgets.Gadget70300048Data.alias)
    actor:UnSpawn(gadgets.Gadget70310023Data.alias)
    actorMgr:DestroyEntityActor("Q40028Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40028Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40028Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40028Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q40028Trigger5", 3, false)
    actorMgr:DestroyEntityActor("Q40028Trigger6", 3, false)
    actorMgr:DestroyEntityActor("Q40028Trigger7", 3, false)
    actorMgr:DestroyEntityActor("Q4002803_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4002807_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4002811_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4002814_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4002817_Trigger", 3, false)
end

function Quest40028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40028:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest40028:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40028:OnSubStart4002801(arg1)
    print("OnSubStart4002801")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.AmborData.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 4)
    self:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q40028Trigger", "Actor/Gadget/Q40028Trigger", 70900002, 0, {x = 1213.328, y = 374.5201, z = -786.0114}, {x = 0, y = 0, z = 0}, true, false)
        arg1_2:CallDelay(1, function(arg1)
            if arg1:GetQuestVar(4002801, 0) == 0 then
                arg1:NarratorOnlyTaskByData(datas.Narrator_4002801, function(arg1)
                    arg1:SetQuestVarByMainId(0, 3)
                end, 40028)
            end
        end)

        arg1_2:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 3)
        local questNpcActor = arg1_2:GetQuestNpcActor(npcs.Npc1024Data.alias)
        questNpcActor:ClearLookAt()
        if questNpcActor.ForceFinishEmoSync ~= nil then
            questNpcActor:ForceFinishEmoSync(0)
        end
    end)
end

function Quest40028:OnSubFinish4002801(arg1)
    print("OnSubFinish4002801")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
end

function Quest40028:OnSubStart4002802(arg1)
    print("OnSubStart4002802")
    self:UnSpawn(gadgets.Gadget70310023Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70310023Data.id, 1, 0)
    actorMgr:CreateActorWithPos("Q40028Trigger4", "Actor/Gadget/Q40028Trigger4", 70900002, 0, {x = 1235.681, y = 374.5522, z = -780.9454}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40028:OnSubFinish4002802(arg1)
    print("OnSubFinish4002802")
    self:UnSpawn(gadgets.Gadget70310023Data.alias)
    self:ActorDestroy("Q40028Trigger4")
end

function Quest40028:OnSubStart4002803(arg1)
    print("OnSubStart4002803")
    self:NpcCreate(arg1, npcs.AmborData.id, 1)
    self:NpcCreate(arg1, npcs.Npc1029Data.id, 2)
    actorMgr:CreateActorWithPos("Q4002803_Trigger", "Actor/Gadget/Q4002803_Trigger", 70900002, 0, {x = 1225.108, y = 374.7668, z = -781.5555}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40028:OnSubFinish4002803(arg1)
    print("OnSubFinish4002803")
    self:NpcDestroy(npcs.AmborData.alias, 3)
    self:NpcDestroy(npcs.Npc1029Data.alias, 3)
end

function Quest40028:OnSubStart4002804(arg1)
    print("OnSubStart4002804")
    actorMgr:CreateActorWithPos("Q40028Trigger1", "Actor/Gadget/Q40028Trigger1", 70900002, 0, {x = 1268.906, y = 341.5314, z = -793.6443}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40028:OnSubFinish4002804(arg1)
    print("OnSubFinish4002804")
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
end

function Quest40028:OnSubStart4002818(arg1)
    print("OnSubStart4002818")
end

function Quest40028:OnSubFinish4002818(arg1)
    print("OnSubFinish4002818")
end

function Quest40028:OnSubStart4002806(arg1)
    print("OnSubStart4002806")
end

function Quest40028:OnSubFinish4002806(arg1)
    print("OnSubFinish4002806")
end

function Quest40028:OnSubStart4002815(arg1)
    print("OnSubStart4002815")
end

function Quest40028:OnSubFinish4002815(arg1)
    print("OnSubFinish4002815")
    self:NarratorOnlyTaskByData(datas.Narrator_4002802, nil, 40028)
end

function Quest40028:OnSubStart4002819(arg1)
    print("OnSubStart4002819")
end

function Quest40028:OnSubFinish4002819(arg1)
    print("OnSubFinish4002819")
    self:NarratorOnlyTaskByData(datas.Narrator_4002803, nil, 40028)
end

function Quest40028:OnSubStart4002807(arg1)
    print("OnSubStart4002807")
    self:NpcCreate(arg1, npcs.AmborData.id, 2)
    self:NpcCreate(arg1, npcs.Npc1024Data.id, 3)
    self:NpcCreate(arg1, npcs.Npc1029Data.id, 4)
    actorMgr:CreateActorWithPos("Q4002807_Trigger", "Actor/Gadget/Q4002807_Trigger", 70900002, 0, {x = 1367.726, y = 292.0492, z = -743.5292}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40028:OnSubFinish4002807(arg1)
    print("OnSubFinish4002807")
    self:NpcDestroy(npcs.AmborData.alias, 3)
    self:NpcDestroy(npcs.Npc1024Data.alias, 3)
    self:NpcDestroy(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
end

function Quest40028:OnSubStart4002808(arg1)
    print("OnSubStart4002808")
    actorMgr:CreateActorWithPos("Q40028Trigger5", "Actor/Gadget/Q40028Trigger5", 70900002, 0, {x = 1378.375, y = 269.0338, z = -647.9267}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40028:OnSubFinish4002808(arg1)
    print("OnSubFinish4002808")
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
    self:TransmitPlayerWithTextByQuestId(4002808, 3, datas.Textmap_4002808, 3)
end

function Quest40028:OnSubStart4002816(arg1)
    print("OnSubStart4002816")
    actorMgr:CreateActorWithPos("Q40028Trigger6", "Actor/Gadget/Q40028Trigger6", 70900002, 0, {x = 1128.53, y = 283.5518, z = -433.3372}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40028:OnSubFinish4002816(arg1)
    print("OnSubFinish4002816")
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
end

function Quest40028:OnSubStart4002809(arg1)
    print("OnSubStart4002809")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.AmborData.id, 2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 4)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12254Data.id, 5)
        arg1_2:UnSpawn(gadgets.Gadget70300048Data.alias)
        arg1_2:SpawnGadgetWithPos(arg1, gadgets.Gadget70300048Data.id, 1, {x = 1117.39, y = 287.21, z = -429.6328}, {x = 0, y = 90, z = 0}, "")
        arg1_2:GetQuestNpcActor(npcs.AmborData.alias):SitOnChair(8010)
    end)
end

function Quest40028:OnSubFinish4002809(arg1)
    print("OnSubFinish4002809")
end

function Quest40028:OnSubStart4002820(arg1)
    print("OnSubStart4002820")
    self:UnSpawn(gadgets.Gadget70300048Data.alias)
    self:SpawnGadgetWithPos(arg1, gadgets.Gadget70300048Data.id, 1, {x = 1117.39, y = 287.21, z = -429.6328}, {x = 0, y = 90, z = 0}, "")
    self:GetQuestNpcActor(npcs.AmborData.alias):SitOnChair(0)
end

function Quest40028:OnSubFinish4002820(arg1)
    print("OnSubFinish4002820")
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12254Data.alias, 3)
end

function Quest40028:OnSubStart4002810(arg1)
    print("OnSubStart4002810")
    actorMgr:CreateActorWithPos("Q40028Trigger7", "Actor/Gadget/Q40028Trigger7", 70900002, 0, {x = 1103.009, y = 285.8612, z = -436.4464}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40028:OnSubFinish4002810(arg1)
    print("OnSubFinish4002810")
    self:NarratorOnlyTaskByData(datas.Narrator_4002804, nil, 40028)
end

function Quest40028:OnSubStart4002811(arg1)
    print("OnSubStart4002811")
    actorMgr:CreateActorWithPos("Q4002811_Trigger", "Actor/Gadget/Q4002811_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q40028_quest_monster").pos, sceneData:GetDummyPoint(3, "Q40028_quest_monster").rot, true, false, 3)
end

function Quest40028:OnSubFinish4002811(arg1)
    print("OnSubFinish4002811")
    local actor = actorMgr:GetActor("Q4002811_Trigger")
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40028:OnSubStart4002812(arg1)
    print("OnSubStart4002812")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.AmborData.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1024Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 4)
    self:CallDelay(2, function(arg1)
        arg1:RequestInteraction(npcs.Npc1018Data.alias)
    end)
end

function Quest40028:OnSubFinish4002812(arg1)
    print("OnSubFinish4002812")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
end

function Quest40028:OnSubStart4002813(arg1)
    print("OnSubStart4002813")
    actorMgr:CreateActorWithPos("Q40028Trigger3", "Actor/Gadget/Q40028Trigger3", 70900002, 0, {x = 1600.632, y = 286.1065, z = -1088.333}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40028:OnSubFinish4002813(arg1)
    print("OnSubFinish4002813")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AmborData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1024Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1029Data.alias, 3)
    self:ShowBlackScreen(0.3, 0.4, 0.3, nil, nil, nil, "", false, true)
    self:CallDelay(0.5, function(arg1)
        arg1:TransmitPlayerWithTextByQuestId(4002814, 1, datas.Textmap_4002817, 3)
    end)
end

function Quest40028:OnSubStart4002814(arg1)
    print("OnSubStart4002814")
    actorMgr:CreateActorWithPos("Q4002814_Trigger", "Actor/Gadget/Q4002814_Trigger", 70900002, 0, {x = 1196.718, y = 374.2164, z = -792.0026}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40028:OnSubFinish4002814(arg1)
    print("OnSubFinish4002814")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
end

function Quest40028:OnSubStart4002817(arg1)
    print("OnSubStart4002817")
    self:ActionSafeCall(function(arg1)
        arg1:TransmitPlayerByQuestId(4002817, 1)
        actorMgr:CreateActorWithPos("Q4002817_Trigger", "Actor/Gadget/Q4002817_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4002814_player_transmit").pos, sceneData:GetDummyPoint(3, "Q4002814_player_transmit").rot, true, false, 3)
    end)
end

function Quest40028:OnSubFinish4002817(arg1)
    print("OnSubFinish4002817")
end

function Quest40028:OnSubStart4002805(arg1)
    print("OnSubStart4002805")
end

function Quest40028:OnSubFinish4002805(arg1)
    print("OnSubFinish4002805")
end

function Quest40028:OnSubStart4002821(arg1)
    print("OnSubStart4002821")
end

function Quest40028:OnSubFinish4002821(arg1)
    print("OnSubFinish4002821")
end

return Quest40028
