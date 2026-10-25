require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10101 = class("Quest10101", QuestActorProxy)
Quest10101.defaultAlias = "Quest10101"
local clientData
local routeData
local route1
local lisaData
local playerData
local paimonData
local abyssData
local routeBookData
local lisaHitEffect
local lisaSkillEffect
local dungeonSealEffect
local dungeonSealBreak
local bookData
local n = 0
local dungeonOpenEffect

function Quest10101:OnDataLoaded()
    clientData = self.clientData
    routeData = clientData.RouteData
    lisaData = clientData.LisaData
    playerData = clientData.PlayerData
    paimonData = clientData.PaimonData
    abyssData = clientData.AbyssData
    routeBookData = clientData.RouteBookData
    lisaHitEffect = clientData.LisaHitEffect
    lisaSkillEffect = clientData.LisaSkillEffect
    dungeonSealEffect = clientData.DungeonSealEffect
    dungeonSealBreak = clientData.DungeonSealBreak
    dungeonOpenEffect = clientData.DungeonOpenEffect
    bookData = clientData.BookData
end

function Quest10101:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1010101"] = self.OnSubStart1010101
    self.subStartHandlers["1010102"] = self.OnSubStart1010102
    self.subStartHandlers["1010103"] = self.OnSubStart1010103
    self.subStartHandlers["1010104"] = self.OnSubStart1010104
    self.subStartHandlers["1010105"] = self.OnSubStart1010105
    self.subStartHandlers["1010106"] = self.OnSubStart1010106
    self.subStartHandlers["1010107"] = self.OnSubStart1010107
    self.subStartHandlers["1010108"] = self.OnSubStart1010108
    self.subStartHandlers["1010109"] = self.OnSubStart1010109
    self.subStartHandlers["1010110"] = self.OnSubStart1010110
    self.subStartHandlers["1010111"] = self.OnSubStart1010111
    self.subStartHandlers["1010112"] = self.OnSubStart1010112
    self.subStartHandlers["1010113"] = self.OnSubStart1010113
    self.subStartHandlers["1010114"] = self.OnSubStart1010114
    self.subStartHandlers["1010117"] = self.OnSubStart1010117
    self.subStartHandlers["1010118"] = self.OnSubStart1010118
    self.subStartHandlers["1010119"] = self.OnSubStart1010119
    self.subStartHandlers["1010120"] = self.OnSubStart1010120
    self.subStartHandlers["1010122"] = self.OnSubStart1010122
end

function Quest10101:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1010101"] = self.OnSubFinish1010101
    self.subFinishHandlers["1010102"] = self.OnSubFinish1010102
    self.subFinishHandlers["1010103"] = self.OnSubFinish1010103
    self.subFinishHandlers["1010104"] = self.OnSubFinish1010104
    self.subFinishHandlers["1010105"] = self.OnSubFinish1010105
    self.subFinishHandlers["1010106"] = self.OnSubFinish1010106
    self.subFinishHandlers["1010107"] = self.OnSubFinish1010107
    self.subFinishHandlers["1010108"] = self.OnSubFinish1010108
    self.subFinishHandlers["1010109"] = self.OnSubFinish1010109
    self.subFinishHandlers["1010110"] = self.OnSubFinish1010110
    self.subFinishHandlers["1010111"] = self.OnSubFinish1010111
    self.subFinishHandlers["1010112"] = self.OnSubFinish1010112
    self.subFinishHandlers["1010113"] = self.OnSubFinish1010113
    self.subFinishHandlers["1010114"] = self.OnSubFinish1010114
    self.subFinishHandlers["1010117"] = self.OnSubFinish1010117
    self.subFinishHandlers["1010118"] = self.OnSubFinish1010118
    self.subFinishHandlers["1010119"] = self.OnSubFinish1010119
    self.subFinishHandlers["1010120"] = self.OnSubFinish1010120
    self.subFinishHandlers["1010122"] = self.OnSubFinish1010122
end

function Quest10101:OpenCompass()
    Quest10101:CallOnElemViewOpen(function()
        if actorMgr:GetActor("10101"):GetSubQuestState(1010101) == 2 then
            if route1 ~= nil then
                local avatarPos = actorUtils.GetAvatarPos()
                local tbl = {x = route1.x - avatarPos.x, y = 0, z = route1.z - avatarPos.z}
                local avatarForward = actorUtils.GetAvatarForward()
                local n = 2
                local v = actorUtils.GetAvatarPos()
                v.x = v.x + avatarForward.x * n
                v.y = v.y + 0.4
                v.z = v.z + avatarForward.z * n
                actorMgr:GetActor(clientData.ActorAlias):SpawnGadgetByIdWithPos(1010102, 70700006, 1, v, M.Dir2Euler(tbl))
                Quest10101:CloseCompass()
            end
        end
    end)
