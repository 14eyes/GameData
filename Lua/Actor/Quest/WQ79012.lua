require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79012 = class("Quest79012", QuestActorProxy)
Quest79012.defaultAlias = "Quest79012"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7901201"] = self.OnSubStart7901201,
        ["7901202"] = self.OnSubStart7901202,
        ["7901203"] = self.OnSubStart7901203
    }
end

function Quest79012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7901201"] = self.OnSubFinish7901201,
        ["7901202"] = self.OnSubFinish7901202,
        ["7901203"] = self.OnSubFinish7901203
    }
end

function Quest79012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79012:Start()
    print("Start")
end

function Quest79012:OnDestroy()
    print("OnDestroy")
end

function Quest79012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79012:OnSubStart7901201(arg1)
    print("OnSubStart7901201")
end

function Quest79012:OnSubFinish7901201(arg1)
    print("OnSubFinish7901201")
end

function Quest79012:OnSubStart7901202(arg1)
    print("OnSubStart7901202")
end

function Quest79012:OnSubFinish7901202(arg1)
    print("OnSubFinish7901202")
end

function Quest79012:OnSubStart7901203(arg1)
    print("OnSubStart7901203")
end

function Quest79012:OnSubFinish7901203(arg1)
    print("OnSubFinish7901203")
    globalActor:PlayerEnterDungeonPoint(9, 1146, 7901203, 5)
end

return Quest79012
