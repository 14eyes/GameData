require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75208 = class("Quest75208", QuestActorProxy)
Quest75208.defaultAlias = "Quest75208"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest75208:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest75208:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7520801"] = self.OnSubStart7520801, ["7520803"] = self.OnSubStart7520803}
end

function Quest75208:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7520801"] = self.OnSubFinish7520801, ["7520803"] = self.OnSubFinish7520803}
end

function Quest75208:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75208:Start()
    print("Start")
end

function Quest75208:OnDestroy()
    print("OnDestroy")
end

function Quest75208:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75208:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75208:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75208:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest75208:OnSubStart7520801(arg1)
    print("OnSubStart7520801")
    actorUtils.FinishQuestID(false, 7520801)
end

function Quest75208:OnSubFinish7520801(arg1)
    print("OnSubFinish7520801")
    this:QuestNarratorTask(datas.NarratorWithId_7520801, nil)
end

function Quest75208:OnSubStart7520803(arg1)
    print("OnSubStart7520803")
    if this:GetSubQuestState(7516005) == 2 then
        this:SetNavigationByMainId(75189, true)
        actorUtils.FinishQuestID(false, 7520803)
    end
end

function Quest75208:OnSubFinish7520803(arg1)
    print("OnSubFinish7520803")
end

return Quest75208
