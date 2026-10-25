require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77514 = class("Quest77514", QuestActorProxy)
Quest77514.defaultAlias = "Quest77514"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest77514:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest77514:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7751401"] = self.OnSubStart7751401}
end

function Quest77514:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7751401"] = self.OnSubFinish7751401}
end

function Quest77514:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7751401"] = self.OnSubFailed7751401}
end

function Quest77514:Start()
    print("Start")
end

function Quest77514:OnDestroy()
    print("OnDestroy")
end

function Quest77514:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77514:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77514:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:RecycleAllRes()
end

function Quest77514:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest77514:OnSubStart7751401(arg1)
    print("OnSubStart7751401")
    this:QuestNarratorTask(datas.NarratorWithId_775010501, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7751401})
    end)
end

function Quest77514:OnSubFinish7751401(arg1)
    print("OnSubFinish7751401")
    this:ClearNarratorTask()
end

function Quest77514:OnSubFailed7751401(arg1)
    print("OnSubFailed7751401")
    this:RecycleAllRes()
    this:ClearNarratorTask()
end

return Quest77514
