require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22012 = class("Quest22012", QuestActorProxy)
Quest22012.defaultAlias = "Quest22012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2201201"] = self.OnSubStart2201201,
        ["2201202"] = self.OnSubStart2201202,
        ["2201203"] = self.OnSubStart2201203,
        ["2201204"] = self.OnSubStart2201204
    }
end

function Quest22012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2201201"] = self.OnSubFinish2201201,
        ["2201202"] = self.OnSubFinish2201202,
        ["2201203"] = self.OnSubFinish2201203,
        ["2201204"] = self.OnSubFinish2201204
    }
end

function Quest22012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2201201"] = self.OnSubFailed2201201,
        ["2201202"] = self.OnSubFailed2201202,
        ["2201203"] = self.OnSubFailed2201203,
        ["2201204"] = self.OnSubFailed2201204
    }
end

function Quest22012:Start()
    print("Start")
end

function Quest22012:OnDestroy()
    print("OnDestroy")
end

function Quest22012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest22012:OnSubStart2201201(arg1)
    print("OnSubStart2201201")
    self:CreateQuestNpc(arg1, npcs.Npc3107Data.id, 1)
end

function Quest22012:OnSubFinish2201201(arg1)
    print("OnSubFinish2201201")
end

function Quest22012:OnSubFailed2201201(arg1)
    print("OnSubFailed2201201")
end

function Quest22012:OnSubStart2201202(arg1)
    print("OnSubStart2201202")
end

function Quest22012:OnSubFinish2201202(arg1)
    print("OnSubFinish2201202")
end

function Quest22012:OnSubFailed2201202(arg1)
    print("OnSubFailed2201202")
end

function Quest22012:OnSubStart2201203(arg1)
    print("OnSubStart2201203")
    self:CreateQuestNpc(arg1, npcs.Npc3106Data.id, 1)
end

function Quest22012:OnSubFinish2201203(arg1)
    print("OnSubFinish2201203")
end

function Quest22012:OnSubFailed2201203(arg1)
    print("OnSubFailed2201203")
end

function Quest22012:OnSubStart2201204(arg1)
    print("OnSubStart2201204")
end

function Quest22012:OnSubFinish2201204(arg1)
    print("OnSubFinish2201204")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc3107Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3106Data.alias, 3)
    end, nil, nil, "")
end

function Quest22012:OnSubFailed2201204(arg1)
    print("OnSubFailed2201204")
end

return Quest22012
