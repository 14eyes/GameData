require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73712 = class("Quest73712", QuestActorProxy)
Quest73712.defaultAlias = "Quest73712"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest73712:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest73712:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7371201"] = self.OnSubStart7371201}
end

function Quest73712:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7371201"] = self.OnSubFinish7371201}
end

function Quest73712:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73712:Start()
    print("Start")
end

function Quest73712:OnDestroy()
    print("OnDestroy")
end

function Quest73712:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73712:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73712:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7371201N30969Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30969.alias, 3)
    this:RecycleAllRes()
end

function Quest73712:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest73712:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest73712:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest73712:OnSubStart7371201(arg1)
    print("OnSubStart7371201")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7371201, 0, 10, 1, npcs.Npc30969.id)
    if this:GetQuestVar(73712, 0) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7371203, nil)
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest73712:OnSubFinish7371201(arg1)
    print("OnSubFinish7371201")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc30969.alias)
end

return Quest73712
