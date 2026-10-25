require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79061 = class("Quest79061", QuestActorProxy)
Quest79061.defaultAlias = "Quest79061"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest79061:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79061:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7906101"] = self.OnSubStart7906101,
        ["7906102"] = self.OnSubStart7906102,
        ["7906103"] = self.OnSubStart7906103,
        ["7906104"] = self.OnSubStart7906104
    }
end

function Quest79061:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7906101"] = self.OnSubFinish7906101,
        ["7906102"] = self.OnSubFinish7906102,
        ["7906103"] = self.OnSubFinish7906103,
        ["7906104"] = self.OnSubFinish7906104
    }
end

function Quest79061:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79061:Start()
    print("Start")
end

function Quest79061:OnDestroy()
    print("OnDestroy")
end

function Quest79061:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79061:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79061:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79061:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest79061:OnSubStart7906101(arg1)
    print("OnSubStart7906101")
    this:CreateQuestNpc(arg1, npcs.Npc21611Data.id, 0, false, 0)
end

function Quest79061:OnSubFinish7906101(arg1)
    print("OnSubFinish7906101")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21448Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21450Data.alias)
end

function Quest79061:OnSubStart7906102(arg1)
    print("OnSubStart7906102")
end

function Quest79061:OnSubFinish7906102(arg1)
    print("OnSubFinish7906102")
    this:SafeDestroyQuestNpc(npcs.Npc21611Data.alias, 100)
end

function Quest79061:OnSubStart7906103(arg1)
    print("OnSubStart7906103")
    this:CreateQuestNpc(arg1, npcs.Npc21651Data.id, 0, false, 0)
end

function Quest79061:OnSubFinish7906103(arg1)
    print("OnSubFinish7906103")
    this:SafeDestroyQuestNpc(npcs.Npc21651Data.alias, 100)
end

function Quest79061:OnSubStart7906104(arg1)
    print("OnSubStart7906104")
    this:CreateQuestNpc(arg1, npcs.Npc21448Data.id, 0, false, 0)
end

function Quest79061:OnSubFinish7906104(arg1)
    print("OnSubFinish7906104")
    this:SafeDestroyQuestNpc(npcs.Npc21448Data.alias, 100)
end

return Quest79061
