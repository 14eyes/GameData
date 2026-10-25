require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77002 = class("Quest77002", QuestActorProxy)
Quest77002.defaultAlias = "Quest77002"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest77002:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest77002:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7700201"] = self.OnSubStart7700201, ["7700202"] = self.OnSubStart7700202}
end

function Quest77002:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7700201"] = self.OnSubFinish7700201, ["7700202"] = self.OnSubFinish7700202}
end

function Quest77002:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77002:Start()
    print("Start")
end

function Quest77002:OnDestroy()
    print("OnDestroy")
end

function Quest77002:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77002:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77002:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77002:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest77002:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77002:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77002:OnSubStart7700201(arg1)
    print("OnSubStart7700201")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc17094.id, 0, 7700201, 20, true)
end

function Quest77002:OnSubFinish7700201(arg1)
    print("OnSubFinish7700201")
    this:NpcDestroyImmediately(1159, npcs.Npc17094.alias)
end

function Quest77002:OnSubStart7700202(arg1)
    print("OnSubStart7700202")
    actorUtils.FinishQuestWithParam({false}, {7700202})
end

function Quest77002:OnSubFinish7700202(arg1)
    print("OnSubFinish7700202")
    this:LevelReadySafeCall(function(arg1)
        actorUtils.ShowContext("OdetteQuestEntry")
    end)
end

return Quest77002
