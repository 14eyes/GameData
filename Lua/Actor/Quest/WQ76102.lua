require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76102 = class("Quest76102", QuestActorProxy)
Quest76102.defaultAlias = "Quest76102"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest76102:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest76102:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7610201"] = self.OnSubStart7610201}
end

function Quest76102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7610201"] = self.OnSubFinish7610201}
end

function Quest76102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76102:Start()
    print("Start")
end

function Quest76102:OnDestroy()
    print("OnDestroy")
end

function Quest76102:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76102:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76102:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76102:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest76102:OnSubStart7610201(arg1)
    print("OnSubStart7610201")
    actorUtils.FinishQuestID(false, 7610201)
end

function Quest76102:OnSubFinish7610201(arg1)
    print("OnSubFinish7610201")
    if this:GetSubQuestState(600001) ~= 3 then
        this:QuestNarratorTask(datas.NarratorWithId_761020101, nil)
    end
end

return Quest76102
