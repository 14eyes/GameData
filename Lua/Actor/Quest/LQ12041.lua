require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12041 = class("Quest12041", QuestActorProxy)
Quest12041.defaultAlias = "Quest12041"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12041:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12041:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1204101"] = self.OnSubStart1204101,
        ["1204116"] = self.OnSubStart1204116,
        ["1204102"] = self.OnSubStart1204102,
        ["1204103"] = self.OnSubStart1204103,
        ["1204104"] = self.OnSubStart1204104,
        ["1204105"] = self.OnSubStart1204105,
        ["1204106"] = self.OnSubStart1204106,
        ["1204107"] = self.OnSubStart1204107,
        ["1204108"] = self.OnSubStart1204108,
        ["1204109"] = self.OnSubStart1204109,
        ["1204117"] = self.OnSubStart1204117,
        ["1204110"] = self.OnSubStart1204110,
        ["1204115"] = self.OnSubStart1204115,
        ["1204111"] = self.OnSubStart1204111,
        ["1204112"] = self.OnSubStart1204112,
        ["1204113"] = self.OnSubStart1204113,
        ["1204114"] = self.OnSubStart1204114
    }
end

function Quest12041:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1204101"] = self.OnSubFinish1204101,
        ["1204116"] = self.OnSubFinish1204116,
        ["1204102"] = self.OnSubFinish1204102,
        ["1204103"] = self.OnSubFinish1204103,
        ["1204104"] = self.OnSubFinish1204104,
        ["1204105"] = self.OnSubFinish1204105,
        ["1204106"] = self.OnSubFinish1204106,
        ["1204107"] = self.OnSubFinish1204107,
        ["1204108"] = self.OnSubFinish1204108,
        ["1204109"] = self.OnSubFinish1204109,
        ["1204117"] = self.OnSubFinish1204117,
        ["1204110"] = self.OnSubFinish1204110,
        ["1204115"] = self.OnSubFinish1204115,
        ["1204111"] = self.OnSubFinish1204111,
        ["1204112"] = self.OnSubFinish1204112,
        ["1204113"] = self.OnSubFinish1204113,
        ["1204114"] = self.OnSubFinish1204114
    }
end

function Quest12041:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1204105"] = self.OnSubFailed1204105,
        ["1204107"] = self.OnSubFailed1204107,
        ["1204111"] = self.OnSubFailed1204111,
        ["1204112"] = self.OnSubFailed1204112,
        ["1204113"] = self.OnSubFailed1204113
    }
end

function Quest12041:Start()
    print("Start")
end

function Quest12041:OnDestroy()
    print("OnDestroy")
end

function Quest12041:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12041:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12041:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12041:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest12041:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("ShogunRandomDead")
    if arg1.valueString == "ShougunQuest_Timestop" then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if self:GetQuestVar(1204105, 1) == 0 then
            self:NarratorOnlyTaskByData(datas.Q1204105Kaiche, nil, 12041)
            self:SetQuestVarByMainId(1, 3)
        end
    end
end

function Quest12041:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1204101 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1036Data.alias, 12041)
        print("ShougunKatana")
        if questNpcActor ~= nil then
            questNpcActor:SpawnAttach("Shogun_Katana_WeaponR")
        end
    elseif arg1 == 1204102 then
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc12379Data.alias, 12041)
        if questNpcActor ~= nil then
            questNpcActor:SpawnAttach("Shogun_Narukami_WeaponR")
        end
    end
end

