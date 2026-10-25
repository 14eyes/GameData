require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77513 = class("Quest77513", QuestActorProxy)
Quest77513.defaultAlias = "Quest77513"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest77513:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest77513:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7751301"] = self.OnSubStart7751301}
end

function Quest77513:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7751301"] = self.OnSubFinish7751301}
end

function Quest77513:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7751301"] = self.OnSubFailed7751301}
end

function Quest77513:Start()
    print("Start")
end

function Quest77513:OnDestroy()
    print("OnDestroy")
end

function Quest77513:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77513:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77513:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:RecycleAllRes()
end

function Quest77513:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest77513:OnSubStart7751301(arg1)
    print("OnSubStart7751301")
    this:QuestNarratorTask(datas.NarratorWithId_775010401, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7751301})
    end)
end

function Quest77513:OnSubFinish7751301(arg1)
    print("OnSubFinish7751301")
    this:ClearNarratorTask()
end

function Quest77513:OnSubFailed7751301(arg1)
    print("OnSubFailed7751301")
    this:RecycleAllRes()
    this:ClearNarratorTask()
end

return Quest77513
