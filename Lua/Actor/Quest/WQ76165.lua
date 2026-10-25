require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76165 = class("Quest76165", QuestActorProxy)
Quest76165.defaultAlias = "Quest76165"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest76165:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest76165:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7616503"] = self.OnSubStart7616503,
        ["7616501"] = self.OnSubStart7616501,
        ["7616502"] = self.OnSubStart7616502
    }
end

function Quest76165:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7616503"] = self.OnSubFinish7616503,
        ["7616501"] = self.OnSubFinish7616501,
        ["7616502"] = self.OnSubFinish7616502
    }
end

function Quest76165:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76165:Start()
    print("Start")
end

function Quest76165:OnDestroy()
    print("OnDestroy")
end

function Quest76165:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76165:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76165:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76165:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76165:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76165:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76165:OnSubStart7616503(arg1)
    print("OnSubStart7616503")
end

function Quest76165:OnSubFinish7616503(arg1)
    print("OnSubFinish7616503")
end

function Quest76165:OnSubStart7616501(arg1)
    print("OnSubStart7616501")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7616501, 0, 20, 1.2, npcs.Paimon.id)
end

function Quest76165:OnSubFinish7616501(arg1)
    print("OnSubFinish7616501")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
end

function Quest76165:OnSubStart7616502(arg1)
    print("OnSubStart7616502")
    this:CreateQuestNpc(arg1, npcs.Npc7647.id, 0, false, 0)
end

function Quest76165:OnSubFinish7616502(arg1)
    print("OnSubFinish7616502")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7647.alias)
end

return Quest76165
