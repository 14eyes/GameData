require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72696 = class("Quest72696", QuestActorProxy)
Quest72696.defaultAlias = "Quest72696"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72696:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72696:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7269601"] = self.OnSubStart7269601,
        ["7269602"] = self.OnSubStart7269602,
        ["7269606"] = self.OnSubStart7269606,
        ["7269607"] = self.OnSubStart7269607,
        ["7269603"] = self.OnSubStart7269603,
        ["7269604"] = self.OnSubStart7269604,
        ["7269605"] = self.OnSubStart7269605
    }
end

function Quest72696:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7269601"] = self.OnSubFinish7269601,
        ["7269602"] = self.OnSubFinish7269602,
        ["7269606"] = self.OnSubFinish7269606,
        ["7269607"] = self.OnSubFinish7269607,
        ["7269603"] = self.OnSubFinish7269603,
        ["7269604"] = self.OnSubFinish7269604,
        ["7269605"] = self.OnSubFinish7269605
    }
end

function Quest72696:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72696:Start()
    print("Start")
end

function Quest72696:OnDestroy()
    print("OnDestroy")
end

function Quest72696:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72696:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72696:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72696:OnSubStart7269601(arg1)
    print("OnSubStart7269601")
end

function Quest72696:OnSubFinish7269601(arg1)
    print("OnSubFinish7269601")
end

function Quest72696:OnSubStart7269602(arg1)
    print("OnSubStart7269602")
end

function Quest72696:OnSubFinish7269602(arg1)
    print("OnSubFinish7269602")
    self:NarratorOnlyTask(datas.NarratorTable, nil, "")
end

function Quest72696:OnSubStart7269606(arg1)
    print("OnSubStart7269606")
end

function Quest72696:OnSubFinish7269606(arg1)
    print("OnSubFinish7269606")
    self:NarratorOnlyTask(datas.NarratorTable1, nil, "")
end

function Quest72696:OnSubStart7269607(arg1)
    print("OnSubStart7269607")
end

function Quest72696:OnSubFinish7269607(arg1)
    print("OnSubFinish7269607")
    self:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest72696:OnSubStart7269603(arg1)
    print("OnSubStart7269603")
end

function Quest72696:OnSubFinish7269603(arg1)
    print("OnSubFinish7269603")
end

function Quest72696:OnSubStart7269604(arg1)
    print("OnSubStart7269604")
end

function Quest72696:OnSubFinish7269604(arg1)
    print("OnSubFinish7269604")
end

function Quest72696:OnSubStart7269605(arg1)
    print("OnSubStart7269605")
end

function Quest72696:OnSubFinish7269605(arg1)
    print("OnSubFinish7269605")
end

return Quest72696
