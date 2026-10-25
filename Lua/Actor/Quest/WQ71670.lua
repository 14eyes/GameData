require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71670 = class("Quest71670", QuestActorProxy)
Quest71670.defaultAlias = "Quest71670"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest71670:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest71670:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7167001"] = self.OnSubStart7167001,
        ["7167002"] = self.OnSubStart7167002,
        ["7167003"] = self.OnSubStart7167003
    }
end

function Quest71670:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7167001"] = self.OnSubFinish7167001,
        ["7167002"] = self.OnSubFinish7167002,
        ["7167003"] = self.OnSubFinish7167003
    }
end

function Quest71670:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71670:Start()
    print("Start")
end

function Quest71670:OnDestroy()
    print("OnDestroy")
end

function Quest71670:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71670:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71670:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71670:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest71670:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest71670:OnSubStart7167001(arg1)
    print("OnSubStart7167001")
    actorUtils.FinishQuestID(false, 7167001)
end

function Quest71670:OnSubFinish7167001(arg1)
    print("OnSubFinish7167001")
    this:ActionSafeCall(function(arg1)
        if this:GetQuestGlobalVar(103106) == 1 then
            this:QuestNarratorTask(datas.NarratorWithId_7167001, nil)
        end
    end)
end

function Quest71670:OnSubStart7167002(arg1)
    print("OnSubStart7167002")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7167002, 0, 50, 2, npcs.Npc15331.id)
end

function Quest71670:OnSubFinish7167002(arg1)
    print("OnSubFinish7167002")
    this:SafeDestroyQuestNpc(npcs.Npc15331.alias, 3)
    this:ClearNarratorTask()
end

function Quest71670:OnSubStart7167003(arg1)
    print("OnSubStart7167003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7167003, 0, 5, 2, npcs.Npc15517.id)
end

function Quest71670:OnSubFinish7167003(arg1)
    print("OnSubFinish7167003")
    this:SafeDestroyQuestNpc(npcs.Npc15517.alias, 3)
end

return Quest71670
