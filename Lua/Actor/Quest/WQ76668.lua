require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76668 = class("Quest76668", QuestActorProxy)
Quest76668.defaultAlias = "Quest76668"
local clientData
local this
local mainID
local actorAlias

function Quest76668:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76668:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7666805"] = self.OnSubStart7666805,
        ["7666801"] = self.OnSubStart7666801,
        ["7666802"] = self.OnSubStart7666802,
        ["7666803"] = self.OnSubStart7666803,
        ["7666804"] = self.OnSubStart7666804
    }
end

function Quest76668:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7666805"] = self.OnSubFinish7666805,
        ["7666801"] = self.OnSubFinish7666801,
        ["7666802"] = self.OnSubFinish7666802,
        ["7666803"] = self.OnSubFinish7666803,
        ["7666804"] = self.OnSubFinish7666804
    }
end

function Quest76668:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76668:Start()
    print("Start")
end

function Quest76668:OnDestroy()
    print("OnDestroy")
end

function Quest76668:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76668:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76668:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76668:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76668:OnSubStart7666805(arg1)
    print("OnSubStart7666805")
    actorUtils.FinishQuestID(false, 7666805)
end

function Quest76668:OnSubFinish7666805(arg1)
    print("OnSubFinish7666805")
end

function Quest76668:OnSubStart7666801(arg1)
    print("OnSubStart7666801")
end

function Quest76668:OnSubFinish7666801(arg1)
    print("OnSubFinish7666801")
end

function Quest76668:OnSubStart7666802(arg1)
    print("OnSubStart7666802")
end

function Quest76668:OnSubFinish7666802(arg1)
    print("OnSubFinish7666802")
end

function Quest76668:OnSubStart7666803(arg1)
    print("OnSubStart7666803")
end

function Quest76668:OnSubFinish7666803(arg1)
    print("OnSubFinish7666803")
end

function Quest76668:OnSubStart7666804(arg1)
    print("OnSubStart7666804")
end

function Quest76668:OnSubFinish7666804(arg1)
    print("OnSubFinish7666804")
end

return Quest76668
