require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20071 = class("Quest20071", QuestActorProxy)
Quest20071.defaultAlias = "Quest20071"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest20071:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest20071:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2007112"] = self.OnSubStart2007112,
        ["2007101"] = self.OnSubStart2007101,
        ["2007102"] = self.OnSubStart2007102,
        ["2007103"] = self.OnSubStart2007103,
        ["2007104"] = self.OnSubStart2007104,
        ["2007105"] = self.OnSubStart2007105,
        ["2007106"] = self.OnSubStart2007106,
        ["2007107"] = self.OnSubStart2007107,
        ["2007111"] = self.OnSubStart2007111,
        ["2007108"] = self.OnSubStart2007108,
        ["2007109"] = self.OnSubStart2007109,
        ["2007110"] = self.OnSubStart2007110
    }
end

function Quest20071:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2007112"] = self.OnSubFinish2007112,
        ["2007101"] = self.OnSubFinish2007101,
        ["2007102"] = self.OnSubFinish2007102,
        ["2007103"] = self.OnSubFinish2007103,
        ["2007104"] = self.OnSubFinish2007104,
        ["2007105"] = self.OnSubFinish2007105,
        ["2007106"] = self.OnSubFinish2007106,
        ["2007107"] = self.OnSubFinish2007107,
        ["2007111"] = self.OnSubFinish2007111,
        ["2007108"] = self.OnSubFinish2007108,
        ["2007109"] = self.OnSubFinish2007109,
        ["2007110"] = self.OnSubFinish2007110
    }
end

function Quest20071:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2007112"] = self.OnSubFailed2007112,
        ["2007101"] = self.OnSubFailed2007101,
        ["2007102"] = self.OnSubFailed2007102,
        ["2007103"] = self.OnSubFailed2007103,
        ["2007104"] = self.OnSubFailed2007104,
        ["2007105"] = self.OnSubFailed2007105,
        ["2007106"] = self.OnSubFailed2007106,
        ["2007107"] = self.OnSubFailed2007107,
        ["2007111"] = self.OnSubFailed2007111,
        ["2007108"] = self.OnSubFailed2007108,
        ["2007109"] = self.OnSubFailed2007109,
        ["2007110"] = self.OnSubFailed2007110
    }
end

function Quest20071:Start()
    print("Start")
end

function Quest20071:OnDestroy()
    print("OnDestroy")
end

function Quest20071:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest20071:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest20071:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest20071:FinishNext()
    print("FinishNext")
    self:FinishQuestID(false, 2007103)
end

function Quest20071:ClearData()
    print("ClearData")
    self:NotifyTo(npcs.Npc1425Data.alias, 0, true)
end

function Quest20071:OnSubStart2007112(arg1)
    print("OnSubStart2007112")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20071:OnSubFinish2007112(arg1)
    print("OnSubFinish2007112")
end

function Quest20071:OnSubFailed2007112(arg1)
    print("OnSubFailed2007112")
end

function Quest20071:OnSubStart2007101(arg1)
    print("OnSubStart2007101")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20071:OnSubFinish2007101(arg1)
    print("OnSubFinish2007101")
end

function Quest20071:OnSubFailed2007101(arg1)
    print("OnSubFailed2007101")
end

function Quest20071:OnSubStart2007102(arg1)
    print("OnSubStart2007102")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20071:OnSubFinish2007102(arg1)
    print("OnSubFinish2007102")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q2006908_targetPos1").pos, 0, 3, true, false)
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709902, nil, 20071)
end

function Quest20071:OnSubFailed2007102(arg1)
    print("OnSubFailed2007102")
end

function Quest20071:OnSubStart2007103(arg1)
    print("OnSubStart2007103")
    self:FinishQuestID(false, 2007103)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20071:OnSubFinish2007103(arg1)
    print("OnSubFinish2007103")
end

function Quest20071:OnSubFailed2007103(arg1)
    print("OnSubFailed2007103")
end

function Quest20071:OnSubStart2007104(arg1)
    print("OnSubStart2007104")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20071:OnSubFinish2007104(arg1)
    print("OnSubFinish2007104")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709903, nil, 20071)
end

function Quest20071:OnSubFailed2007104(arg1)
    print("OnSubFailed2007104")
end

function Quest20071:OnSubStart2007105(arg1)
    print("OnSubStart2007105")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20071:OnSubFinish2007105(arg1)
    print("OnSubFinish2007105")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709909, nil, 20071)
end

function Quest20071:OnSubFailed2007105(arg1)
    print("OnSubFailed2007105")
end

function Quest20071:OnSubStart2007106(arg1)
    print("OnSubStart2007106")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20071:OnSubFinish2007106(arg1)
    print("OnSubFinish2007106")
    self:ShowBlackScreen(0.3, 0.5, 0.3, nil, nil, nil, "")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_200709901, nil, 20071)
end

function Quest20071:OnSubFailed2007106(arg1)
    print("OnSubFailed2007106")
end

function Quest20071:OnSubStart2007107(arg1)
    print("OnSubStart2007107")
    self:FinishQuestID(false, 2007111)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20071:OnSubFinish2007107(arg1)
    print("OnSubFinish2007107")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, self.ClearData, nil, "")
end

function Quest20071:OnSubFailed2007107(arg1)
    print("OnSubFailed2007107")
end

function Quest20071:OnSubStart2007111(arg1)
    print("OnSubStart2007111")
    self:FinishQuestID(false, 2007107)
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20071:OnSubFinish2007111(arg1)
    print("OnSubFinish2007111")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, self.ClearData, nil, "")
end

function Quest20071:OnSubFailed2007111(arg1)
    print("OnSubFailed2007111")
end

function Quest20071:OnSubStart2007108(arg1)
    print("OnSubStart2007108")
end

function Quest20071:OnSubFinish2007108(arg1)
    print("OnSubFinish2007108")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_2006901, nil, 20071)
end

function Quest20071:OnSubFailed2007108(arg1)
    print("OnSubFailed2007108")
end

function Quest20071:OnSubStart2007109(arg1)
    print("OnSubStart2007109")
    self:NotifyTo(npcs.Npc1425Data.alias, 2, true)
end

function Quest20071:OnSubFinish2007109(arg1)
    print("OnSubFinish2007109")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, self.ClearData, nil, "")
end

function Quest20071:OnSubFailed2007109(arg1)
    print("OnSubFailed2007109")
end

function Quest20071:OnSubStart2007110(arg1)
    print("OnSubStart2007110")
end

function Quest20071:OnSubFinish2007110(arg1)
    print("OnSubFinish2007110")
end

function Quest20071:OnSubFailed2007110(arg1)
    print("OnSubFailed2007110")
end

return Quest20071
