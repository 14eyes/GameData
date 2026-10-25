require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73711 = class("Quest73711", QuestActorProxy)
Quest73711.defaultAlias = "Quest73711"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest73711:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest73711:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7371101"] = self.OnSubStart7371101}
end

function Quest73711:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7371101"] = self.OnSubFinish7371101}
end

function Quest73711:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73711:Start()
    print("Start")
end

function Quest73711:OnDestroy()
    print("OnDestroy")
end

function Quest73711:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73711:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73711:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7371101N30969Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30969.alias, 3)
    this:RecycleAllRes()
end

function Quest73711:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest73711:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest73711:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest73711:OnSubStart7371101(arg1)
    print("OnSubStart7371101")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7371101, 0, 12, 1, npcs.Npc30969.id)
    if this:GetQuestVar(73711, 0) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7371101, nil)
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest73711:OnSubFinish7371101(arg1)
    print("OnSubFinish7371101")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30969.alias)
end

return Quest73711
