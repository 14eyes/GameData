require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72277 = class("Quest72277", QuestActorProxy)
Quest72277.defaultAlias = "Quest72277"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72277:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72277:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7227701"] = self.OnSubStart7227701, ["7227702"] = self.OnSubStart7227702}
end

function Quest72277:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7227701"] = self.OnSubFinish7227701, ["7227702"] = self.OnSubFinish7227702}
end

function Quest72277:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72277:Start()
    print("Start")
end

function Quest72277:OnDestroy()
    print("OnDestroy")
end

function Quest72277:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72277:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72277:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72277:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("InvokeOnInteraction param = " .. arg1)
        self:FinishQuestID(false, 7227701)
    elseif arg1 == 2 then
        print("InvokeOnInteraction param = " .. arg1)
    end
end

function Quest72277:OnSubStart7227701(arg1)
    print("OnSubStart7227701")
end

function Quest72277:OnSubFinish7227701(arg1)
    print("OnSubFinish7227701")
end

function Quest72277:OnSubStart7227702(arg1)
    print("OnSubStart7227702")
end

function Quest72277:OnSubFinish7227702(arg1)
    print("OnSubFinish7227702")
end

return Quest72277
