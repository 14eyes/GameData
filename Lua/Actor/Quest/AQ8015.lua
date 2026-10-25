require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8015 = class("Quest8015", QuestActorProxy)
Quest8015.defaultAlias = "Quest8015"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest8015:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest8015:OnSubStartHandlerBuild()
    self.subStartHandlers = {["801501"] = self.OnSubStart801501}
end

function Quest8015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["801501"] = self.OnSubFinish801501}
end

function Quest8015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["801501"] = self.OnSubFailed801501}
end

function Quest8015:Start()
    print("Start")
end

function Quest8015:OnDestroy()
    print("OnDestroy")
end

function Quest8015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8015:OnSubStart801501(arg1)
    print("OnSubStart801501")
end

function Quest8015:OnSubFinish801501(arg1)
    print("OnSubFinish801501")
end

function Quest8015:OnSubFailed801501(arg1)
    print("OnSubFailed801501")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:PlayerEnterDungeonPointWithDialogs(4, 1176, 801501, 1, nil, 0, nil, nil)
    end, nil, nil, 0, false, true)
end

return Quest8015
