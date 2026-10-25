require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41331 = class("Quest41331", QuestActorProxy)
Quest41331.defaultAlias = "Quest41331"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest41331:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest41331:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4133126"] = self.OnSubStart4133126,
        ["4133101"] = self.OnSubStart4133101,
        ["4133102"] = self.OnSubStart4133102,
        ["4133103"] = self.OnSubStart4133103,
        ["4133105"] = self.OnSubStart4133105,
        ["4133104"] = self.OnSubStart4133104,
        ["4133106"] = self.OnSubStart4133106,
        ["4133107"] = self.OnSubStart4133107,
        ["4133115"] = self.OnSubStart4133115,
        ["4133121"] = self.OnSubStart4133121,
        ["4133109"] = self.OnSubStart4133109,
        ["4133110"] = self.OnSubStart4133110,
        ["4133111"] = self.OnSubStart4133111,
        ["4133112"] = self.OnSubStart4133112,
        ["4133113"] = self.OnSubStart4133113,
        ["4133114"] = self.OnSubStart4133114,
        ["4133117"] = self.OnSubStart4133117,
        ["4133118"] = self.OnSubStart4133118,
        ["4133119"] = self.OnSubStart4133119,
        ["4133120"] = self.OnSubStart4133120,
        ["4133116"] = self.OnSubStart4133116,
        ["4133122"] = self.OnSubStart4133122,
        ["4133123"] = self.OnSubStart4133123,
        ["4133124"] = self.OnSubStart4133124,
        ["4133125"] = self.OnSubStart4133125,
        ["4133108"] = self.OnSubStart4133108
    }
end

function Quest41331:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4133126"] = self.OnSubFinish4133126,
        ["4133101"] = self.OnSubFinish4133101,
        ["4133102"] = self.OnSubFinish4133102,
        ["4133103"] = self.OnSubFinish4133103,
        ["4133105"] = self.OnSubFinish4133105,
        ["4133104"] = self.OnSubFinish4133104,
        ["4133106"] = self.OnSubFinish4133106,
        ["4133107"] = self.OnSubFinish4133107,
        ["4133115"] = self.OnSubFinish4133115,
        ["4133121"] = self.OnSubFinish4133121,
        ["4133109"] = self.OnSubFinish4133109,
        ["4133110"] = self.OnSubFinish4133110,
        ["4133111"] = self.OnSubFinish4133111,
        ["4133112"] = self.OnSubFinish4133112,
        ["4133113"] = self.OnSubFinish4133113,
        ["4133114"] = self.OnSubFinish4133114,
        ["4133117"] = self.OnSubFinish4133117,
        ["4133118"] = self.OnSubFinish4133118,
        ["4133119"] = self.OnSubFinish4133119,
        ["4133120"] = self.OnSubFinish4133120,
        ["4133116"] = self.OnSubFinish4133116,
        ["4133122"] = self.OnSubFinish4133122,
        ["4133123"] = self.OnSubFinish4133123,
        ["4133124"] = self.OnSubFinish4133124,
        ["4133125"] = self.OnSubFinish4133125,
        ["4133108"] = self.OnSubFinish4133108
    }
end

function Quest41331:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4133126"] = self.OnSubFailed4133126,
        ["4133101"] = self.OnSubFailed4133101,
        ["4133102"] = self.OnSubFailed4133102,
        ["4133103"] = self.OnSubFailed4133103,
        ["4133105"] = self.OnSubFailed4133105,
        ["4133104"] = self.OnSubFailed4133104,
        ["4133106"] = self.OnSubFailed4133106,
        ["4133107"] = self.OnSubFailed4133107,
        ["4133115"] = self.OnSubFailed4133115,
        ["4133121"] = self.OnSubFailed4133121,
        ["4133109"] = self.OnSubFailed4133109,
        ["4133110"] = self.OnSubFailed4133110,
        ["4133111"] = self.OnSubFailed4133111,
        ["4133112"] = self.OnSubFailed4133112,
        ["4133113"] = self.OnSubFailed4133113,
        ["4133114"] = self.OnSubFailed4133114,
        ["4133117"] = self.OnSubFailed4133117,
        ["4133118"] = self.OnSubFailed4133118,
        ["4133119"] = self.OnSubFailed4133119,
        ["4133120"] = self.OnSubFailed4133120,
        ["4133116"] = self.OnSubFailed4133116,
        ["4133122"] = self.OnSubFailed4133122,
        ["4133123"] = self.OnSubFailed4133123,
        ["4133124"] = self.OnSubFailed4133124,
        ["4133125"] = self.OnSubFailed4133125,
        ["4133108"] = self.OnSubFailed4133108
    }
end

function Quest41331:Start()
    print("Start")
end

function Quest41331:OnDestroy()
    print("OnDestroy")
end

function Quest41331:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41331:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41331:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:EliminateAll()
end

function Quest41331:DestoryALL() end

