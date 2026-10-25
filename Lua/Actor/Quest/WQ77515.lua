require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77515 = class("Quest77515", QuestActorProxy)
Quest77515.defaultAlias = "Quest77515"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest77515:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest77515:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7751501"] = self.OnSubStart7751501}
end

function Quest77515:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7751501"] = self.OnSubFinish7751501}
end

function Quest77515:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7751501"] = self.OnSubFailed7751501}
end

function Quest77515:Start()
    print("Start")
end

function Quest77515:OnDestroy()
    print("OnDestroy")
end

function Quest77515:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77515:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77515:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:RecycleAllRes()
end

function Quest77515:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest77515:OnSubStart7751501(arg1)
    print("OnSubStart7751501")
    this:QuestNarratorTask(datas.NarratorWithId_775010601, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7751501})
    end)
end

function Quest77515:OnSubFinish7751501(arg1)
    print("OnSubFinish7751501")
    this:ClearNarratorTask()
end

function Quest77515:OnSubFailed7751501(arg1)
    print("OnSubFailed7751501")
    this:RecycleAllRes()
    this:ClearNarratorTask()
end

return Quest77515
