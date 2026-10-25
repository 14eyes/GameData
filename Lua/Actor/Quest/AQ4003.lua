require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4003 = class("Quest4003", QuestActorProxy)
Quest4003.defaultAlias = "Quest4003"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest4003:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest4003:OnSubStartHandlerBuild()
    self.subStartHandlers = {["400301"] = self.OnSubStart400301, ["400302"] = self.OnSubStart400302}
end

function Quest4003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["400301"] = self.OnSubFinish400301, ["400302"] = self.OnSubFinish400302}
end

function Quest4003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest4003:Start()
    print("Start")
end

function Quest4003:OnDestroy()
    print("OnDestroy")
end

function Quest4003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4003:OnSubStart400301(arg1)
    print("OnSubStart400301")
    actorUtils.FinishQuestID(false, 400301)
end

function Quest4003:OnSubFinish400301(arg1)
    print("OnSubFinish400301")
end

function Quest4003:OnSubStart400302(arg1)
    print("OnSubStart400302")
end

function Quest4003:OnSubFinish400302(arg1)
    print("OnSubFinish400302")
end

return Quest4003
