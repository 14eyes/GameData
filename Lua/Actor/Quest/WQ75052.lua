require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75052 = class("Quest75052", QuestActorProxy)
Quest75052.defaultAlias = "Quest75052"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75052:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75052:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7505201"] = self.OnSubStart7505201, ["7505202"] = self.OnSubStart7505202}
end

function Quest75052:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7505201"] = self.OnSubFinish7505201, ["7505202"] = self.OnSubFinish7505202}
end

function Quest75052:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75052:Start()
    print("Start")
end

function Quest75052:OnDestroy()
    print("OnDestroy")
end

function Quest75052:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75052:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75052:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75052:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7505201)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7505202)
    end
end

function Quest75052:OnSubStart7505201(arg1)
    print("OnSubStart7505201")
end

function Quest75052:OnSubFinish7505201(arg1)
    print("OnSubFinish7505201")
end

function Quest75052:OnSubStart7505202(arg1)
    print("OnSubStart7505202")
end

function Quest75052:OnSubFinish7505202(arg1)
    print("OnSubFinish7505202")
end

return Quest75052
