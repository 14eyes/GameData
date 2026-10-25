require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71136 = class("Quest71136", QuestActorProxy)
Quest71136.defaultAlias = "Quest71136"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest71136:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71136:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7113601"] = self.OnSubStart7113601, ["7113602"] = self.OnSubStart7113602}
end

function Quest71136:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7113601"] = self.OnSubFinish7113601, ["7113602"] = self.OnSubFinish7113602}
end

function Quest71136:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71136:Start()
    print("Start")
end

function Quest71136:OnDestroy()
    print("OnDestroy")
end

function Quest71136:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71136:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71136:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71136:OnSubStart7113601(arg1)
    print("OnSubStart7113601")
end

function Quest71136:OnSubFinish7113601(arg1)
    print("OnSubFinish7113601")
end

function Quest71136:OnSubStart7113602(arg1)
    print("OnSubStart7113602")
end

function Quest71136:OnSubFinish7113602(arg1)
    print("OnSubFinish7113602")
    this:PlayCutsceneIndex(711360201, nil, nil, nil, false)
end

return Quest71136
