require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10121 = class("Quest10121", QuestActorProxy)
Quest10121.defaultAlias = "Quest10121"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest10121:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest10121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1012101"] = self.OnSubStart1012101,
        ["1012102"] = self.OnSubStart1012102,
        ["1012103"] = self.OnSubStart1012103,
        ["1012104"] = self.OnSubStart1012104,
        ["1012105"] = self.OnSubStart1012105,
        ["1012106"] = self.OnSubStart1012106,
        ["1012107"] = self.OnSubStart1012107,
        ["1012115"] = self.OnSubStart1012115,
        ["1012116"] = self.OnSubStart1012116,
        ["1012117"] = self.OnSubStart1012117,
        ["1012109"] = self.OnSubStart1012109,
        ["1012118"] = self.OnSubStart1012118,
        ["1012110"] = self.OnSubStart1012110,
        ["1012111"] = self.OnSubStart1012111,
        ["1012112"] = self.OnSubStart1012112,
        ["1012113"] = self.OnSubStart1012113,
        ["1012114"] = self.OnSubStart1012114,
        ["1012108"] = self.OnSubStart1012108,
        ["1012119"] = self.OnSubStart1012119,
        ["1012120"] = self.OnSubStart1012120
    }
end

function Quest10121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1012101"] = self.OnSubFinish1012101,
        ["1012102"] = self.OnSubFinish1012102,
        ["1012103"] = self.OnSubFinish1012103,
        ["1012104"] = self.OnSubFinish1012104,
        ["1012105"] = self.OnSubFinish1012105,
        ["1012106"] = self.OnSubFinish1012106,
        ["1012107"] = self.OnSubFinish1012107,
        ["1012115"] = self.OnSubFinish1012115,
        ["1012116"] = self.OnSubFinish1012116,
        ["1012117"] = self.OnSubFinish1012117,
        ["1012109"] = self.OnSubFinish1012109,
        ["1012118"] = self.OnSubFinish1012118,
        ["1012110"] = self.OnSubFinish1012110,
        ["1012111"] = self.OnSubFinish1012111,
        ["1012112"] = self.OnSubFinish1012112,
        ["1012113"] = self.OnSubFinish1012113,
        ["1012114"] = self.OnSubFinish1012114,
        ["1012108"] = self.OnSubFinish1012108,
        ["1012119"] = self.OnSubFinish1012119,
        ["1012120"] = self.OnSubFinish1012120
    }
end

function Quest10121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1012101"] = self.OnSubFailed1012101,
        ["1012102"] = self.OnSubFailed1012102,
        ["1012103"] = self.OnSubFailed1012103,
        ["1012104"] = self.OnSubFailed1012104,
        ["1012105"] = self.OnSubFailed1012105,
        ["1012106"] = self.OnSubFailed1012106,
        ["1012107"] = self.OnSubFailed1012107,
        ["1012115"] = self.OnSubFailed1012115,
        ["1012116"] = self.OnSubFailed1012116,
        ["1012117"] = self.OnSubFailed1012117,
        ["1012109"] = self.OnSubFailed1012109,
        ["1012118"] = self.OnSubFailed1012118,
        ["1012110"] = self.OnSubFailed1012110,
        ["1012111"] = self.OnSubFailed1012111,
        ["1012112"] = self.OnSubFailed1012112,
        ["1012113"] = self.OnSubFailed1012113,
        ["1012114"] = self.OnSubFailed1012114,
        ["1012108"] = self.OnSubFailed1012108,
        ["1012119"] = self.OnSubFailed1012119,
        ["1012120"] = self.OnSubFailed1012120
    }
end

function Quest10121:Start()
    print("Start")
end

function Quest10121:OnDestroy()
    print("OnDestroy")
end

function Quest10121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10121:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10121:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10121:EliminatePaimon()
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest10121:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1012108 then
        actorUtils.FinishQuestID(false, 1012108)
    elseif arg1 == 1012119 then
        actorUtils.FinishQuestID(false, 1012119)
    end
end

function Quest10121:OnSubStart1012101(arg1)
    print("OnSubStart1012101")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CallDelay(1, function(arg1)
            if arg1:GetQuestVar(1012101, 0) == 0 then
                arg1:NarratorOnlyTaskByData(datas.kaiche1, function(arg1)
                    arg1:SetQuestVarByMainId(0, 3)
                end, 10121)
            end
        end)

        arg1_2:CreateQuestNpc(arg1, npcs.Npc1029Data.id, 0)
    end)
