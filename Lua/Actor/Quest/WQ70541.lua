require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70541 = class("Quest70541", QuestActorProxy)
Quest70541.defaultAlias = "Quest70541"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70541:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70541:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7054101"] = self.OnSubStart7054101}
end

function Quest70541:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7054101"] = self.OnSubFinish7054101}
end

function Quest70541:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7054101"] = self.OnSubFailed7054101}
end

function Quest70541:Start()
    print("Start")
end

function Quest70541:OnDestroy()
    print("OnDestroy")
end

function Quest70541:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70541:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70541:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30531.alias, 1090)
    this:DestroyNpcTrigger("Q7054101N30531Trigger")
end

function Quest70541:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest70541:OnSubStart7054101(arg1)
    print("OnSubStart7054101")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc30531.id, 0, 7054101, 15, true)
    end)
end

function Quest70541:OnSubFinish7054101(arg1)
    print("OnSubFinish7054101")
    this:SafeDestroyQuestNpc(npcs.Npc30531.alias, 1090)
end

function Quest70541:OnSubFailed7054101(arg1)
    print("OnSubFailed7054101")
end

return Quest70541
