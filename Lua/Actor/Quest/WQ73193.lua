require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73193 = class("Quest73193", QuestActorProxy)
Quest73193.defaultAlias = "Quest73193"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73193:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73193:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7319301"] = self.OnSubStart7319301,
        ["7319302"] = self.OnSubStart7319302,
        ["7319305"] = self.OnSubStart7319305,
        ["7319309"] = self.OnSubStart7319309,
        ["7319308"] = self.OnSubStart7319308
    }
end

function Quest73193:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7319301"] = self.OnSubFinish7319301,
        ["7319302"] = self.OnSubFinish7319302,
        ["7319305"] = self.OnSubFinish7319305,
        ["7319309"] = self.OnSubFinish7319309,
        ["7319308"] = self.OnSubFinish7319308
    }
end

function Quest73193:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73193:Start()
    print("Start")
end

function Quest73193:OnDestroy()
    print("OnDestroy")
end

function Quest73193:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73193:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73193:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73193:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73193:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73193:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7319309")
        actorUtils.FinishQuestID(false, 7319309)
    end
end

function Quest73193:OnSubStart7319301(arg1)
    print("OnSubStart7319301")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc4235Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4235Data.alias):DoFreeStyle(5010, true, nil, true, true, false, false)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc4232Data.id, 2)
end

function Quest73193:OnSubFinish7319301(arg1)
    print("OnSubFinish7319301")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4235Data.alias)
    self:SetNavigationByMainId(73193, true)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_7319311)
    end)
end

function Quest73193:OnSubStart7319302(arg1)
    print("OnSubStart7319302")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
end

function Quest73193:OnSubFinish7319302(arg1)
    print("OnSubFinish7319302")
end

function Quest73193:OnSubStart7319305(arg1)
    print("OnSubStart7319305")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
    self:RequestInteraction(npcs.Npc4232Data.alias)
end

function Quest73193:OnSubFinish7319305(arg1)
    print("OnSubFinish7319305")
end

function Quest73193:OnSubStart7319309(arg1)
    print("OnSubStart7319309")
end

function Quest73193:OnSubFinish7319309(arg1)
    print("OnSubFinish7319309")
end

function Quest73193:OnSubStart7319308(arg1)
    print("OnSubStart7319308")
end

function Quest73193:OnSubFinish7319308(arg1)
    print("OnSubFinish7319308")
end

return Quest73193
