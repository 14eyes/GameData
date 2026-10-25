require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11121 = class("Quest11121", QuestActorProxy)
Quest11121.defaultAlias = "Quest11121"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest11121:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest11121:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1112101"] = self.OnSubStart1112101,
        ["1112104"] = self.OnSubStart1112104,
        ["1112102"] = self.OnSubStart1112102,
        ["1112103"] = self.OnSubStart1112103,
        ["1112107"] = self.OnSubStart1112107,
        ["1112108"] = self.OnSubStart1112108
    }
end

function Quest11121:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1112101"] = self.OnSubFinish1112101,
        ["1112104"] = self.OnSubFinish1112104,
        ["1112102"] = self.OnSubFinish1112102,
        ["1112103"] = self.OnSubFinish1112103,
        ["1112107"] = self.OnSubFinish1112107,
        ["1112108"] = self.OnSubFinish1112108
    }
end

function Quest11121:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1112101"] = self.OnSubFailed1112101,
        ["1112104"] = self.OnSubFailed1112104,
        ["1112102"] = self.OnSubFailed1112102,
        ["1112103"] = self.OnSubFailed1112103,
        ["1112107"] = self.OnSubFailed1112107,
        ["1112108"] = self.OnSubFailed1112108
    }
end

function Quest11121:Start()
    print("Start")
end

function Quest11121:OnDestroy()
    print("OnDestroy")
end

function Quest11121:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11121:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest11121:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest11121:ClearData()
    print("ClearData")
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10376Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10377Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10378Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10394Data.alias, 3)
end

function Quest11121:NarratorWithId_1112103()
    print("NarratorWithId_1112103")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1112103)
end

function Quest11121:NarratorWithId_1112101()
    print("NarratorWithId_1112101")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1112101)
end

function Quest11121:OnSubStart1112101(arg1)
    print("OnSubStart1112101")
    self:CreateQuestNpc(arg1, npcs.Npc10377Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10378Data.id, 4)
    self:NotifyTo(npcs.Npc1628Data.alias, 1, true)
end

function Quest11121:OnSubFinish1112101(arg1)
    print("OnSubFinish1112101")
    self:ActionSafeCall(self.NarratorWithId_1112101)
end

function Quest11121:OnSubFailed1112101(arg1)
    print("OnSubFailed1112101")
end

function Quest11121:OnSubStart1112104(arg1)
    print("OnSubStart1112104")
    self:CreateQuestNpc(arg1, npcs.Npc10376Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10394Data.id, 3)
    self:NotifyTo(npcs.Npc1628Data.alias, 1, true)
end

function Quest11121:OnSubFinish1112104(arg1)
    print("OnSubFinish1112104")
    self:SafeDestroyQuestNpc(npcs.Npc10394Data.alias, 3)
end

function Quest11121:OnSubFailed1112104(arg1)
    print("OnSubFailed1112104")
end

function Quest11121:OnSubStart1112102(arg1)
    print("OnSubStart1112102")
    self:CreateQuestNpc(arg1, npcs.Npc10376Data.id, 2)
    self:NotifyTo(npcs.Npc1628Data.alias, 1, true)
end

function Quest11121:OnSubFinish1112102(arg1)
    print("OnSubFinish1112102")
end

function Quest11121:OnSubFailed1112102(arg1)
    print("OnSubFailed1112102")
end

function Quest11121:OnSubStart1112103(arg1)
    print("OnSubStart1112103")
    self:CreateQuestNpc(arg1, npcs.Npc10424Data.id, 1)
    self:NotifyTo(npcs.Npc1628Data.alias, 1, true)
end

function Quest11121:OnSubFinish1112103(arg1)
    print("OnSubFinish1112103")
    self:ActionSafeCall(self.NarratorWithId_1112103)
end

function Quest11121:OnSubFailed1112103(arg1)
    print("OnSubFailed1112103")
end

function Quest11121:OnSubStart1112107(arg1)
    print("OnSubStart1112107")
    self:NotifyTo(npcs.Npc1628Data.alias, 1, true)
end

function Quest11121:OnSubFinish1112107(arg1)
    print("OnSubFinish1112107")
    self:SafeDestroyQuestNpc(npcs.Npc10377Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10378Data.alias, 3)
end

function Quest11121:OnSubFailed1112107(arg1)
    print("OnSubFailed1112107")
end

function Quest11121:OnSubStart1112108(arg1)
    print("OnSubStart1112108")
    self:CreateQuestNpc(arg1, npcs.Npc10376Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc10376Data.alias):DoFreeStyle(1190, true, nil, true, true)
    self:NotifyTo(npcs.Npc1628Data.alias, 1, true)
end

function Quest11121:OnSubFinish1112108(arg1)
    print("OnSubFinish1112108")
    self:SafeDestroyQuestNpc(npcs.Npc10376Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10424Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1628Data.alias, 0, true)
end

function Quest11121:OnSubFailed1112108(arg1)
    print("OnSubFailed1112108")
end

return Quest11121
