require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75675 = class("Quest75675", QuestActorProxy)
Quest75675.defaultAlias = "Quest75675"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75675:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75675:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7567501"] = self.OnSubStart7567501}
end

function Quest75675:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7567501"] = self.OnSubFinish7567501}
end

function Quest75675:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75675:Start()
    print("Start")
end

function Quest75675:OnDestroy()
    print("OnDestroy")
end

function Quest75675:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75675:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75675:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7567501N31091Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc31091.alias, 3)
    this:RecycleAllRes()
end

function Quest75675:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest75675:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75675:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75675:OnSubStart7567501(arg1)
    print("OnSubStart7567501")
    this:NpcCreateWithNpcTrigger(npcs.Npc31091.id, 0, 30, 7567501)
    if this:GetQuestVar(7567501, 0) == 0 then
        this:LevelLoadFinishSafeCall(function(arg1)
            this:ActionSafeCall(function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId_7567501, nil)
                this:SetQuestVarByMainId(0, 1)
            end)
        end)
    end
end

function Quest75675:OnSubFinish7567501(arg1)
    print("OnSubFinish7567501")
    this:NpcDestroyImmediately(3, npcs.Npc31091.alias)
    this:ClearNarratorTask()
end

return Quest75675
