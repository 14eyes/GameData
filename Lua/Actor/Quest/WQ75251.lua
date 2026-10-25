require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75251 = class("Quest75251", QuestActorProxy)
Quest75251.defaultAlias = "Quest75251"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75251:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75251:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7525103"] = self.OnSubStart7525103,
        ["7525101"] = self.OnSubStart7525101,
        ["7525102"] = self.OnSubStart7525102
    }
end

function Quest75251:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7525103"] = self.OnSubFinish7525103,
        ["7525101"] = self.OnSubFinish7525101,
        ["7525102"] = self.OnSubFinish7525102
    }
end

function Quest75251:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75251:Start()
    print("Start")
end

function Quest75251:OnDestroy()
    print("OnDestroy")
end

function Quest75251:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75251:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75251:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75251:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75251:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75251:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75251:OnSubStart7525103(arg1)
    print("OnSubStart7525103")
end

function Quest75251:OnSubFinish7525103(arg1)
    print("OnSubFinish7525103")
end

function Quest75251:OnSubStart7525101(arg1)
    print("OnSubStart7525101")
    this:NpcCreateWithNpcTrigger(npcs.Npc21974.id, 0, 8, 7525101)
end

function Quest75251:OnSubFinish7525101(arg1)
    print("OnSubFinish7525101")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21974.alias)
end

function Quest75251:OnSubStart7525102(arg1)
    print("OnSubStart7525102")
    this:NpcCreateWithNpcTrigger(npcs.Npc21974.id, 0, 8, 7525102)
end

function Quest75251:OnSubFinish7525102(arg1)
    print("OnSubFinish7525102")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21974.alias)
end

return Quest75251
