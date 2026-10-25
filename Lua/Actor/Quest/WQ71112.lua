require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71112 = class("Quest71112", QuestActorProxy)
Quest71112.defaultAlias = "Quest71112"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71112:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71112:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7111201"] = self.OnSubStart7111201}
end

function Quest71112:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7111201"] = self.OnSubFinish7111201}
end

function Quest71112:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71112:Start()
    print("Start")
end

function Quest71112:OnDestroy()
    print("OnDestroy")
end

function Quest71112:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71112:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71112:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71112:OnSubStart7111201(arg1)
    print("OnSubStart7111201")
end

function Quest71112:OnSubFinish7111201(arg1)
    print("OnSubFinish7111201")
end

return Quest71112