end

function Quest10121:OnSubFinish1012101(arg1)
    print("OnSubFinish1012101")
    self:ShowBlackScreen(0.5, 3, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc1029Data.alias)
    end, nil, nil, "")
end

function Quest10121:OnSubFailed1012101(arg1)
    print("OnSubFailed1012101")
end

function Quest10121:OnSubStart1012102(arg1)
    print("OnSubStart1012102")
end

function Quest10121:OnSubFinish1012102(arg1)
    print("OnSubFinish1012102")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
        arg1:EliminatePaimon()
    end)
end

function Quest10121:OnSubFailed1012102(arg1)
    print("OnSubFailed1012102")
end

function Quest10121:OnSubStart1012103(arg1)
    print("OnSubStart1012103")
    self:CreateQuestNpc(arg1, npcs.Npc10387Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10387Data.alias):DoFreeStyle(1120, true, nil, true, true)
end

function Quest10121:OnSubFinish1012103(arg1)
    print("OnSubFinish1012103")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc10387Data.alias, 3)
        arg1:EliminatePaimon()
    end)
end

function Quest10121:OnSubFailed1012103(arg1)
    print("OnSubFailed1012103")
end

function Quest10121:OnSubStart1012104(arg1)
    print("OnSubStart1012104")
    self:CreateQuestNpc(arg1, npcs.Npc10388Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10388Data.alias):DoFreeStyle(1190, true, nil, true, true)
end

function Quest10121:OnSubFinish1012104(arg1)
    print("OnSubFinish1012104")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
        arg1:EliminatePaimon()
    end)
end

function Quest10121:OnSubFailed1012104(arg1)
    print("OnSubFailed1012104")
end

function Quest10121:OnSubStart1012105(arg1)
    print("OnSubStart1012105")
    self:CreateQuestNpc(arg1, npcs.Npc10389Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc10388Data.alias):DoFreeStyle(1190, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10389Data.alias):DoFreeStyle(1230, true, nil, true, true)
end

function Quest10121:OnSubFinish1012105(arg1)
    print("OnSubFinish1012105")
    self:ActionSafeCall(function(arg1)
        arg1:EliminatePaimon()
    end)
end

function Quest10121:OnSubFailed1012105(arg1)
    print("OnSubFailed1012105")
end

function Quest10121:OnSubStart1012106(arg1)
    print("OnSubStart1012106")
    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcById(1012106, npcs.Npc1029Data.id, 0)
    end)
end

function Quest10121:OnSubFinish1012106(arg1)
    print("OnSubFinish1012106")
    self:DestroyQuestNpcActor(npcs.Npc10388Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc10389Data.alias, 3)
end

function Quest10121:OnSubFailed1012106(arg1)
    print("OnSubFailed1012106")
end

function Quest10121:OnSubStart1012107(arg1)
    print("OnSubStart1012107")
end

function Quest10121:OnSubFinish1012107(arg1)
    print("OnSubFinish1012107")
    self:ActionSafeCall(function(arg1)
        arg1:EliminatePaimon()
    end)
end

function Quest10121:OnSubFailed1012107(arg1)
    print("OnSubFailed1012107")
end

function Quest10121:OnSubStart1012108(arg1)
    print("OnSubStart1012108")
end

function Quest10121:OnSubFinish1012108(arg1)
    print("OnSubFinish1012108")
end

function Quest10121:OnSubFailed1012108(arg1)
    print("OnSubFailed1012108")
end

function Quest10121:OnSubStart1012109(arg1)
    print("OnSubStart1012109")
end

function Quest10121:OnSubFinish1012109(arg1)
    print("OnSubFinish1012109")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
        arg1:EliminatePaimon()
    end)
end

function Quest10121:OnSubFailed1012109(arg1)
    print("OnSubFailed1012109")
end

function Quest10121:OnSubStart1012110(arg1)
    print("OnSubStart1012110")
end

function Quest10121:OnSubFinish1012110(arg1)
    print("OnSubFinish1012110")
end

function Quest10121:OnSubFailed1012110(arg1)
    print("OnSubFailed1012110")
end

function Quest10121:OnSubStart1012111(arg1)
    print("OnSubStart1012111")
end

function Quest10121:OnSubFinish1012111(arg1)
    print("OnSubFinish1012111")
    print("OnSubFinish1012111")
    self:CallDelay(2, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1029Data.alias})
        arg1:TransmitPlayerByQuestId(1012112, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(1012111, npcs.Npc1029Data.id, 1)
        end, questNpcCreateTask)
    end)
