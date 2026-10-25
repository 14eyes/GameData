require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74246 = class("Quest74246", QuestActorProxy)
Quest74246.defaultAlias = "Quest74246"
local clientData
local this
local mainID
local actorAlias

function Quest74246:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest74246:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7424601"] = self.OnSubStart7424601,
        ["7424602"] = self.OnSubStart7424602,
        ["7424603"] = self.OnSubStart7424603
    }
end

function Quest74246:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7424601"] = self.OnSubFinish7424601,
        ["7424602"] = self.OnSubFinish7424602,
        ["7424603"] = self.OnSubFinish7424603
    }
end

function Quest74246:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7424602"] = self.OnSubFailed7424602, ["7424603"] = self.OnSubFailed7424603}
end

function Quest74246:Start()
    print("Start")
end

function Quest74246:OnDestroy()
    print("OnDestroy")
end

function Quest74246:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74246:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74246:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74246:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest74246:OnSubStart7424601(arg1)
    print("OnSubStart7424601")
    actorUtils.FinishQuestID(false, 7424601)
end

function Quest74246:OnSubFinish7424601(arg1)
    print("OnSubFinish7424601")
end

function Quest74246:OnSubStart7424602(arg1)
    print("OnSubStart7424602")
    this:DeployRangeStoryByQuest(147424601, 3, {x = 2470.161, y = 345.757, z = 2418.894}, 50, 60)
end

function Quest74246:OnSubFinish7424602(arg1)
    print("OnSubFinish7424602")
    this:CancelRangeStoryByQuest(147424601)
end

function Quest74246:OnSubFailed7424602(arg1)
    print("OnSubFailed7424602")
    this:CancelRangeStoryByQuest(147424601)
end

function Quest74246:OnSubStart7424603(arg1)
    print("OnSubStart7424603")
    this:DeployStoryByQuest(147424602)
end

function Quest74246:OnSubFinish7424603(arg1)
    print("OnSubFinish7424603")
end

function Quest74246:OnSubFailed7424603(arg1)
    print("OnSubFailed7424603")
    this:CancelStoryByQuest(147424602)
end

return Quest74246
