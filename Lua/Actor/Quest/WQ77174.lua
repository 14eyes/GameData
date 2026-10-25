require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77174 = class("Quest77174", QuestActorProxy)
Quest77174.defaultAlias = "Quest77174"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest77174:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest77174:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7717401"] = self.OnSubStart7717401,
        ["7717402"] = self.OnSubStart7717402,
        ["7717404"] = self.OnSubStart7717404,
        ["7717403"] = self.OnSubStart7717403
    }
end

function Quest77174:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7717401"] = self.OnSubFinish7717401,
        ["7717402"] = self.OnSubFinish7717402,
        ["7717404"] = self.OnSubFinish7717404,
        ["7717403"] = self.OnSubFinish7717403
    }
end

function Quest77174:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77174:Start()
    print("Start")
end

function Quest77174:OnDestroy()
    print("OnDestroy")
end

function Quest77174:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77174:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77174:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77174:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77174:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77174:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77174:OnSubStart7717401(arg1)
    print("OnSubStart7717401")
end

function Quest77174:OnSubFinish7717401(arg1)
    print("OnSubFinish7717401")
end

function Quest77174:OnSubStart7717402(arg1)
    print("OnSubStart7717402")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7717402, 0, 30, 2, npcs.Npc17333_1.id)
end

function Quest77174:OnSubFinish7717402(arg1)
    print("OnSubFinish7717402")
    this:NpcDestroyImmediately(1159, npcs.Npc17333_1.alias)
end

function Quest77174:OnSubStart7717404(arg1)
    print("OnSubStart7717404")
end

function Quest77174:OnSubFinish7717404(arg1)
    print("OnSubFinish7717404")
end

function Quest77174:OnSubStart7717403(arg1)
    print("OnSubStart7717403")
end

function Quest77174:OnSubFinish7717403(arg1)
    print("OnSubFinish7717403")
end

return Quest77174