function Quest41331:EliminateAll()
    self:DestroyQuestNpcActor(npcs.Npc2306Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2138Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2300Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2307Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2136Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1624Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2137Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2304Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc2308Data.alias, 3)
end

function Quest41331:CustmiseFunction1() end

function Quest41331:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 4133107 then
        self:FinishQuestID(false, 4133107)
        print("refreshSword")
    elseif arg1 == 4133124 then
        print("xiaodeng")
        self:FinishQuestID(false, 4133124)
    end
end

function Quest41331:OnSubStart4133101(arg1)
    print("OnSubStart4133101")
    self:CreateQuestNpc(arg1, npcs.Npc2090Data.id, 1)
end

function Quest41331:OnSubFinish4133101(arg1)
    print("OnSubFinish4133101")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc2090Data.alias, 3)
    end, nil, nil, "")
end

function Quest41331:OnSubFailed4133101(arg1)
    print("OnSubFailed4133101")
end

function Quest41331:OnSubStart4133102(arg1)
    print("OnSubStart4133102")
    self:CreateQuestNpc(arg1, npcs.Npc2306Data.id, 1)
end

function Quest41331:OnSubFinish4133102(arg1)
    print("OnSubFinish4133102")
end

function Quest41331:OnSubFailed4133102(arg1)
    print("OnSubFailed4133102")
end

function Quest41331:OnSubStart4133103(arg1)
    print("OnSubStart4133103")
    self:CreateQuestNpc(arg1, npcs.Npc2138Data.id, 1)
end

function Quest41331:OnSubFinish4133103(arg1)
    print("OnSubFinish4133103")
end

function Quest41331:OnSubFailed4133103(arg1)
    print("OnSubFailed4133103")
end

function Quest41331:OnSubStart4133105(arg1)
    print("OnSubStart4133105")
end

function Quest41331:OnSubFinish4133105(arg1)
    print("OnSubFinish4133105")
end

function Quest41331:OnSubFailed4133105(arg1)
    print("OnSubFailed4133105")
end

function Quest41331:OnSubStart4133104(arg1)
    print("OnSubStart4133104")
end

function Quest41331:OnSubFinish4133104(arg1)
    print("OnSubFinish4133104")
end

function Quest41331:OnSubFailed4133104(arg1)
    print("OnSubFailed4133104")
end

function Quest41331:OnSubStart4133106(arg1)
    print("OnSubStart4133106")
    self:CreateQuestNpc(arg1, npcs.Npc2300Data.id, 1)
end

function Quest41331:OnSubFinish4133106(arg1)
    print("OnSubFinish4133106")
end

function Quest41331:OnSubFailed4133106(arg1)
    print("OnSubFailed4133106")
end

function Quest41331:OnSubStart4133107(arg1)
    print("OnSubStart4133107")
end

function Quest41331:OnSubFinish4133107(arg1)
    print("OnSubFinish4133107")
end

function Quest41331:OnSubFailed4133107(arg1)
    print("OnSubFailed4133107")
end

function Quest41331:OnSubStart4133108(arg1)
    print("OnSubStart4133108")
end

function Quest41331:OnSubFinish4133108(arg1)
    print("OnSubFinish4133108")
end

function Quest41331:OnSubFailed4133108(arg1)
    print("OnSubFailed4133108")
end

function Quest41331:OnSubStart4133109(arg1)
    print("OnSubStart4133109")
    self:CreateQuestNpc(arg1, npcs.Npc2085Data.id, 1)
end

function Quest41331:OnSubFinish4133109(arg1)
    print("OnSubFinish4133109")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc2085Data.alias, 3)
    end, nil, nil, "")
end

function Quest41331:OnSubFailed4133109(arg1)
    print("OnSubFailed4133109")
end

function Quest41331:OnSubStart4133110(arg1)
    print("OnSubStart4133110")
end

function Quest41331:OnSubFinish4133110(arg1)
    print("OnSubFinish4133110")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc2306Data.alias):SetPosAndTurnTo(sceneData:GetDummyPoint(3, "Q41331_ruoxin2").pos, M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q41331_ruoxin2").rot), false)
    end, nil, nil, "")
end

function Quest41331:OnSubFailed4133110(arg1)
    print("OnSubFailed4133110")
end

function Quest41331:OnSubStart4133111(arg1)
    print("OnSubStart4133111")
end

function Quest41331:OnSubFinish4133111(arg1)
    print("OnSubFinish4133111")
end

function Quest41331:OnSubFailed4133111(arg1)
    print("OnSubFailed4133111")
end

function Quest41331:OnSubStart4133112(arg1)
    print("OnSubStart4133112")
    self:CreateQuestNpc(arg1, npcs.Npc2136Data.id, 0)
end

function Quest41331:OnSubFinish4133112(arg1)
    print("OnSubFinish4133112")
    self:ShowBlackScreen(0.3, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc2136Data.alias, 3)
    end, nil, nil, "")
end

function Quest41331:OnSubFailed4133112(arg1)
    print("OnSubFailed4133112")
