require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72699 = class("Quest72699", QuestActorProxy)
Quest72699.defaultAlias = "Quest72699"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72699:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72699:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7269901"] = self.OnSubStart7269901}
end

function Quest72699:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7269901"] = self.OnSubFinish7269901}
end

function Quest72699:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72699:Start()
    print("Start")
end

function Quest72699:OnDestroy()
    print("OnDestroy")
end

function Quest72699:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72699:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72699:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72699:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7269901")
        actorUtils.FinishQuestID(false, 7269901)
    end
end

function Quest72699:OnSubStart7269901(arg1)
    print("OnSubStart7269901")
end

function Quest72699:OnSubFinish7269901(arg1)
    print("OnSubFinish7269901")
end

return Quest72699