end

function Quest10101:CloseCompass()
    print("CloseCompass")
    Quest10101:CallOnElemViewClose(function()
        print("delete compass")
        globalActor:UnSpawn("Q10101Compass")
        if actorMgr:GetActor("10101"):GetSubQuestState(1010101) == 2 then
            Quest10101:OpenCompass()
        end
    end)
end

function Quest10101:DestroyNPC()
    print("DestroyNPC")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
        local v = arg1:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest10101:OnSubStart1010101(arg1)
    print("1010101 start:Creat Lisa")
end

function Quest10101:OnSubStart1010102(arg1)
    print("1010102 start:Set TargetPos")
    route1 = routeData.Route1
    n = 1010102
    self:OpenCompass()
end

function Quest10101:OnSubStart1010103(arg1)
    print("1010103 start:Set TargetPos")
    route1 = routeData.Route2
    n = 1010103
    self:OpenCompass()
end

function Quest10101:OnSubStart1010104(arg1)
    print("1010104 start:Set TargetPos")
    route1 = routeData.Route3
    n = 1010104
    self:OpenCompass()
end

function Quest10101:OnSubStart1010105(arg1)
    print("1010105 start:Set TargetPos")
    route1 = routeData.Route4
    n = 1010105
    self:OpenCompass()
end

function Quest10101:OnSubStart1010106(arg1)
    print("1010106 start:Set TargetPos")
    route1 = routeData.Route5
    n = 1010106
    self:OpenCompass()
end

function Quest10101:OnSubStart1010107(arg1)
    print("1010107 start:CloseCompass")
    self:UnCallFunc(self.OpenCompass)
end

function Quest10101:OnSubStart1010108(arg1)
    print("Quest1010108:Talk to lisa")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask(self, {lisaData.Lisa, paimonData.Paimon})
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, lisaData.LisaID)
        self:CreateQuestNpc(arg1, paimonData.PaimonID)
        self:RequestInteraction(lisaData.Lisa)
    end, nil, questNpcCreateTask)
end

function Quest10101:OnSubStart1010114(arg1)
    print("1010114 start:Finish Quest 1010101")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 1010101)
    end
end

function Quest10101:OnSubStart1010111(arg1)
    print("1010111 start:Set Narrator")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskLegacy(arg1.clientData.NarratorData.Story4)
    end)
end

function Quest10101:OnSubStart1010112(arg1)
    print("Talk to lisa")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask({lisaData.Lisa, paimonData.Paimon, abyssData.Abyss})
    self.CallDelay(self, 2, function()
        self:ShowBlackScreen(0.5, 1, 0.5, function()
            self:CreateQuestNpc(arg1, lisaData.LisaID)
            self:CreateQuestNpc(arg1, paimonData.PaimonID)
            self:CreateQuestNpc(arg1, abyssData.AbyssID)
            self:RequestInteraction(lisaData.Lisa)
        end, nil, questNpcCreateTask)
    end)
end

function Quest10101:OnSubStart1010113(arg1)
    print("1010111 start:Set Narrator")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskLegacy(arg1.clientData.NarratorData.Story5)
    end)
end

function Quest10101:OnSubStart1010117(arg1)
    print("1010117 start:Spawn Gadget")
    route1 = routeBookData.BookCluePos1
    self:SpawnGadget(arg1, routeBookData.BookID, 1)
end

function Quest10101:OnSubStart1010118(arg1)
    print("1010118 start:Spawn Gadget")
    route1 = routeBookData.BookCluePos3
    self:SpawnGadget(arg1, routeBookData.BookID, 1)
end

function Quest10101:OnSubStart1010119(arg1)
    print("1010119 start:Spawn Gadget")
    route1 = routeBookData.BookCluePos4
    self:SpawnGadget(arg1, routeBookData.BookID, 1)
end

function Quest10101:OnSubFinish1010102(arg1)
    print("1010102 finish:Lisa Narrator")
end

function Quest10101:OnSubFinish1010105(arg1)
    print("1010105 finish:Look Dungeon")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q10101Target").pos, 0, 2, true)
    self:SpawnGadget(arg1, dungeonSealEffect.EffectID, 2)
end

