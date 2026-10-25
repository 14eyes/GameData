require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76679 = class("Quest76679", QuestActorProxy)
Quest76679.defaultAlias = "Quest76679"
local clientData
local this
local mainID
local actorAlias

function Quest76679:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76679:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7667901"] = self.OnSubStart7667901,
        ["7667902"] = self.OnSubStart7667902,
        ["7667903"] = self.OnSubStart7667903,
        ["7667904"] = self.OnSubStart7667904,
        ["7667905"] = self.OnSubStart7667905,
        ["7667906"] = self.OnSubStart7667906,
        ["7667907"] = self.OnSubStart7667907
    }
end

function Quest76679:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7667901"] = self.OnSubFinish7667901,
        ["7667902"] = self.OnSubFinish7667902,
        ["7667903"] = self.OnSubFinish7667903,
        ["7667904"] = self.OnSubFinish7667904,
        ["7667905"] = self.OnSubFinish7667905,
        ["7667906"] = self.OnSubFinish7667906,
        ["7667907"] = self.OnSubFinish7667907
    }
end

function Quest76679:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76679:Start()
    print("Start")
end

function Quest76679:OnDestroy()
    print("OnDestroy")
end

function Quest76679:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76679:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76679:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76679:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76679:OnSubStart7667901(arg1)
    print("OnSubStart7667901")
end

function Quest76679:OnSubFinish7667901(arg1)
    print("OnSubFinish7667901")
end

function Quest76679:OnSubStart7667902(arg1)
    print("OnSubStart7667902")
end

function Quest76679:OnSubFinish7667902(arg1)
    print("OnSubFinish7667902")
end

function Quest76679:OnSubStart7667903(arg1)
    print("OnSubStart7667903")
end

function Quest76679:OnSubFinish7667903(arg1)
    print("OnSubFinish7667903")
end

function Quest76679:OnSubStart7667904(arg1)
    print("OnSubStart7667904")
end

function Quest76679:OnSubFinish7667904(arg1)
    print("OnSubFinish7667904")
end

function Quest76679:OnSubStart7667905(arg1)
    print("OnSubStart7667905")
end

function Quest76679:OnSubFinish7667905(arg1)
    print("OnSubFinish7667905")
end

function Quest76679:OnSubStart7667906(arg1)
    print("OnSubStart7667906")
end

function Quest76679:OnSubFinish7667906(arg1)
    print("OnSubFinish7667906")
end

function Quest76679:OnSubStart7667907(arg1)
    print("OnSubStart7667907")
end

function Quest76679:OnSubFinish7667907(arg1)
    print("OnSubFinish7667907")
end

return Quest76679
