require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73355 = class("Quest73355", QuestActorProxy)
Quest73355.defaultAlias = "Quest73355"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest73355:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest73355:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7335501"] = self.OnSubStart7335501, ["7335502"] = self.OnSubStart7335502}
end

function Quest73355:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7335501"] = self.OnSubFinish7335501, ["7335502"] = self.OnSubFinish7335502}
end

function Quest73355:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73355:Start()
    print("Start")
end

function Quest73355:OnDestroy()
    print("OnDestroy")
end

function Quest73355:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73355:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73355:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73355:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest73355:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest73355:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest73355:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest73355:OnSubStart7335501(arg1)
    print("OnSubStart7335501")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc4498_1.id, 0, 7335501, 30, true)
end

function Quest73355:OnSubFinish7335501(arg1)
    print("OnSubFinish7335501")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4498_1.alias)
end

function Quest73355:OnSubStart7335502(arg1)
    print("OnSubStart7335502")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7335502, 0, 15, 1, npcs.Npc4496.id)
end

function Quest73355:OnSubFinish7335502(arg1)
    print("OnSubFinish7335502")
    this:SafeDestroyQuestNpc(npcs.Npc4496.alias, 3)
end

return Quest73355
