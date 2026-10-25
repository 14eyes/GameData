require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77512 = class("Quest77512", QuestActorProxy)
Quest77512.defaultAlias = "Quest77512"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest77512:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest77512:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7751201"] = self.OnSubStart7751201}
end

function Quest77512:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7751201"] = self.OnSubFinish7751201}
end

function Quest77512:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7751201"] = self.OnSubFailed7751201}
end

function Quest77512:Start()
    print("Start")
end

function Quest77512:OnDestroy()
    print("OnDestroy")
end

function Quest77512:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77512:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77512:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:RecycleAllRes()
end

function Quest77512:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest77512:OnSubStart7751201(arg1)
    print("OnSubStart7751201")
    this:QuestNarratorTask(datas.NarratorWithId_775010338, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7751201})
    end)
end

function Quest77512:OnSubFinish7751201(arg1)
    print("OnSubFinish7751201")
    this:ClearNarratorTask()
end

function Quest77512:OnSubFailed7751201(arg1)
    print("OnSubFailed7751201")
    this:RecycleAllRes()
    this:ClearNarratorTask()
end

return Quest77512