function Quest10101:OnSubFinish1010117(arg1)
    print("1010102 finish:Lisa Narrator")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story1)
end

function Quest10101:OnSubFinish1010118(arg1)
    print("1010102 finish:Lisa Narrator")
    self:NarratorOnlyTaskLegacy(self.clientData.NarratorData.Story2)
end

function Quest10101:OnSubFinish1010106(arg1)
    print("1010101 finish:Lisa Talk")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        print("try to creat Lisa")
        arg1_2:CreateQuestNpc(arg1, lisaData.LisaID)
        local questNpcActor = arg1_2:GetQuestNpcActor(lisaData.Lisa)
        arg1_2:RequestInteraction(lisaData.Lisa)
    end)

    route1 = nil
end

function Quest10101:OnSubFinish1010122(arg1)
    print("1010122 finish:")
    self:UnSpawn("Q10101DungeonOpenEffect")
end

function Quest10101:OnSubFinish1010109(arg1)
    print("1010109 finish:Lisa Talk")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({lisaData.Lisa})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, lisaData.LisaID)
        arg1_2:RequestInteraction(lisaData.Lisa)
    end, nil, questNpcCreateTask)
end

function Quest10101:OnSubFinish1010112(arg1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
        local v = arg1:GetQuestNpcActor(paimonData.Paimon)
        local questNpcActor2 = arg1:GetQuestNpcActor(abyssData.Abyss)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end

        if questNpcActor2 ~= nil then
            questNpcActor2:Destroy(false)
        end
    end)
end

function Quest10101:OnSubFinish1010108(arg1)
    print("Talk to lisa")
    self:DestroyNPC()
end

function Quest10101:OnSubFinish1010110(arg1)
    print("Talk to lisa")
    self:DestroyNPC()
end

function Quest10101:OnSubFinish1010114(arg1)
    self:DestroyNPC()
end

function Quest10101:OnSubFinish1010119(arg1)
    print("1010119 finish:Creat Lisa")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask({lisaData.Lisa})
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, lisaData.LisaID)
        arg1_2:RequestInteraction(lisaData.Lisa)
    end, questNpcCreateTask)
end

function Quest10101:OnSubFinish1010120(arg1)
    print("1010120 finish:DestroyNPC")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
        local v = arg1:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest10101:InvokeOnInteraction(arg1)
    if arg1 == 2 then
        print("Lisa Open Dungeon effect")
        self:CallDelay(1, function(arg1)
            arg1:SpawnGadgetById(1010114, lisaHitEffect.EffectID, 1)
        end)

        self:CallDelay(1.3, function(arg1)
            arg1:TryAddShake({x = -0.5, y = -1, z = 0}, 1, 2, 10)
        end)

        self:CallDelay(1.3, function(arg1)
            arg1:SpawnGadgetById(1010114, lisaHitEffect.EffectID, 2)
        end)

        self:CallDelay(1.6, function(arg1)
            arg1:TryAddShake({x = 0.5, y = -1, z = 0}, 1, 2, 10)
        end)

        self:CallDelay(1.6, function(arg1)
            arg1:SpawnGadgetById(1010114, lisaHitEffect.EffectID, 3)
        end)

        self:CallDelay(1.9, function(arg1)
            arg1:TryAddShake({x = 0.5, y = -1, z = 0}, 1, 2, 10)
        end)

        self:CallDelay(2.8, function(arg1)
            arg1:SpawnGadgetById(1010114, lisaHitEffect.EffectID, 1)
        end)

        self:CallDelay(3.1, function(arg1)
            arg1:TryAddShake({x = 0, y = -2.5, z = 0}, 2, 4, 12)
        end)

        self:CallDelay(3.2, function(arg1)
            arg1:UnSpawn(dungeonSealEffect.Alias)
            arg1:SpawnGadgetById(1010114, dungeonSealBreak.EffectID, 4)
            arg1:SpawnGadgetById(1010114, dungeonOpenEffect.EffectID, 5)
        end)

        self:CallDelay(4.2, function(arg1)
            arg1:UnSpawn(dungeonSealBreak.Alias)
        end)
    end

    if arg1 == 3 then
        self:SpawnGadgetById(1010112, lisaSkillEffect.EffectID, 1)
    end

    if arg1 == 4 then
        globalActor:UnSpawn(lisaSkillEffect.Alias)
        self:ShowBlackScreen(0.5, 2.5, 1, nil, nil, nil, "QUEST_Message_Q1010112")
    end
end

function Quest10101:Start() end
function Quest10101:OnDestroy() end
return Quest10101
