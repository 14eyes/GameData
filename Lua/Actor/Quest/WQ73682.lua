require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73682 = class("Quest73682", QuestActorProxy)
Quest73682.defaultAlias = "Quest73682"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73682:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73682:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7368201"] = self.OnSubStart7368201}
end

function Quest73682:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7368201"] = self.OnSubFinish7368201}
end

function Quest73682:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73682:Start()
    print("Start")
end

function Quest73682:OnDestroy()
    print("OnDestroy")
end

function Quest73682:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73682:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73682:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73682:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7368201")
        actorUtils.FinishQuestID(false, 7368201)
    end
end

function Quest73682:OnSubStart7368201(arg1)
    print("OnSubStart7368201")
end

function Quest73682:OnSubFinish7368201(arg1)
    print("OnSubFinish7368201")
end

return Quest73682