function Quest12041:OnSubStart1204101(arg1)
    print("OnSubStart1204101")
    self:CreateQuestNpc(arg1, npcs.Npc12428Data.id, 1)
    actorMgr:CreateActorWithPos("Q12041Trigger8", "Actor/Gadget/Q12041Trigger8", 70900002, 0, {x = -2334.186, y = 225.9624, z = -4230.317}, {x = 0, y = 0, z = 0}, true, false, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Q1204101Kaiche, nil, 12041)
    end)

    actorMgr:CreateActorWithPos("Q12041Trigger5", "Actor/Gadget/Q12041Trigger5", 70900002, 0, {x = -2345.993, y = 226.1329, z = -4206.599}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest12041:OnSubFinish1204101(arg1)
    print("OnSubFinish1204101")
    self:ActorDestroy("Q12041Trigger8")
end

function Quest12041:OnSubStart1204116(arg1)
    print("OnSubStart1204116")
    actorMgr:CreateActorWithPos("Q12041Trigger4", "Actor/Gadget/Q12041Trigger4", 70900002, 0, {x = -2340.3, y = 226.5882, z = -4198.739}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12041:OnSubFinish1204116(arg1)
    print("OnSubFinish1204116")
    self:ActorDestroy("Q12041Trigger5")
end

function Quest12041:OnSubStart1204102(arg1)
    print("OnSubStart1204102")
    actorMgr:CreateActorWithPos("Q12041Trigger1", "Actor/Gadget/Q12041Trigger1", 70900002, 0, {x = -2414.035, y = 201.0166, z = -4152.046}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12041:OnSubFinish1204102(arg1)
    print("OnSubFinish1204102")
    self:ActorDestroy("Q12041Trigger1")
    self:DestroyQuestNpcActor(npcs.Npc12428Data.alias, 3)
end

function Quest12041:OnSubStart1204103(arg1)
    print("OnSubStart1204103")
    actorMgr:CreateActorWithPos("Q12041Trigger2", "Actor/Gadget/Q12041Trigger2", 70900002, 0, {x = -2466.624, y = 200.1158, z = -4155.517}, {x = 0, y = 0, z = 0}, true, false)
    self:CancelAvatarHPWatcher("12041")
    actorMgr:CreateActorWithPos("Q12041Trigger6", "Actor/Gadget/Q12041Trigger6", 70900002, 0, {x = -2449.259, y = 200.1748, z = -4134.115}, {x = 0, y = 0, z = 0}, true, false, 3)
    self:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12430Data.alias, 3)
end

function Quest12041:OnSubFinish1204103(arg1)
    print("OnSubFinish1204103")
    self:ActorDestroy("Q12041Trigger2")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
    end, nil, nil, "", false, false)

    self:ActorDestroy("Q12041Trigger6")
end

function Quest12041:OnSubStart1204104(arg1)
    print("OnSubStart1204104")
    self:CancelAvatarHPWatcher("12041")
end

function Quest12041:OnSubFinish1204104(arg1)
    print("OnSubFinish1204104")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    end)
end

function Quest12041:OnSubStart1204105(arg1)
    print("OnSubStart1204105")
    self:SetQuestVar(1204105, 1, 0)
    self:AddAvatarHPWatcher("12041", 10000052, 0, 0.2, -1, 0.5, function(arg1)
        arg1:FinishQuestID(false, 1204105)
    end)
end

function Quest12041:OnSubFinish1204105(arg1)
    print("OnSubFinish1204105")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
    end, nil, nil, "", false, false)

    self:CancelAvatarHPWatcher("12041")
    self:ClearNarratorTask()
end

function Quest12041:OnSubFailed1204105(arg1)
    print("OnSubFailed1204105")
    self:CancelAvatarHPWatcher("12041")
end

function Quest12041:OnSubStart1204106(arg1)
    print("OnSubStart1204106")
    self:CancelAvatarHPWatcher("12041")
end

function Quest12041:OnSubFinish1204106(arg1)
    print("OnSubFinish1204106")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    end)
end

