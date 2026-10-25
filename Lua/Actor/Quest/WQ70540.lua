require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70540 = class("Quest70540", QuestActorProxy)
Quest70540.defaultAlias = "Quest70540"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest70540:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest70540:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7054002"] = self.OnSubStart7054002, ["7054001"] = self.OnSubStart7054001}
end

function Quest70540:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7054002"] = self.OnSubFinish7054002, ["7054001"] = self.OnSubFinish7054001}
end

function Quest70540:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7054002"] = self.OnSubFailed7054002, ["7054001"] = self.OnSubFailed7054001}
end

function Quest70540:Start()
    print("Start")
end

function Quest70540:OnDestroy()
    print("OnDestroy")
end

function Quest70540:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70540:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70540:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30531.alias, 1090)
    this:DestroyNpcTrigger("Q7054001N30531Trigger")
end

function Quest70540:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest70540:OnSubStart7054002(arg1)
    print("OnSubStart7054002")
end

function Quest70540:OnSubFinish7054002(arg1)
    print("OnSubFinish7054002")
end

function Quest70540:OnSubFailed7054002(arg1)
    print("OnSubFailed7054002")
end

function Quest70540:OnSubStart7054001(arg1)
    print("OnSubStart7054001")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc30531.id, 0, 7054001, 5, false)
end

function Quest70540:OnSubFinish7054001(arg1)
    print("OnSubFinish7054001")
    this:SafeDestroyQuestNpc(npcs.Npc30531.alias, 1090)
end

function Quest70540:OnSubFailed7054001(arg1)
    print("OnSubFailed7054001")
end

return Quest70540
