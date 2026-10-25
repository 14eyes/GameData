require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73307 = class("Quest73307", QuestActorProxy)
Quest73307.defaultAlias = "Quest73307"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73307:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73307:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7330701"] = self.OnSubStart7330701,
        ["7330705"] = self.OnSubStart7330705,
        ["7330706"] = self.OnSubStart7330706,
        ["7330702"] = self.OnSubStart7330702,
        ["7330703"] = self.OnSubStart7330703,
        ["7330704"] = self.OnSubStart7330704
    }
end

function Quest73307:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7330701"] = self.OnSubFinish7330701,
        ["7330705"] = self.OnSubFinish7330705,
        ["7330706"] = self.OnSubFinish7330706,
        ["7330702"] = self.OnSubFinish7330702,
        ["7330703"] = self.OnSubFinish7330703,
        ["7330704"] = self.OnSubFinish7330704
    }
end

function Quest73307:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73307:Start()
    print("Start")
end

function Quest73307:OnDestroy()
    print("OnDestroy")
end

function Quest73307:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73307:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73307:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73307:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest73307:OnSubStart7330701(arg1)
    print("OnSubStart7330701")
    actorUtils.FinishQuestID(false, 7330701)
end

function Quest73307:OnSubFinish7330701(arg1)
    print("OnSubFinish7330701")
end

function Quest73307:OnSubStart7330705(arg1)
    print("OnSubStart7330705")
end

function Quest73307:OnSubFinish7330705(arg1)
    print("OnSubFinish7330705")
end

function Quest73307:OnSubStart7330706(arg1)
    print("OnSubStart7330706")
end

function Quest73307:OnSubFinish7330706(arg1)
    print("OnSubFinish7330706")
end

function Quest73307:OnSubStart7330702(arg1)
    print("OnSubStart7330702")
    this:CreateQuestNpc(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73307:OnSubFinish7330702(arg1)
    print("OnSubFinish7330702")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4284Data.alias)
end

function Quest73307:OnSubStart7330703(arg1)
    print("OnSubStart7330703")
end

function Quest73307:OnSubFinish7330703(arg1)
    print("OnSubFinish7330703")
end

function Quest73307:OnSubStart7330704(arg1)
    print("OnSubStart7330704")
    this:CreateQuestNpc(arg1, npcs.Npc4284Data.id, 1)
end

function Quest73307:OnSubFinish7330704(arg1)
    print("OnSubFinish7330704")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4284Data.alias)
end

return Quest73307
