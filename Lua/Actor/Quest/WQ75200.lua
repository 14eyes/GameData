require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75200 = class("Quest75200", QuestActorProxy)
Quest75200.defaultAlias = "Quest75200"
local clientData
local this
local mainID
local actorAlias

function Quest75200:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75200:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7520002"] = self.OnSubStart7520002, ["7520001"] = self.OnSubStart7520001}
end

function Quest75200:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7520002"] = self.OnSubFinish7520002, ["7520001"] = self.OnSubFinish7520001}
end

function Quest75200:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75200:Start()
    print("Start")
end

function Quest75200:OnDestroy()
    print("OnDestroy")
end

function Quest75200:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75200:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75200:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75200:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75200:OnSubStart7520002(arg1)
    print("OnSubStart7520002")
end

function Quest75200:OnSubFinish7520002(arg1)
    print("OnSubFinish7520002")
    this:SetNavigationByMainId(75200, true)
end

function Quest75200:OnSubStart7520001(arg1)
    print("OnSubStart7520001")
end

function Quest75200:OnSubFinish7520001(arg1)
    print("OnSubFinish7520001")
    if this:GetSubQuestState(7516005) == 3 then
        this:SetNavigationByMainId(75150, true)
    else
        this:SetNavigationByMainId(75189, true)
    end
end

return Quest75200
