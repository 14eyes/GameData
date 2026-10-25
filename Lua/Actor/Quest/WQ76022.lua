require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76022 = class("Quest76022", QuestActorProxy)
Quest76022.defaultAlias = "Quest76022"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76022:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7602201"] = self.OnSubStart7602201,
        ["7602204"] = self.OnSubStart7602204,
        ["7602202"] = self.OnSubStart7602202,
        ["7602203"] = self.OnSubStart7602203
    }
end

function Quest76022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7602201"] = self.OnSubFinish7602201,
        ["7602204"] = self.OnSubFinish7602204,
        ["7602202"] = self.OnSubFinish7602202,
        ["7602203"] = self.OnSubFinish7602203
    }
end

function Quest76022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76022:Start()
    print("Start")
end

function Quest76022:OnDestroy()
    print("OnDestroy")
end

function Quest76022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76022:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7602201Trigger")
end

function Quest76022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76022:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76022:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76022:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76022:OnSubStart7602201(arg1)
    print("OnSubStart7602201")
    this:CreateQuestNpc(arg1, npcs.Npc21935.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21935.alias, 76022):DoFreeStyle(1070, true, nil, true, true, false, false)
    this:NpcCreateWithNpcTrigger(npcs.Npc21938.id, 0, 15, 7602201)
end

function Quest76022:OnSubFinish7602201(arg1)
    print("OnSubFinish7602201")
    this:ShowBlackScreenWithDialogText(1, 2, 1, nil, nil, nil, 0, false, true)
end

function Quest76022:OnSubStart7602204(arg1)
    print("OnSubStart7602204")
    this:NpcCreateWithNpcTrigger(npcs.Npc21938.id, 0, 10, 7602204)
    this:CreateQuestNpc(arg1, npcs.Npc21935.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21935.alias, 76022):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest76022:OnSubFinish7602204(arg1)
    print("OnSubFinish7602204")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21938.alias)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7602204, nil)
    end)
end

function Quest76022:OnSubStart7602202(arg1)
    print("OnSubStart7602202")
    this:GetQuestNpcActor(npcs.Npc21935.alias, 76022):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest76022:OnSubFinish7602202(arg1)
    print("OnSubFinish7602202")
    this:QuestNarratorTask(datas.NarratorWithId_7602202, nil)
end

function Quest76022:OnSubStart7602203(arg1)
    print("OnSubStart7602203")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7602203, 0, 30, 0, npcs.Npc21935.id)
    this:GetQuestNpcActor(npcs.Npc21935.alias, 76022):DoFreeStyle(1171, true, nil, true, true, false, false)
end

function Quest76022:OnSubFinish7602203(arg1)
    print("OnSubFinish7602203")
    this:SafeDestroyQuestNpc(npcs.Npc21935.alias, 3)
    this:ClearNarratorTask()
end

return Quest76022
