require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70539 = class("Quest70539", QuestActorProxy)
Quest70539.defaultAlias = "Quest70539"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest70539:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest70539:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7053903"] = self.OnSubStart7053903,
        ["7053901"] = self.OnSubStart7053901,
        ["7053902"] = self.OnSubStart7053902
    }
end

function Quest70539:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7053903"] = self.OnSubFinish7053903,
        ["7053901"] = self.OnSubFinish7053901,
        ["7053902"] = self.OnSubFinish7053902
    }
end

function Quest70539:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7053903"] = self.OnSubFailed7053903,
        ["7053901"] = self.OnSubFailed7053901,
        ["7053902"] = self.OnSubFailed7053902
    }
end

function Quest70539:Start()
    print("Start")
end

function Quest70539:OnDestroy()
    print("OnDestroy")
end

function Quest70539:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70539:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70539:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1431.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30531.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30520.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30531.alias, 1090)
    this:DestroyNpcTrigger("Q0N1431Trigger")
    this:DestroyNpcTrigger("Q0N30531Trigger")
end

function Quest70539:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest70539:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest70539:OnSubStart7053903(arg1)
    print("OnSubStart7053903")
    actorUtils.FinishQuestID(false, 7053903)
end

function Quest70539:OnSubFinish7053903(arg1)
    print("OnSubFinish7053903")
    this:QuestNarratorTask(datas.Narrator7053901, nil)
end

function Quest70539:OnSubFailed7053903(arg1)
    print("OnSubFailed7053903")
end

function Quest70539:OnSubStart7053901(arg1)
    print("OnSubStart7053901")
    this:NpcCreateWithNpcTrigger(npcs.Npc1431.id, 7053901, 0, 15)
    this:CreateQuestNpc(arg1, npcs.Npc30531.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30520.id, 0)
end

function Quest70539:OnSubFinish7053901(arg1)
    print("OnSubFinish7053901")
    this:SafeDestroyQuestNpc(npcs.Npc1431.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30531.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30520.alias, 3)
    this:ClearNarratorTask()
end

function Quest70539:OnSubFailed7053901(arg1)
    print("OnSubFailed7053901")
end

function Quest70539:OnSubStart7053902(arg1)
    print("OnSubStart7053902")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc30531.id, 0, 7053902, 15, true)
end

function Quest70539:OnSubFinish7053902(arg1)
    print("OnSubFinish7053902")
    this:SafeDestroyQuestNpc(npcs.Npc30531.alias, 1090)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(989, nil)
    end)
end

function Quest70539:OnSubFailed7053902(arg1)
    print("OnSubFailed7053902")
end

return Quest70539
