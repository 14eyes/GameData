require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20518 = class("Quest20518", QuestActorProxy)
Quest20518.defaultAlias = "Quest20518"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20518:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20518:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2051801"] = self.OnSubStart2051801,
        ["2051802"] = self.OnSubStart2051802,
        ["2051803"] = self.OnSubStart2051803,
        ["2051804"] = self.OnSubStart2051804,
        ["2051805"] = self.OnSubStart2051805,
        ["2051806"] = self.OnSubStart2051806
    }
end

function Quest20518:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2051801"] = self.OnSubFinish2051801,
        ["2051802"] = self.OnSubFinish2051802,
        ["2051803"] = self.OnSubFinish2051803,
        ["2051804"] = self.OnSubFinish2051804,
        ["2051805"] = self.OnSubFinish2051805,
        ["2051806"] = self.OnSubFinish2051806
    }
end

function Quest20518:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2051801"] = self.OnSubFailed2051801,
        ["2051802"] = self.OnSubFailed2051802,
        ["2051803"] = self.OnSubFailed2051803,
        ["2051804"] = self.OnSubFailed2051804,
        ["2051805"] = self.OnSubFailed2051805,
        ["2051806"] = self.OnSubFailed2051806
    }
end

function Quest20518:Start()
    print("Start")
end

function Quest20518:OnDestroy()
    print("OnDestroy")
end

function Quest20518:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CallDelay(0.5, self.BlackScreen)
end

function Quest20518:OnMainFailed(arg1)
    print("OnMainFailed")
    self:CallDelay(0, self.ClearData)
end

function Quest20518:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:CallDelay(0, self.ClearData)
end

function Quest20518:BlackScreen()
    print("BlackScreen")
    globalActor:EnablePlayerInput(false)
    self:ShowBlackScreen(0.5, 1, 0.5, self.ClearData)
    globalActor:EnablePlayerInput(true)
end

function Quest20518:ClearData()
    print("ClearData")
    self:DestroyQuestNpcActor(npcs.Npc1525Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1433Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1473Data.alias, 1008)
end

function Quest20518:OnSubStart2051801(arg1)
    print("OnSubStart2051801")
    self:CreateQuestNpc(arg1, npcs.Npc1525Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1433Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1473Data.id, 3)
end

function Quest20518:OnSubFinish2051801(arg1)
    print("OnSubFinish2051801")
end

function Quest20518:OnSubFailed2051801(arg1)
    print("OnSubFailed2051801")
end

function Quest20518:OnSubStart2051802(arg1)
    print("OnSubStart2051802")
end

function Quest20518:OnSubFinish2051802(arg1)
    print("OnSubFinish2051802")
end

function Quest20518:OnSubFailed2051802(arg1)
    print("OnSubFailed2051802")
end

function Quest20518:OnSubStart2051803(arg1)
    print("OnSubStart2051803")
end

function Quest20518:OnSubFinish2051803(arg1)
    print("OnSubFinish2051803")
    self:NarratorOnlyTask(datas.NarratorTable)
end

function Quest20518:OnSubFailed2051803(arg1)
    print("OnSubFailed2051803")
end

function Quest20518:OnSubStart2051804(arg1)
    print("OnSubStart2051804")
end

function Quest20518:OnSubFinish2051804(arg1)
    print("OnSubFinish2051804")
end

function Quest20518:OnSubFailed2051804(arg1)
    print("OnSubFailed2051804")
end

function Quest20518:OnSubStart2051805(arg1)
    print("OnSubStart2051805")
end

function Quest20518:OnSubFinish2051805(arg1)
    print("OnSubFinish2051805")
end

function Quest20518:OnSubFailed2051805(arg1)
    print("OnSubFailed2051805")
end

function Quest20518:OnSubStart2051806(arg1)
    print("OnSubStart2051806")
end

function Quest20518:OnSubFinish2051806(arg1)
    print("OnSubFinish2051806")
end

function Quest20518:OnSubFailed2051806(arg1)
    print("OnSubFailed2051806")
end

return Quest20518
