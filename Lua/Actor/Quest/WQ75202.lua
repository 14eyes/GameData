require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75202 = class("Quest75202", QuestActorProxy)
Quest75202.defaultAlias = "Quest75202"
local clientData
local this
local mainID
local actorAlias

function Quest75202:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75202:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7520202"] = self.OnSubStart7520202, ["7520201"] = self.OnSubStart7520201}
end

function Quest75202:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7520202"] = self.OnSubFinish7520202, ["7520201"] = self.OnSubFinish7520201}
end

function Quest75202:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75202:Start()
    print("Start")
end

function Quest75202:OnDestroy()
    print("OnDestroy")
end

function Quest75202:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75202:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75202:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75202:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75202:OnSubStart7520202(arg1)
    print("OnSubStart7520202")
end

function Quest75202:OnSubFinish7520202(arg1)
    print("OnSubFinish7520202")
    this:SetNavigationByMainId(75202, true)
end

function Quest75202:OnSubStart7520201(arg1)
    print("OnSubStart7520201")
end

function Quest75202:OnSubFinish7520201(arg1)
    print("OnSubFinish7520201")
    if this:GetSubQuestState(7516005) == 3 then
        this:SetNavigationByMainId(75150, true)
    else
        this:SetNavigationByMainId(75189, true)
    end
end

return Quest75202
