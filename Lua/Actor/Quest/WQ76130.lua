require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76130 = class("Quest76130", QuestActorProxy)
Quest76130.defaultAlias = "Quest76130"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76130:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76130:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7613001"] = self.OnSubStart7613001,
        ["7613002"] = self.OnSubStart7613002,
        ["7613003"] = self.OnSubStart7613003
    }
end

function Quest76130:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7613001"] = self.OnSubFinish7613001,
        ["7613002"] = self.OnSubFinish7613002,
        ["7613003"] = self.OnSubFinish7613003
    }
end

function Quest76130:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76130:Start()
    print("Start")
end

function Quest76130:OnDestroy()
    print("OnDestroy")
end

function Quest76130:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76130:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76130:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76130:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76130:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76130:OnSubStart7613001(arg1)
    print("OnSubStart7613001")
    this:CreateQuestNpc(arg1, npcs.Npc7164.id, 0, false, 0)
end

function Quest76130:OnSubFinish7613001(arg1)
    print("OnSubFinish7613001")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7164.alias)
end

function Quest76130:OnSubStart7613002(arg1)
    print("OnSubStart7613002")
    this:CreateQuestNpc(arg1, npcs.Npc7164.id, 0, false, 0)
end

function Quest76130:OnSubFinish7613002(arg1)
    print("OnSubFinish7613002")
end

function Quest76130:OnSubStart7613003(arg1)
    print("OnSubStart7613003")
end

function Quest76130:OnSubFinish7613003(arg1)
    print("OnSubFinish7613003")
    this:SafeDestroyQuestNpc(npcs.Npc7164.alias, 3)
end

return Quest76130