function Quest12041:OnSubStart1204107(arg1)
    print("OnSubStart1204107")
    self:ActionSafeCall(function(arg1_2)
        print("SartFreecs")
        local v = arg1_2
        local playFreeCutscene = arg1_2.PlayFreeCutscene
        local tbl = {
            type = CutsceneType.TIME_LINE_PREFAB,
            roleSheetPath = "",
            resPath = "ART/Cutscene/Cs_25_CartoonTest_01",
            startPosType = CutsceneInitPosType.FREE
        }

        local startOffset = {}
        local n = 0
        local n2 = 0
        startOffset[1] = 0
        startOffset[2] = n
        startOffset[3] = n2
        tbl.startOffset = startOffset
        tbl.targetPos = {x = -2464.878, y = 200.955, z = -4146.771}
        tbl.syncLoad = false
        playFreeCutscene(v, tbl, nil, nil)
        print("playfreecs")
        local v2 = arg1_2
        local func = arg1_2.PlayFreeCutscene
        local tbl2 = {
            type = CutsceneType.TIME_LINE_PREFAB,
            roleSheetPath = "",
            resPath = "ART/Cutscene/Cs_25_CartoonTest_02",
            startPosType = CutsceneInitPosType.FREE
        }

        local startOffset2 = {}
        local n3 = 0
        local n4 = 0
        startOffset2[1] = 0
        startOffset2[2] = n3
        startOffset2[3] = n4
        tbl2.startOffset = startOffset2
        tbl2.targetPos = {x = -2448.846, y = 200.3184, z = -4147.583}
        tbl2.syncLoad = false
        func(v2, tbl2, nil, nil)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12430Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc1036Data.alias):DoFreeStyle(1240, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc12430Data.alias):DoFreeStyle(4050, true, nil, true, true, false)
    end)

    self:SetQuestVarByMainId(1, 0)
    self:NarratorOnlyTaskByData(datas.Q1204107Kaiche, nil, 12041)
    self:TransmitPlayerById(arg1, 1)
end

function Quest12041:OnSubFinish1204107(arg1)
    print("OnSubFinish1204107")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
        local v = arg1_2
        local stopFreeCutscene = arg1_2.StopFreeCutscene
        local tbl = {
            type = CutsceneType.TIME_LINE_PREFAB,
            roleSheetPath = "",
            resPath = "ART/Cutscene/Cs_25_CartoonTest_01",
            startPosType = CutsceneInitPosType.FREE
        }

        local startOffset = {}
        local n = 0
        local n2 = 0
        startOffset[1] = 0
        startOffset[2] = n
        startOffset[3] = n2
        tbl.startOffset = startOffset
        tbl.targetPos = {x = -2464.878, y = 200.955, z = -4146.771}
        tbl.syncLoad = false
        stopFreeCutscene(v, tbl, TRUE)
        local v2 = arg1_2
        local func = arg1_2.StopFreeCutscene
        local tbl2 = {
            type = CutsceneType.TIME_LINE_PREFAB,
            roleSheetPath = "",
            resPath = "ART/Cutscene/Cs_25_CartoonTest_02",
            startPosType = CutsceneInitPosType.FREE
        }

        local startOffset2 = {}
        local n3 = 0
        local n4 = 0
        startOffset2[1] = 0
        startOffset2[2] = n3
        startOffset2[3] = n4
        tbl2.startOffset = startOffset2
        tbl2.targetPos = {x = -2448.846, y = 200.3184, z = -4147.583}
        tbl2.syncLoad = false
        func(v2, tbl2, TRUE)
    end, nil, nil, "", false, false)
end

function Quest12041:OnSubFailed1204107(arg1)
    print("OnSubFailed1204107")
    local this = self
    local stopFreeCutscene = self.StopFreeCutscene
    local tbl = {
        type = CutsceneType.TIME_LINE_PREFAB,
        roleSheetPath = "",
        resPath = "ART/Cutscene/Cs_25_CartoonTest_01",
        startPosType = CutsceneInitPosType.FREE
    }

    local startOffset = {}
    local n = 0
    local v = 0
    startOffset[1] = 0
    startOffset[2] = n
    startOffset[3] = v
    tbl.startOffset = startOffset
    tbl.targetPos = {x = -2464.878, y = 200.955, z = -4146.771}
    tbl.syncLoad = false
    stopFreeCutscene(this, tbl, TRUE)
    local this2 = self
    local func = self.StopFreeCutscene
    local tbl2 = {
        type = CutsceneType.TIME_LINE_PREFAB,
        roleSheetPath = "",
        resPath = "ART/Cutscene/Cs_25_CartoonTest_02",
        startPosType = CutsceneInitPosType.FREE
    }

    local startOffset2 = {}
    local n2 = 0
    local n3 = 0
    startOffset2[1] = 0
    startOffset2[2] = n2
    startOffset2[3] = n3
    tbl2.startOffset = startOffset2
    tbl2.targetPos = {x = -2448.846, y = 200.3184, z = -4147.583}
    tbl2.syncLoad = false
    func(this2, tbl2, TRUE)
    self:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12430Data.alias, 3)