end

function Quest41331:OnSubStart4133113(arg1)
    print("OnSubStart4133113")
    self:CreateQuestNpc(arg1, npcs.Npc1624Data.id, 0)
end

function Quest41331:OnSubFinish4133113(arg1)
    print("OnSubFinish4133113")
    self:ShowBlackScreen(0.3, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc1624Data.alias, 3)
    end, nil, nil, "")
end

function Quest41331:OnSubFailed4133113(arg1)
    print("OnSubFailed4133113")
end

function Quest41331:OnSubStart4133114(arg1)
    print("OnSubStart4133114")
    self:CreateQuestNpc(arg1, npcs.Npc2137Data.id, 0)
end

function Quest41331:OnSubFinish4133114(arg1)
    print("OnSubFinish4133114")
    self:ShowBlackScreen(0.3, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc2137Data.alias, 3)
    end, nil, nil, "")
end

function Quest41331:OnSubFailed4133114(arg1)
    print("OnSubFailed4133114")
end

function Quest41331:OnSubStart4133115(arg1)
    print("OnSubStart4133115")
end

function Quest41331:OnSubFinish4133115(arg1)
    print("OnSubFinish4133115")
end

function Quest41331:OnSubFailed4133115(arg1)
    print("OnSubFailed4133115")
end

function Quest41331:OnSubStart4133116(arg1)
    print("OnSubStart4133116")
    self:CreateQuestNpc(arg1, npcs.Npc2138Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc2300Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc2138Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2300Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2307Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2304Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc2308Data.id, 0)
end

function Quest41331:OnSubFinish4133116(arg1)
    print("OnSubFinish4133116")
end

function Quest41331:OnSubFailed4133116(arg1)
    print("OnSubFailed4133116")
end

function Quest41331:OnSubStart4133117(arg1)
    print("OnSubStart4133117")
end

function Quest41331:OnSubFinish4133117(arg1)
    print("OnSubFinish4133117")
end

function Quest41331:OnSubFailed4133117(arg1)
    print("OnSubFailed4133117")
end

function Quest41331:OnSubStart4133118(arg1)
    print("OnSubStart4133118")
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc2136Data.id, 0)
    end)
end

function Quest41331:OnSubFinish4133118(arg1)
    print("OnSubFinish4133118")
end

function Quest41331:OnSubFailed4133118(arg1)
    print("OnSubFailed4133118")
end

function Quest41331:OnSubStart4133119(arg1)
    print("OnSubStart4133119")
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1624Data.id, 0)
    end)
end

function Quest41331:OnSubFinish4133119(arg1)
    print("OnSubFinish4133119")
end

function Quest41331:OnSubFailed4133119(arg1)
    print("OnSubFailed4133119")
end

function Quest41331:OnSubStart4133120(arg1)
    print("OnSubStart4133120")
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc2137Data.id, 0)
    end)
end

function Quest41331:OnSubFinish4133120(arg1)
    print("OnSubFinish4133120")
end

function Quest41331:OnSubFailed4133120(arg1)
    print("OnSubFailed4133120")
end

function Quest41331:OnSubStart4133121(arg1)
    print("OnSubStart4133121")
end

function Quest41331:OnSubFinish4133121(arg1)
    print("OnSubFinish4133121")
end

function Quest41331:OnSubFailed4133121(arg1)
    print("OnSubFailed4133121")
end

function Quest41331:OnSubStart4133122(arg1)
    print("OnSubStart4133122")
end

function Quest41331:OnSubFinish4133122(arg1)
    print("OnSubFinish4133122")
end

function Quest41331:OnSubFailed4133122(arg1)
    print("OnSubFailed4133122")
end

function Quest41331:OnSubStart4133123(arg1)
    print("OnSubStart4133123")
end

function Quest41331:OnSubFinish4133123(arg1)
    print("OnSubFinish4133123")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1, 0.5, function(arg1)
            arg1:EliminateAll()
        end, nil, nil, "")
    end)
end

function Quest41331:OnSubFailed4133123(arg1)
    print("OnSubFailed4133123")
end

function Quest41331:OnSubStart4133124(arg1)
    print("OnSubStart4133124")
end

function Quest41331:OnSubFinish4133124(arg1)
    print("OnSubFinish4133124")
end

function Quest41331:OnSubFailed4133124(arg1)
    print("OnSubFailed4133124")
end

function Quest41331:OnSubStart4133125(arg1)
    print("OnSubStart4133125")
end

function Quest41331:OnSubFinish4133125(arg1)
    print("OnSubFinish4133125")
end

function Quest41331:OnSubFailed4133125(arg1)
    print("OnSubFailed4133125")
end

function Quest41331:OnSubStart4133126(arg1)
    print("OnSubStart4133126")
end

function Quest41331:OnSubFinish4133126(arg1)
    print("OnSubFinish4133126")
end

function Quest41331:OnSubFailed4133126(arg1)
    print("OnSubFailed4133126")
end

return Quest41331
