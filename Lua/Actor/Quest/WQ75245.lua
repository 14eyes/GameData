require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75245 = class("Quest75245", QuestActorProxy)
Quest75245.defaultAlias = "Quest75245"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75245:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75245:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7524501"] = self.OnSubStart7524501,
        ["7524502"] = self.OnSubStart7524502,
        ["7524503"] = self.OnSubStart7524503
    }
end

function Quest75245:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7524501"] = self.OnSubFinish7524501,
        ["7524502"] = self.OnSubFinish7524502,
        ["7524503"] = self.OnSubFinish7524503
    }
end

function Quest75245:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75245:Start()
    print("Start")
end

function Quest75245:OnDestroy()
    print("OnDestroy")
end

function Quest75245:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75245:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75245:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75245:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75245:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75245:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest75245:OnSubStart7524501(arg1)
    print("OnSubStart7524501")
    this:CreateQuestNpc(arg1, npcs.Npc21965.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21966.id, 0, false, 0)
end

function Quest75245:OnSubFinish7524501(arg1)
    print("OnSubFinish7524501")
end

function Quest75245:OnSubStart7524502(arg1)
    print("OnSubStart7524502")
    this:NpcCreateWithNpcTrigger(npcs.Npc21966.id, 0, 55, 7524502)
    this:NpcCreateWithNpcTrigger(npcs.Npc21965.id, 0, 55, 7524502)
end

function Quest75245:OnSubFinish7524502(arg1)
    print("OnSubFinish7524502")
    this:SafeDestroyQuestNpc(npcs.Npc21966.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21965.alias, 3)
end

function Quest75245:OnSubStart7524503(arg1)
    print("OnSubStart7524503")
end

function Quest75245:OnSubFinish7524503(arg1)
    print("OnSubFinish7524503")
    this:NpcDestroyWithDither(3, npcs.Npc21965.alias)
    this:NpcDestroyWithDither(3, npcs.Npc21966.alias)
end

return Quest75245
