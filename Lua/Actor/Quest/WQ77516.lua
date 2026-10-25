require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77516 = class("Quest77516", QuestActorProxy)
Quest77516.defaultAlias = "Quest77516"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest77516:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest77516:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7751601"] = self.OnSubStart7751601}
end

function Quest77516:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7751601"] = self.OnSubFinish7751601}
end

function Quest77516:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7751601"] = self.OnSubFailed7751601}
end

function Quest77516:Start()
    print("Start")
end

function Quest77516:OnDestroy()
    print("OnDestroy")
end

function Quest77516:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77516:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77516:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:RecycleAllRes()
end

function Quest77516:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest77516:OnSubStart7751601(arg1)
    print("OnSubStart7751601")
    this:QuestNarratorTask(datas.NarratorWithId_775010701, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7751601})
    end)
end

function Quest77516:OnSubFinish7751601(arg1)
    print("OnSubFinish7751601")
    this:ClearNarratorTask()
end

function Quest77516:OnSubFailed7751601(arg1)
    print("OnSubFailed7751601")
    this:RecycleAllRes()
    this:ClearNarratorTask()
end

return Quest77516
