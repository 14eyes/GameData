require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8013 = class("Quest8013", QuestActorProxy)
Quest8013.defaultAlias = "Quest8013"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest8013:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest8013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["801301"] = self.OnSubStart801301,
        ["801302"] = self.OnSubStart801302,
        ["801303"] = self.OnSubStart801303
    }
end

function Quest8013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["801301"] = self.OnSubFinish801301,
        ["801302"] = self.OnSubFinish801302,
        ["801303"] = self.OnSubFinish801303
    }
end

function Quest8013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["801301"] = self.OnSubFailed801301}
end

function Quest8013:Start()
    print("Start")
end

function Quest8013:OnDestroy()
    print("OnDestroy")
end

function Quest8013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8013:OnSubStart801301(arg1)
    print("OnSubStart801301")
end

function Quest8013:OnSubFinish801301(arg1)
    print("OnSubFinish801301")
end

function Quest8013:OnSubFailed801301(arg1)
    print("OnSubFailed801301")
end

function Quest8013:OnSubStart801302(arg1)
    print("OnSubStart801302")
    this:PlayerEnterDungeonPointWithDialogs(776, 1177, 801302, 1, nil, 0, nil, nil)
end

function Quest8013:OnSubFinish801302(arg1)
    print("OnSubFinish801302")
end

function Quest8013:OnSubStart801303(arg1)
    print("OnSubStart801303")
end

function Quest8013:OnSubFinish801303(arg1)
    print("OnSubFinish801303")
end

return Quest8013