end

function Quest12041:OnSubStart1204108(arg1)
    print("OnSubStart1204108")
end

function Quest12041:OnSubFinish1204108(arg1)
    print("OnSubFinish1204108")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    end)
end

function Quest12041:OnSubStart1204109(arg1)
    print("OnSubStart1204109")
    actorMgr:CreateActorWithPos("Q12041Trigger3", "Actor/Gadget/Q12041Trigger3", 70900002, 0, {x = -2469.238, y = 370.234, z = -4414.419}, {x = 0, y = 0, z = 0}, true, false, 3)
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
        arg1:StopNarrator()
        arg1:ClearNarratorTask()
        arg1:GetQuestNpcActor(npcs.Npc12430Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
    end)
end

function Quest12041:OnSubFinish1204109(arg1)
    print("OnSubFinish1204109")
    self:ActorDestroy("Q12041Trigger3")
end

function Quest12041:OnSubStart1204117(arg1)
    print("OnSubStart1204117")
    actorMgr:CreateActorWithPos("Q12041Trigger9", "Actor/Gadget/Q12041Trigger9", 70900002, 0, {x = -2477.383, y = 370.8, z = -4404.902}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12041:OnSubFinish1204117(arg1)
    print("OnSubFinish1204117")
    self:ActorDestroy("Q12041Trigger9")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
        arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
    end, nil, nil, "", false, false)
end

function Quest12041:OnSubStart1204110(arg1)
    print("OnSubStart1204110")
end

function Quest12041:OnSubFinish1204110(arg1)
    print("OnSubFinish1204110")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
    end)

    globalActor:PlayerEnterDungeon(454, 1129)
end

function Quest12041:OnSubStart1204115(arg1)
    print("OnSubStart1204115")
end

function Quest12041:OnSubFinish1204115(arg1)
    print("OnSubFinish1204115")
end

function Quest12041:OnSubStart1204111(arg1)
    print("OnSubStart1204111")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
        end, nil, nil, "", false, false)

        arg1_2:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
        arg1_2:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
    end)
end

function Quest12041:OnSubFinish1204111(arg1)
    print("OnSubFinish1204111")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
        arg1:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
    end)
end

function Quest12041:OnSubFailed1204111(arg1)
    print("OnSubFailed1204111")
    self:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
    self:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
end

function Quest12041:OnSubStart1204112(arg1)
    print("OnSubStart1204112")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Q1204111Kaiche, nil, 12041)
    end)
end

function Quest12041:OnSubFinish1204112(arg1)
    print("OnSubFinish1204112")
    self:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
    self:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
end

function Quest12041:OnSubFailed1204112(arg1)
    print("OnSubFailed1204112")
    self:ClearNarratorTask()
end

function Quest12041:OnSubStart1204113(arg1)
    print("OnSubStart1204113")
    self:CallDelay(1, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 0)
            arg1_2:RequestInteraction(npcs.Npc1036Data.alias)
        end, nil, nil, "", false, true)
    end)

    self:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
    self:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
end

function Quest12041:OnSubFinish1204113(arg1)
    print("OnSubFinish1204113")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
        arg1:GetQuestNpcActor(npcs.Npc12379Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
    end)

    self:TransmitPlayerById(arg1, 1, nil, function(arg1)
        arg1:RequestInteraction(npcs.Npc1005Data.alias)
    end)
end

function Quest12041:OnSubFailed1204113(arg1)
    print("OnSubFailed1204113")
    self:GetQuestNpcActor(npcs.Npc1036Data.alias):UnSpawnAttach("Shogun_Katana_WeaponR")
    self:GetQuestNpcActor(npcs.Npc12430Data.alias):UnSpawnAttach("Shogun_Narukami_WeaponR")
end

function Quest12041:OnSubStart1204114(arg1)
    print("OnSubStart1204114")
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1005Data.id, 0)
    end)

    actorMgr:CreateActorWithPos("Q12041Trigger7", "Actor/Gadget/Q12041Trigger7", 70900002, 0, {x = -2474.891, y = 369.9546, z = -4402.186}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest12041:OnSubFinish1204114(arg1)
    print("OnSubFinish1204114")
end

return Quest12041
