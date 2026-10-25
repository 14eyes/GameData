require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24017 = class("Quest24017", QuestActorProxy)
Quest24017.defaultAlias = "Quest24017"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24017:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401701"] = self.OnSubStart2401701,
        ["2401702"] = self.OnSubStart2401702,
        ["2401705"] = self.OnSubStart2401705,
        ["2401703"] = self.OnSubStart2401703,
        ["2401704"] = self.OnSubStart2401704,
        ["2401706"] = self.OnSubStart2401706
    }
end

function Quest24017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401701"] = self.OnSubFinish2401701,
        ["2401702"] = self.OnSubFinish2401702,
        ["2401705"] = self.OnSubFinish2401705,
        ["2401703"] = self.OnSubFinish2401703,
        ["2401704"] = self.OnSubFinish2401704,
        ["2401706"] = self.OnSubFinish2401706
    }
end

function Quest24017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24017:Start()
    print("Start")
end

function Quest24017:OnDestroy()
    print("OnDestroy")
end

function Quest24017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24017:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5142Data.alias, 3)
end

function Quest24017:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24017:OnSubStart2401701(arg1)
    print("OnSubStart2401701")
    this:CreateQuestNpc(arg1, npcs.Npc5142Data.id, 0)
end

function Quest24017:OnSubFinish2401701(arg1)
    print("OnSubFinish2401701")
end

function Quest24017:OnSubStart2401702(arg1)
    print("OnSubStart2401702")
end

function Quest24017:OnSubFinish2401702(arg1)
    print("OnSubFinish2401702")
end

function Quest24017:OnSubStart2401705(arg1)
    print("OnSubStart2401705")
end

function Quest24017:OnSubFinish2401705(arg1)
    print("OnSubFinish2401705")
end

function Quest24017:OnSubStart2401703(arg1)
    print("OnSubStart2401703")
end

function Quest24017:OnSubFinish2401703(arg1)
    print("OnSubFinish2401703")
end

function Quest24017:OnSubStart2401704(arg1)
    print("OnSubStart2401704")
end

function Quest24017:OnSubFinish2401704(arg1)
    print("OnSubFinish2401704")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5142Data.alias)
end

function Quest24017:OnSubStart2401706(arg1)
    print("OnSubStart2401706")
end

function Quest24017:OnSubFinish2401706(arg1)
    print("OnSubFinish2401706")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5142Data.alias)
end

return Quest24017
