require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72667 = class("Quest72667", QuestActorProxy)
Quest72667.defaultAlias = "Quest72667"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72667:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72667:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7266701"] = self.OnSubStart7266701,
        ["7266702"] = self.OnSubStart7266702,
        ["7266703"] = self.OnSubStart7266703
    }
end

function Quest72667:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7266701"] = self.OnSubFinish7266701,
        ["7266702"] = self.OnSubFinish7266702,
        ["7266703"] = self.OnSubFinish7266703
    }
end

function Quest72667:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7266701"] = self.OnSubFailed7266701,
        ["7266702"] = self.OnSubFailed7266702,
        ["7266703"] = self.OnSubFailed7266703
    }
end

function Quest72667:Start()
    print("Start")
end

function Quest72667:OnDestroy()
    print("OnDestroy")
end

function Quest72667:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72667:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72667:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72667:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7266701 then
        actorUtils.FinishQuestID(false, 7266701)
    end
end

function Quest72667:OnSubStart7266701(arg1)
    print("OnSubStart7266701")
end

function Quest72667:OnSubFinish7266701(arg1)
    print("OnSubFinish7266701")
end

function Quest72667:OnSubFailed7266701(arg1)
    print("OnSubFailed7266701")
end

function Quest72667:OnSubStart7266702(arg1)
    print("OnSubStart7266702")
end

function Quest72667:OnSubFinish7266702(arg1)
    print("OnSubFinish7266702")
end

function Quest72667:OnSubFailed7266702(arg1)
    print("OnSubFailed7266702")
end

function Quest72667:OnSubStart7266703(arg1)
    print("OnSubStart7266703")
end

function Quest72667:OnSubFinish7266703(arg1)
    print("OnSubFinish7266703")
    self.uActor:CancelCurrentNavigation()
end

function Quest72667:OnSubFailed7266703(arg1)
    print("OnSubFailed7266703")
end

return Quest72667
