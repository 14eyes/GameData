require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41402 = class("Quest41402", QuestActorProxy)
Quest41402.defaultAlias = "Quest41402"
local clientData
local mainID
local actorAlias
local subIDs

function Quest41402:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest41402:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4140201"] = self.OnSubStart4140201,
        ["4140202"] = self.OnSubStart4140202,
        ["4140203"] = self.OnSubStart4140203,
        ["4140204"] = self.OnSubStart4140204
    }
end

function Quest41402:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4140201"] = self.OnSubFinish4140201,
        ["4140202"] = self.OnSubFinish4140202,
        ["4140203"] = self.OnSubFinish4140203,
        ["4140204"] = self.OnSubFinish4140204
    }
end

function Quest41402:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4140201"] = self.OnSubFailed4140201,
        ["4140202"] = self.OnSubFailed4140202,
        ["4140203"] = self.OnSubFailed4140203,
        ["4140204"] = self.OnSubFailed4140204
    }
end

function Quest41402:Start()
    print("Start")
end

function Quest41402:OnDestroy()
    print("OnDestroy")
end

function Quest41402:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41402:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41402:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest41402:DeletNpc()
    print("DeletNpc")
    self:FinishQuestID(false, 4140204)
end

function Quest41402:OnSubStart4140201(arg1)
    print("OnSubStart4140201")
end

function Quest41402:OnSubFinish4140201(arg1)
    print("OnSubFinish4140201")
end

function Quest41402:OnSubFailed4140201(arg1)
    print("OnSubFailed4140201")
end

function Quest41402:OnSubStart4140202(arg1)
    print("OnSubStart4140202")
end

function Quest41402:OnSubFinish4140202(arg1)
    print("OnSubFinish4140202")
    self:ShowBlackScreen(0.3, 1.2, 0.3, self.DeletNpc, nil, nil, "")
end

function Quest41402:OnSubFailed4140202(arg1)
    print("OnSubFailed4140202")
end

function Quest41402:OnSubStart4140203(arg1)
    print("OnSubStart4140203")
end

function Quest41402:OnSubFinish4140203(arg1)
    print("OnSubFinish4140203")
    self:ShowBlackScreen(0.3, 1.2, 0.3, self.DeletNpc, nil, nil, "")
end

function Quest41402:OnSubFailed4140203(arg1)
    print("OnSubFailed4140203")
end

function Quest41402:OnSubStart4140204(arg1)
    print("OnSubStart4140204")
end

function Quest41402:OnSubFinish4140204(arg1)
    print("OnSubFinish4140204")
end

function Quest41402:OnSubFailed4140204(arg1)
    print("OnSubFailed4140204")
end

return Quest41402
