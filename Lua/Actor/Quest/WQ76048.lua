require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76048 = class("Quest76048", QuestActorProxy)
Quest76048.defaultAlias = "Quest76048"
local clientData
local this
local mainID
local actorAlias

function Quest76048:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76048:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7604801"] = self.OnSubStart7604801,
        ["7604802"] = self.OnSubStart7604802,
        ["7604803"] = self.OnSubStart7604803,
        ["7604804"] = self.OnSubStart7604804,
        ["7604806"] = self.OnSubStart7604806,
        ["7604805"] = self.OnSubStart7604805
    }
end

function Quest76048:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7604801"] = self.OnSubFinish7604801,
        ["7604802"] = self.OnSubFinish7604802,
        ["7604803"] = self.OnSubFinish7604803,
        ["7604804"] = self.OnSubFinish7604804,
        ["7604806"] = self.OnSubFinish7604806,
        ["7604805"] = self.OnSubFinish7604805
    }
end

function Quest76048:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76048:Start()
    print("Start")
end

function Quest76048:OnDestroy()
    print("OnDestroy")
end

function Quest76048:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76048:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76048:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76048:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76048:OnSubStart7604801(arg1)
    print("OnSubStart7604801")
end

function Quest76048:OnSubFinish7604801(arg1)
    print("OnSubFinish7604801")
    this:TransmitPlayerByQuestId(7604801, 1, nil, nil, nil)
end

function Quest76048:OnSubStart7604802(arg1)
    print("OnSubStart7604802")
end

function Quest76048:OnSubFinish7604802(arg1)
    print("OnSubFinish7604802")
end

function Quest76048:OnSubStart7604803(arg1)
    print("OnSubStart7604803")
end

function Quest76048:OnSubFinish7604803(arg1)
    print("OnSubFinish7604803")
end

function Quest76048:OnSubStart7604804(arg1)
    print("OnSubStart7604804")
end

function Quest76048:OnSubFinish7604804(arg1)
    print("OnSubFinish7604804")
end

function Quest76048:OnSubStart7604806(arg1)
    print("OnSubStart7604806")
end

function Quest76048:OnSubFinish7604806(arg1)
    print("OnSubFinish7604806")
end

function Quest76048:OnSubStart7604805(arg1)
    print("OnSubStart7604805")
end

function Quest76048:OnSubFinish7604805(arg1)
    print("OnSubFinish7604805")
end

return Quest76048
