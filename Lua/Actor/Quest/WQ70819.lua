require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70819 = class("Quest70819", QuestActorProxy)
Quest70819.defaultAlias = "Quest70819"
local clientData
local this
local mainID
local actorAlias

function Quest70819:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest70819:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7081901"] = self.OnSubStart7081901, ["7081902"] = self.OnSubStart7081902}
end

function Quest70819:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7081901"] = self.OnSubFinish7081901, ["7081902"] = self.OnSubFinish7081902}
end

function Quest70819:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70819:Start()
    print("Start")
end

function Quest70819:OnDestroy()
    print("OnDestroy")
end

function Quest70819:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70819:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70819:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70819:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest70819:OnSubStart7081901(arg1)
    print("OnSubStart7081901")
end

function Quest70819:OnSubFinish7081901(arg1)
    print("OnSubFinish7081901")
end

function Quest70819:OnSubStart7081902(arg1)
    print("OnSubStart7081902")
end

function Quest70819:OnSubFinish7081902(arg1)
    print("OnSubFinish7081902")
end

return Quest70819
