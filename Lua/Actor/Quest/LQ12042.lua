require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12042 = class("Quest12042", QuestActorProxy)
Quest12042.defaultAlias = "Quest12042"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12042:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12042:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1204201"] = self.OnSubStart1204201,
        ["1204202"] = self.OnSubStart1204202,
        ["1204203"] = self.OnSubStart1204203,
        ["1204204"] = self.OnSubStart1204204,
        ["1204205"] = self.OnSubStart1204205,
        ["1204211"] = self.OnSubStart1204211,
        ["1204206"] = self.OnSubStart1204206,
        ["1204207"] = self.OnSubStart1204207,
        ["1204208"] = self.OnSubStart1204208,
        ["1204210"] = self.OnSubStart1204210,
        ["1204209"] = self.OnSubStart1204209
    }
end

function Quest12042:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1204201"] = self.OnSubFinish1204201,
        ["1204202"] = self.OnSubFinish1204202,
        ["1204203"] = self.OnSubFinish1204203,
        ["1204204"] = self.OnSubFinish1204204,
        ["1204205"] = self.OnSubFinish1204205,
        ["1204211"] = self.OnSubFinish1204211,
        ["1204206"] = self.OnSubFinish1204206,
        ["1204207"] = self.OnSubFinish1204207,
        ["1204208"] = self.OnSubFinish1204208,
        ["1204210"] = self.OnSubFinish1204210,
        ["1204209"] = self.OnSubFinish1204209
    }
end

function Quest12042:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1204206"] = self.OnSubFailed1204206,
        ["1204207"] = self.OnSubFailed1204207,
        ["1204208"] = self.OnSubFailed1204208,
        ["1204210"] = self.OnSubFailed1204210
    }
end

function Quest12042:Start()
    print("Start")
end

function Quest12042:OnDestroy()
    print("OnDestroy")
end

function Quest12042:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12042:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12042:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12042:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12042:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1204201 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1036Data.alias, 12042)
        if questNpcActor ~= nil then
            questNpcActor:SpawnAttach("Shogun_Katana_WeaponR")
        end
    elseif arg1 == 1204202 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12379Data.alias, 12042)
        if questNpcActor ~= nil then
            questNpcActor:SpawnAttach("Shogun_Narukami_WeaponR")
        end
    elseif arg1 == 1204203 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12379Data.alias, 12042)
        if questNpcActor ~= nil then
            questNpcActor:UnSpawnAttach("Shogun_Narukami_WeaponR")
        end
    end
end

function Quest12042:OnSubStart1204201(arg1)
    print("OnSubStart1204201")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
    actorMgr:CreateActorWithPos("Q12042Trigger", "Actor/Gadget/Q12042Trigger", 70900002, 0, {x = -2465.73, y = 448.2446, z = -4421.357}, {x = 0, y = 0, z = 0}, true, false, 3)
    self:NotifyTo(npcs.Npc3109Data.alias, 1, true)
    if self:GetQuestVar(1204201, 1) == 0 then
        self:TransmitPlayerById(arg1, 1)
        self:SetQuestVarByMainId(1, 3)
    end
end

function Quest12042:OnSubFinish1204201(arg1)
    print("OnSubFinish1204201")
end

function Quest12042:OnSubStart1204202(arg1)
    print("OnSubStart1204202")
    self:RequestInteraction(npcs.Npc1034Data.alias)
end

function Quest12042:OnSubFinish1204202(arg1)
    print("OnSubFinish1204202")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1034Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
    end)
end

function Quest12042:OnSubStart1204203(arg1)
    print("OnSubStart1204203")
    actorMgr:CreateActorWithPos("Q12042Trigger1", "Actor/Gadget/Q12042Trigger1", 70900002, 0, {x = -2475.419, y = 371.08, z = -4406.861}, {x = 0, y = 0, z = 0}, true, false)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:StopNarrator()
        arg1:ClearNarratorTask()
        arg1:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
        arg1:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
    end)
