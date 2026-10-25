require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77218 = class("Quest77218", QuestActorProxy)
Quest77218.defaultAlias = "Quest77218"
local clientData
local this
local mainID
local actorAlias

function Quest77218:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77218:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7721801"] = self.OnSubStart7721801,
        ["7721802"] = self.OnSubStart7721802,
        ["7721803"] = self.OnSubStart7721803
    }
end

function Quest77218:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7721801"] = self.OnSubFinish7721801,
        ["7721802"] = self.OnSubFinish7721802,
        ["7721803"] = self.OnSubFinish7721803
    }
end

function Quest77218:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7721802"] = self.OnSubFailed7721802}
end

function Quest77218:Start()
    print("Start")
end

function Quest77218:OnDestroy()
    print("OnDestroy")
end

function Quest77218:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77218:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77218:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77218:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77218:OnSubStart7721801(arg1)
    print("OnSubStart7721801")
end

function Quest77218:OnSubFinish7721801(arg1)
    print("OnSubFinish7721801")
end

function Quest77218:OnSubStart7721802(arg1)
    print("OnSubStart7721802")
end

function Quest77218:OnSubFinish7721802(arg1)
    print("OnSubFinish7721802")
end

function Quest77218:OnSubFailed7721802(arg1)
    print("OnSubFailed7721802")
    this:RecycleAllRes()
end

function Quest77218:OnSubStart7721803(arg1)
    print("OnSubStart7721803")
    actorUtils.FinishQuestWithParam({false}, {7721803})
end

function Quest77218:OnSubFinish7721803(arg1)
    print("OnSubFinish7721803")
end

return Quest77218