end

function Quest10121:OnSubFailed1012111(arg1)
    print("OnSubFailed1012111")
    self:NarratorOnlyTaskByData(datas.FailKaiche2, nil, 10121)
end

function Quest10121:OnSubStart1012112(arg1)
    print("OnSubStart1012112")
end

function Quest10121:OnSubFinish1012112(arg1)
    print("OnSubFinish1012112")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
        arg1:EliminatePaimon()
    end)
end

function Quest10121:OnSubFailed1012112(arg1)
    print("OnSubFailed1012112")
end

function Quest10121:OnSubStart1012113(arg1)
    print("OnSubStart1012113")
    self:CreateQuestNpc(arg1, npcs.AmborData.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc1419Data.id, 0)
end

function Quest10121:OnSubFinish1012113(arg1)
    print("OnSubFinish1012113")
end

function Quest10121:OnSubFailed1012113(arg1)
    print("OnSubFailed1012113")
end

function Quest10121:OnSubStart1012114(arg1)
    print("OnSubStart1012114")
    self:RequestInteraction(npcs.AmborData.alias)
end

function Quest10121:OnSubFinish1012114(arg1)
    print("OnSubFinish1012114")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1029Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.AmborData.alias, 3)
        arg1:EliminatePaimon()
    end)
end

function Quest10121:OnSubFailed1012114(arg1)
    print("OnSubFailed1012114")
end

function Quest10121:OnSubStart1012115(arg1)
    print("OnSubStart1012115")
end

function Quest10121:OnSubFinish1012115(arg1)
    print("OnSubFinish1012115")
end

function Quest10121:OnSubFailed1012115(arg1)
    print("OnSubFailed1012115")
    self:NarratorOnlyTaskByData(datas.kaiche2, nil, 10121)
end

function Quest10121:OnSubStart1012116(arg1)
    print("OnSubStart1012116")
end

function Quest10121:OnSubFinish1012116(arg1)
    print("OnSubFinish1012116")
end

function Quest10121:OnSubFailed1012116(arg1)
    print("OnSubFailed1012116")
    self:NarratorOnlyTaskByData(datas.kaiche2, function(arg1)
        arg1:TransmitPlayerByQuestId(1012116, 1)
    end, 10121)
end

function Quest10121:OnSubStart1012117(arg1)
    print("OnSubStart1012117")
end

function Quest10121:OnSubFinish1012117(arg1)
    print("OnSubFinish1012117")
    print("OnSubFinish1012117")
    self:CallDelay(2, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({npcs.Npc1029Data.alias})
        arg1:TransmitPlayerByQuestId(1012109, 1, nil, function(arg1)
            arg1:CreateQuestNpcById(1012117, npcs.Npc1029Data.id, 1)
        end, questNpcCreateTask)
    end)
end

function Quest10121:OnSubFailed1012117(arg1)
    print("OnSubFailed1012117")
    self:NarratorOnlyTaskByData(datas.kaiche2, function(arg1)
        arg1:TransmitPlayerByQuestId(1012117, 1)
    end, 10121)
end

function Quest10121:OnSubStart1012118(arg1)
    print("OnSubStart1012118")
end

function Quest10121:OnSubFinish1012118(arg1)
    print("OnSubFinish1012118")
    self:NarratorOnlyTaskByData(datas.Challenge2Kaiche, nil, 10121)
end

function Quest10121:OnSubFailed1012118(arg1)
    print("OnSubFailed1012118")
end

function Quest10121:OnSubStart1012119(arg1)
    print("OnSubStart1012119")
end

function Quest10121:OnSubFinish1012119(arg1)
    print("OnSubFinish1012119")
end

function Quest10121:OnSubFailed1012119(arg1)
    print("OnSubFailed1012119")
end

function Quest10121:OnSubStart1012120(arg1)
    print("OnSubStart1012120")
    self:CreateQuestNpc(arg1, npcs.Npc1419Data.id, 0)
end

function Quest10121:OnSubFinish1012120(arg1)
    print("OnSubFinish1012120")
    self:ActionSafeCall(function(arg1)
        arg1:EliminatePaimon()
        arg1:DestroyQuestNpcActor(npcs.Npc1419Data.alias, 3)
    end)
end

function Quest10121:OnSubFailed1012120(arg1)
    print("OnSubFailed1012120")
end

return Quest10121