end

function Quest12042:OnSubFinish1204203(arg1)
    print("OnSubFinish1204203")
    self:ActorDestroy("Q12042Trigger1")
end

function Quest12042:OnSubStart1204204(arg1)
    print("OnSubStart1204204")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1034Data.alias)
    end, nil, nil, "", false, true)
end

function Quest12042:OnSubFinish1204204(arg1)
    print("OnSubFinish1204204")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1034Data.alias, 3)
    end)
end

function Quest12042:OnSubStart1204205(arg1)
    print("OnSubStart1204205")
    globalActor:PlayerEnterDungeon(454, 1129)
end

function Quest12042:OnSubFinish1204205(arg1)
    print("OnSubFinish1204205")
end

function Quest12042:OnSubStart1204211(arg1)
    print("OnSubStart1204211")
    if self:GetQuestVar(1204211, 3) < 3 then
        self:LevelLoadFinishSafeCall(function(arg1)
            arg1:PlayCutsceneIndex("1204205", function(arg1)
                arg1:FinishQuestID(false, 1204211)
            end, nil, nil, false)
        end)
    else
        self:LevelLoadFinishSafeCall(function(arg1)
            arg1:FinishQuestID(false, 1204211)
        end)
    end
end

function Quest12042:OnSubFinish1204211(arg1)
    print("OnSubFinish1204211")
end

function Quest12042:OnSubStart1204206(arg1)
    print("OnSubStart1204206")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
        arg1_2:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
        arg1_2:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
    end)
end

function Quest12042:OnSubFinish1204206(arg1)
    print("OnSubFinish1204206")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
        arg1:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
    end)
end

function Quest12042:OnSubFailed1204206(arg1)
    print("OnSubFailed1204206")
    self:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
    self:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
end

function Quest12042:OnSubStart1204207(arg1)
    print("OnSubStart1204207")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Q1204207KAICHE, nil, 12042)
    end)
end

function Quest12042:OnSubFinish1204207(arg1)
    print("OnSubFinish1204207")
end

function Quest12042:OnSubFailed1204207(arg1)
    print("OnSubFailed1204207")
    self:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
    self:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
    self:ClearNarratorTask()
end

function Quest12042:OnSubStart1204208(arg1)
    print("OnSubStart1204208")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
        end, nil, nil, "", false, true)
    end)

    self:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
    self:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
end

function Quest12042:OnSubFinish1204208(arg1)
    print("OnSubFinish1204208")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    end)

    self:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
    self:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
end

function Quest12042:OnSubFailed1204208(arg1)
    print("OnSubFailed1204208")
    self:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
    self:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
end

function Quest12042:OnSubStart1204210(arg1)
    print("OnSubStart1204210")
    if self:GetQuestVar(1204210, 2) < 3 then
        self:ActionSafeCall(function(arg1_2)
            arg1_2:PlayCutsceneIndex(1204208, function(arg1_2)
                arg1_2:TransmitPlayerById(arg1, 1)
            end, nil, nil, false)
        end)
    else
        self:ActionSafeCall(function(arg1_2)
            arg1_2:TransmitPlayerById(arg1, 1)
        end)
    end
end

function Quest12042:OnSubFinish1204210(arg1)
    print("OnSubFinish1204210")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:CreateQuestNpcById(1204209, npcs.Npc1036Data.id, 0)
        arg1:CreateQuestNpcById(1204209, npcs.Npc1034Data.id, 0)
    end)
end

function Quest12042:OnSubFailed1204210(arg1)
    print("OnSubFailed1204210")
    self:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
    self:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
end

function Quest12042:OnSubStart1204209(arg1)
    print("OnSubStart1204209")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:NotifyTo(npcs.Npc3109Data.alias, 1, true)
        arg1:RequestInteraction(npcs.Npc1036Data.alias)
    end)
end

function Quest12042:OnSubFinish1204209(arg1)
    print("OnSubFinish1204209")
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
    end)
end

return Quest12042
