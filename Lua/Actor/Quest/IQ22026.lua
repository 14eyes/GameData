require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22026 = class("Quest22026", QuestActorProxy)
Quest22026.defaultAlias = "Quest22026"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2202601"] = self.OnSubStart2202601,
        ["2202602"] = self.OnSubStart2202602,
        ["2202603"] = self.OnSubStart2202603,
        ["2202604"] = self.OnSubStart2202604
    }
end

function Quest22026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2202601"] = self.OnSubFinish2202601,
        ["2202602"] = self.OnSubFinish2202602,
        ["2202603"] = self.OnSubFinish2202603,
        ["2202604"] = self.OnSubFinish2202604
    }
end

function Quest22026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2202601"] = self.OnSubFailed2202601,
        ["2202602"] = self.OnSubFailed2202602,
        ["2202603"] = self.OnSubFailed2202603,
        ["2202604"] = self.OnSubFailed2202604
    }
end

function Quest22026:Start()
    print("Start")
end

function Quest22026:OnDestroy()
    print("OnDestroy")
end

function Quest22026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22026:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20269Data.alias, 3)
end

function Quest22026:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22026:OnSubStart2202601(arg1)
    print("OnSubStart2202601")
    self:CreateQuestNpc(arg1, npcs.Npc20269Data.id, 1)
end

function Quest22026:OnSubFinish2202601(arg1)
    print("OnSubFinish2202601")
end

function Quest22026:OnSubFailed2202601(arg1)
    print("OnSubFailed2202601")
end

function Quest22026:OnSubStart2202602(arg1)
    print("OnSubStart2202602")
end

function Quest22026:OnSubFinish2202602(arg1)
    print("OnSubFinish2202602")
end

function Quest22026:OnSubFailed2202602(arg1)
    print("OnSubFailed2202602")
end

function Quest22026:OnSubStart2202603(arg1)
    print("OnSubStart2202603")
end

function Quest22026:OnSubFinish2202603(arg1)
    print("OnSubFinish2202603")
end

function Quest22026:OnSubFailed2202603(arg1)
    print("OnSubFailed2202603")
end

function Quest22026:OnSubStart2202604(arg1)
    print("OnSubStart2202604")
end

function Quest22026:OnSubFinish2202604(arg1)
    print("OnSubFinish2202604")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20269Data.alias)
end

function Quest22026:OnSubFailed2202604(arg1)
    print("OnSubFailed2202604")
end

return Quest22026
