require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77233 = class("Quest77233", QuestActorProxy)
Quest77233.defaultAlias = "Quest77233"
local clientData
local this
local mainID
local actorAlias

function Quest77233:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest77233:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7723301"] = self.OnSubStart7723301,
        ["7723302"] = self.OnSubStart7723302,
        ["7723304"] = self.OnSubStart7723304,
        ["7723305"] = self.OnSubStart7723305,
        ["7723306"] = self.OnSubStart7723306,
        ["7723307"] = self.OnSubStart7723307,
        ["7723303"] = self.OnSubStart7723303
    }
end

function Quest77233:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7723301"] = self.OnSubFinish7723301,
        ["7723302"] = self.OnSubFinish7723302,
        ["7723304"] = self.OnSubFinish7723304,
        ["7723305"] = self.OnSubFinish7723305,
        ["7723306"] = self.OnSubFinish7723306,
        ["7723307"] = self.OnSubFinish7723307,
        ["7723303"] = self.OnSubFinish7723303
    }
end

function Quest77233:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7723307"] = self.OnSubFailed7723307}
end

function Quest77233:Start()
    print("Start")
end

function Quest77233:OnDestroy()
    print("OnDestroy")
end

function Quest77233:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77233:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77233:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77233:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77233:OnSubStart7723301(arg1)
    print("OnSubStart7723301")
end

function Quest77233:OnSubFinish7723301(arg1)
    print("OnSubFinish7723301")
    this:SetNavigationByMainId(77233, true)
end

function Quest77233:OnSubStart7723302(arg1)
    print("OnSubStart7723302")
end

function Quest77233:OnSubFinish7723302(arg1)
    print("OnSubFinish7723302")
end

function Quest77233:OnSubStart7723304(arg1)
    print("OnSubStart7723304")
end

function Quest77233:OnSubFinish7723304(arg1)
    print("OnSubFinish7723304")
end

function Quest77233:OnSubStart7723305(arg1)
    print("OnSubStart7723305")
end

function Quest77233:OnSubFinish7723305(arg1)
    print("OnSubFinish7723305")
end

function Quest77233:OnSubStart7723306(arg1)
    print("OnSubStart7723306")
end

function Quest77233:OnSubFinish7723306(arg1)
    print("OnSubFinish7723306")
end

function Quest77233:OnSubStart7723307(arg1)
    print("OnSubStart7723307")
    this:DeployStoryByQuest(147723301)
end

function Quest77233:OnSubFinish7723307(arg1)
    print("OnSubFinish7723307")
    this:CancelAllStory()
end

function Quest77233:OnSubFailed7723307(arg1)
    print("OnSubFailed7723307")
    this:RecycleAllRes()
    this:CancelAllStory()
    this:CancelNavigation(77233)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowReminder(1002830005)
    end)
end

function Quest77233:OnSubStart7723303(arg1)
    print("OnSubStart7723303")
end

function Quest77233:OnSubFinish7723303(arg1)
    print("OnSubFinish7723303")
end

return Quest77233
