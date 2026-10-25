require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75181 = class("Quest75181", QuestActorProxy)
Quest75181.defaultAlias = "Quest75181"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75181:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75181:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7518102"] = self.OnSubStart7518102,
        ["7518103"] = self.OnSubStart7518103,
        ["7518101"] = self.OnSubStart7518101
    }
end

function Quest75181:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7518102"] = self.OnSubFinish7518102,
        ["7518103"] = self.OnSubFinish7518103,
        ["7518101"] = self.OnSubFinish7518101
    }
end

function Quest75181:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75181:Start()
    print("Start")
end

function Quest75181:OnDestroy()
    print("OnDestroy")
end

function Quest75181:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75181:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75181:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75181:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75181:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest75181:OnSubStart7518102(arg1)
    print("OnSubStart7518102")
    actorUtils.FinishQuestID(false, 7518102)
end

function Quest75181:OnSubFinish7518102(arg1)
    print("OnSubFinish7518102")
end

function Quest75181:OnSubStart7518103(arg1)
    print("OnSubStart7518103")
end

function Quest75181:OnSubFinish7518103(arg1)
    print("OnSubFinish7518103")
end

function Quest75181:OnSubStart7518101(arg1)
    print("OnSubStart7518101")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21809.id, 0, 7518101, 10, true)
end

function Quest75181:OnSubFinish7518101(arg1)
    print("OnSubFinish7518101")
    this:SafeDestroyQuestNpc(npcs.Npc21809.alias, 101)
    this:SetNavigationByMainId(75175, true)
end

return Quest75181
