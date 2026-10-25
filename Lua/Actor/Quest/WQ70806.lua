require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70806 = class("Quest70806", QuestActorProxy)
Quest70806.defaultAlias = "Quest70806"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest70806:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest70806:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7080601"] = self.OnSubStart7080601,
        ["7080602"] = self.OnSubStart7080602,
        ["7080603"] = self.OnSubStart7080603
    }
end

function Quest70806:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7080601"] = self.OnSubFinish7080601,
        ["7080602"] = self.OnSubFinish7080602,
        ["7080603"] = self.OnSubFinish7080603
    }
end

function Quest70806:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70806:Start()
    print("Start")
end

function Quest70806:OnDestroy()
    print("OnDestroy")
end

function Quest70806:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70806:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70806:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70806:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest70806:OnSubStart7080601(arg1)
    print("OnSubStart7080601")
end

function Quest70806:OnSubFinish7080601(arg1)
    print("OnSubFinish7080601")
    this:QuestNarratorTask(datas.NarratorWithId_7080601, nil)
end

function Quest70806:OnSubStart7080602(arg1)
    print("OnSubStart7080602")
end

function Quest70806:OnSubFinish7080602(arg1)
    print("OnSubFinish7080602")
    this:QuestNarratorTask(datas.NarratorWithId_7080602, nil)
end

function Quest70806:OnSubStart7080603(arg1)
    print("OnSubStart7080603")
end

function Quest70806:OnSubFinish7080603(arg1)
    print("OnSubFinish7080603")
    this:QuestNarratorTask(datas.NarratorWithId_7080603, nil)
end

return Quest70806
