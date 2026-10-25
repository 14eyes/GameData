require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77009 = class("Quest77009", QuestActorProxy)
Quest77009.defaultAlias = "Quest77009"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest77009:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest77009:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7700901"] = self.OnSubStart7700901, ["7700902"] = self.OnSubStart7700902}
end

function Quest77009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7700901"] = self.OnSubFinish7700901, ["7700902"] = self.OnSubFinish7700902}
end

function Quest77009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77009:Start()
    print("Start")
end

function Quest77009:OnDestroy()
    print("OnDestroy")
end

function Quest77009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77009:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77009:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77009:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77009:OnSubStart7700901(arg1)
    print("OnSubStart7700901")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7700901, 15, true)
end

function Quest77009:OnSubFinish7700901(arg1)
    print("OnSubFinish7700901")
    this:NpcDestroyImmediately(1159, npcs.Npc17094.alias)
end

function Quest77009:OnSubStart7700902(arg1)
    print("OnSubStart7700902")
    actorUtils.FinishQuestWithParam({false}, {7700902})
end

function Quest77009:OnSubFinish7700902(arg1)
    print("OnSubFinish7700902")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77009
