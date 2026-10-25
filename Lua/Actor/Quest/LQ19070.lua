require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19070 = class("Quest19070", QuestActorProxy)
Quest19070.defaultAlias = "Quest19070"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19070:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19070:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1907002"] = self.OnSubStart1907002, ["1907001"] = self.OnSubStart1907001}
end

function Quest19070:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1907002"] = self.OnSubFinish1907002, ["1907001"] = self.OnSubFinish1907001}
end

function Quest19070:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1907002"] = self.OnSubFailed1907002, ["1907001"] = self.OnSubFailed1907001}
end

function Quest19070:Start()
    print("Start")
end

function Quest19070:OnDestroy()
    print("OnDestroy")
end

function Quest19070:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19070:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19070:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19070:OnSubStart1907002(arg1)
    print("OnSubStart1907002")
end

function Quest19070:OnSubFinish1907002(arg1)
    print("OnSubFinish1907002")
end

function Quest19070:OnSubFailed1907002(arg1)
    print("OnSubFailed1907002")
end

function Quest19070:OnSubStart1907001(arg1)
    print("OnSubStart1907001")
end

function Quest19070:OnSubFinish1907001(arg1)
    print("OnSubFinish1907001")
end

function Quest19070:OnSubFailed1907001(arg1)
    print("OnSubFailed1907001")
end

return Quest19070
