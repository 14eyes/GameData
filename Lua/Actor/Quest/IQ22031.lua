require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22031 = class("Quest22031", QuestActorProxy)
Quest22031.defaultAlias = "Quest22031"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest22031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest22031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2203101"] = self.OnSubStart2203101,
        ["2203102"] = self.OnSubStart2203102,
        ["2203103"] = self.OnSubStart2203103,
        ["2203104"] = self.OnSubStart2203104
    }
end

function Quest22031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2203101"] = self.OnSubFinish2203101,
        ["2203102"] = self.OnSubFinish2203102,
        ["2203103"] = self.OnSubFinish2203103,
        ["2203104"] = self.OnSubFinish2203104
    }
end

function Quest22031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2203101"] = self.OnSubFailed2203101,
        ["2203102"] = self.OnSubFailed2203102,
        ["2203103"] = self.OnSubFailed2203103,
        ["2203104"] = self.OnSubFailed2203104
    }
end

function Quest22031:Start()
    print("Start")
end

function Quest22031:OnDestroy()
    print("OnDestroy")
end

function Quest22031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22031:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc3060Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc3060Data.alias, 3)
end

function Quest22031:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest22031:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22031:OnSubStart2203101(arg1)
    print("OnSubStart2203101")
    self:NpcCreate(arg1, npcs.Npc3060Data.id, 1)
end

function Quest22031:OnSubFinish2203101(arg1)
    print("OnSubFinish2203101")
end

function Quest22031:OnSubFailed2203101(arg1)
    print("OnSubFailed2203101")
end

function Quest22031:OnSubStart2203102(arg1)
    print("OnSubStart2203102")
end

function Quest22031:OnSubFinish2203102(arg1)
    print("OnSubFinish2203102")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3060Data.alias)
    self:CallDelay(4, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Battle_start_kaiche, nil, 22031)
        arg1:NotifyTo(npcs.Npc3060Data.alias, 1, true)
    end)
end

function Quest22031:OnSubFailed2203102(arg1)
    print("OnSubFailed2203102")
end

function Quest22031:OnSubStart2203103(arg1)
    print("OnSubStart2203103")
end

function Quest22031:OnSubFinish2203103(arg1)
    print("OnSubFinish2203103")
end

function Quest22031:OnSubFailed2203103(arg1)
    print("OnSubFailed2203103")
end

function Quest22031:OnSubStart2203104(arg1)
    print("OnSubStart2203104")
    self:ShowBlackScreen(0.4, 0.8, 0.4, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc3060Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc3060Data.alias)
    end, nil, nil, "")
end

function Quest22031:OnSubFinish2203104(arg1)
    print("OnSubFinish2203104")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3060Data.alias)
end

function Quest22031:OnSubFailed2203104(arg1)
    print("OnSubFailed2203104")
end

return Quest22031
