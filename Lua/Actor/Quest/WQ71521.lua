require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71521 = class("Quest71521", QuestActorProxy)
Quest71521.defaultAlias = "Quest71521"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71521:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71521:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7152101"] = self.OnSubStart7152101}
end

function Quest71521:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7152101"] = self.OnSubFinish7152101}
end

function Quest71521:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71521:Start()
    print("Start")
end

function Quest71521:OnDestroy()
    print("OnDestroy")
end

function Quest71521:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71521:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71521:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71521:OnSubStart7152101(arg1)
    print("OnSubStart7152101")
end

function Quest71521:OnSubFinish7152101(arg1)
    print("OnSubFinish7152101")
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(1543)
    end)
end

return Quest71521
