require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76667 = class("Quest76667", QuestActorProxy)
Quest76667.defaultAlias = "Quest76667"
local clientData
local this
local mainID
local actorAlias

function Quest76667:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76667:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7666701"] = self.OnSubStart7666701,
        ["7666704"] = self.OnSubStart7666704,
        ["7666705"] = self.OnSubStart7666705,
        ["7666702"] = self.OnSubStart7666702,
        ["7666703"] = self.OnSubStart7666703,
        ["7666706"] = self.OnSubStart7666706
    }
end

function Quest76667:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7666701"] = self.OnSubFinish7666701,
        ["7666704"] = self.OnSubFinish7666704,
        ["7666705"] = self.OnSubFinish7666705,
        ["7666702"] = self.OnSubFinish7666702,
        ["7666703"] = self.OnSubFinish7666703,
        ["7666706"] = self.OnSubFinish7666706
    }
end

function Quest76667:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76667:Start()
    print("Start")
end

function Quest76667:OnDestroy()
    print("OnDestroy")
end

function Quest76667:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76667:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76667:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76667:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76667:OnSubStart7666701(arg1)
    print("OnSubStart7666701")
end

function Quest76667:OnSubFinish7666701(arg1)
    print("OnSubFinish7666701")
end

function Quest76667:OnSubStart7666704(arg1)
    print("OnSubStart7666704")
end

function Quest76667:OnSubFinish7666704(arg1)
    print("OnSubFinish7666704")
end

function Quest76667:OnSubStart7666705(arg1)
    print("OnSubStart7666705")
end

function Quest76667:OnSubFinish7666705(arg1)
    print("OnSubFinish7666705")
end

function Quest76667:OnSubStart7666702(arg1)
    print("OnSubStart7666702")
end

function Quest76667:OnSubFinish7666702(arg1)
    print("OnSubFinish7666702")
end

function Quest76667:OnSubStart7666703(arg1)
    print("OnSubStart7666703")
end

function Quest76667:OnSubFinish7666703(arg1)
    print("OnSubFinish7666703")
end

function Quest76667:OnSubStart7666706(arg1)
    print("OnSubStart7666706")
end

function Quest76667:OnSubFinish7666706(arg1)
    print("OnSubFinish7666706")
end

return Quest76667
