require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77235 = class("Quest77235", QuestActorProxy)
Quest77235.defaultAlias = "Quest77235"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest77235:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest77235:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7723501"] = self.OnSubStart7723501, ["7723502"] = self.OnSubStart7723502}
end

function Quest77235:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7723501"] = self.OnSubFinish7723501, ["7723502"] = self.OnSubFinish7723502}
end

function Quest77235:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77235:Start()
    print("Start")
end

function Quest77235:OnDestroy()
    print("OnDestroy")
end

function Quest77235:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77235:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77235:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77235:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77235:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77235:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77235:OnSubStart7723501(arg1)
    print("OnSubStart7723501")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7723501, 30, true)
end

function Quest77235:OnSubFinish7723501(arg1)
    print("OnSubFinish7723501")
    this:NpcDestroyImmediately(1159, npcs.Npc17094.alias)
end

function Quest77235:OnSubStart7723502(arg1)
    print("OnSubStart7723502")
    actorUtils.FinishQuestWithParam({false}, {7723502})
end

function Quest77235:OnSubFinish7723502(arg1)
    print("OnSubFinish7723502")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77235
