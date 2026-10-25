require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8014 = class("Quest8014", QuestActorProxy)
Quest8014.defaultAlias = "Quest8014"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest8014:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest8014:OnSubStartHandlerBuild()
    self.subStartHandlers = {["801401"] = self.OnSubStart801401}
end

function Quest8014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["801401"] = self.OnSubFinish801401}
end

function Quest8014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["801401"] = self.OnSubFailed801401}
end

function Quest8014:Start()
    print("Start")
end

function Quest8014:OnDestroy()
    print("OnDestroy")
end

function Quest8014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8014:OnSubStart801401(arg1)
    print("OnSubStart801401")
end

function Quest8014:OnSubFinish801401(arg1)
    print("OnSubFinish801401")
end

function Quest8014:OnSubFailed801401(arg1)
    print("OnSubFailed801401")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:PlayerEnterDungeonPointWithDialogs(2, 1175, 801401, 1, nil, 0, nil, nil)
    end, nil, nil, 0, false, true)
end

return Quest8014
