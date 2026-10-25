require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70502 = class("Quest70502", QuestActorProxy)
Quest70502.defaultAlias = "Quest70502"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70502:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70502:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7050201"] = self.OnSubStart7050201,
        ["7050202"] = self.OnSubStart7050202,
        ["7050203"] = self.OnSubStart7050203,
        ["7050204"] = self.OnSubStart7050204,
        ["7050205"] = self.OnSubStart7050205,
        ["7050206"] = self.OnSubStart7050206,
        ["7050207"] = self.OnSubStart7050207
    }
end

function Quest70502:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7050201"] = self.OnSubFinish7050201,
        ["7050202"] = self.OnSubFinish7050202,
        ["7050203"] = self.OnSubFinish7050203,
        ["7050204"] = self.OnSubFinish7050204,
        ["7050205"] = self.OnSubFinish7050205,
        ["7050206"] = self.OnSubFinish7050206,
        ["7050207"] = self.OnSubFinish7050207
    }
end

function Quest70502:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70502:Start()
    print("Start")
end

function Quest70502:OnDestroy()
    print("OnDestroy")
end

function Quest70502:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70502:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70502:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30112Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30114Data.alias, 1068)
end

function Quest70502:OnSubStart7050201(arg1)
    print("OnSubStart7050201")
    self:CreateQuestNpc(arg1, npcs.Npc30112Data.id, 1)
end

function Quest70502:OnSubFinish7050201(arg1)
    print("OnSubFinish7050201")
end

function Quest70502:OnSubStart7050202(arg1)
    print("OnSubStart7050202")
    self:CreateQuestNpc(arg1, npcs.Npc30114Data.id, 1)
end

function Quest70502:OnSubFinish7050202(arg1)
    print("OnSubFinish7050202")
    self:LevelLoadFinishSafeCall(function(arg1)
        arg1:RequestInteraction(npcs.Npc30114Data.alias)
    end)
end

function Quest70502:OnSubStart7050203(arg1)
    print("OnSubStart7050203")
    self:CreateQuestNpc(arg1, npcs.Npc30114Data.id, 1)
end

function Quest70502:OnSubFinish7050203(arg1)
    print("OnSubFinish7050203")
end

function Quest70502:OnSubStart7050204(arg1)
    print("OnSubStart7050204")
    self:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("ActivityBartenderMakePage", 7050204)
    end)
end

function Quest70502:OnSubFinish7050204(arg1)
    print("OnSubFinish7050204")
end

function Quest70502:OnSubStart7050205(arg1)
    print("OnSubStart7050205")
    self:RequestInteraction(npcs.Npc30114Data.alias)
end

function Quest70502:OnSubFinish7050205(arg1)
    print("OnSubFinish7050205")
    self:SafeDestroyQuestNpc(npcs.Npc30112Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30114Data.alias, 1068)
end

function Quest70502:OnSubStart7050206(arg1)
    print("OnSubStart7050206")
end

function Quest70502:OnSubFinish7050206(arg1)
    print("OnSubFinish7050206")
end

function Quest70502:OnSubStart7050207(arg1)
    print("OnSubStart7050207")
end

function Quest70502:OnSubFinish7050207(arg1)
    print("OnSubFinish7050207")
end

return Quest70502
