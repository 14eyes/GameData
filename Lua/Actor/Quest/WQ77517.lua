require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77517 = class("Quest77517", QuestActorProxy)
Quest77517.defaultAlias = "Quest77517"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest77517:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest77517:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7751701"] = self.OnSubStart7751701}
end

function Quest77517:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7751701"] = self.OnSubFinish7751701}
end

function Quest77517:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7751701"] = self.OnSubFailed7751701}
end

function Quest77517:Start()
    print("Start")
end

function Quest77517:OnDestroy()
    print("OnDestroy")
end

function Quest77517:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77517:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77517:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:RecycleAllRes()
end

function Quest77517:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest77517:OnSubStart7751701(arg1)
    print("OnSubStart7751701")
    this:QuestNarratorTask(datas.NarratorWithId_775010801, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7751701})
    end)

    this:GetQuestNpcActor(npcs.Npc31118.alias, 77517):DoFreeStyle(1260, true, nil, true, true, false, false)
end

function Quest77517:OnSubFinish7751701(arg1)
    print("OnSubFinish7751701")
end

function Quest77517:OnSubFailed7751701(arg1)
    print("OnSubFailed7751701")
    this:RecycleAllRes()
    this:ClearNarratorTask()
end

return Quest77517
