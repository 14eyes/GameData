require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71661 = class("Quest71661", QuestActorProxy)
Quest71661.defaultAlias = "Quest71661"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71661:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71661:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7166101"] = self.OnSubStart7166101}
end

function Quest71661:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7166101"] = self.OnSubFinish7166101}
end

function Quest71661:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71661:Start()
    print("Start")
end

function Quest71661:OnDestroy()
    print("OnDestroy")
end

function Quest71661:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71661:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71661:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71661:OnSubStart7166101(arg1)
    print("OnSubStart7166101")
end

function Quest71661:OnSubFinish7166101(arg1)
    print("OnSubFinish7166101")
end

return Quest71661
