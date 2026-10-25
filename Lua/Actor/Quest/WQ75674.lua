require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75674 = class("Quest75674", QuestActorProxy)
Quest75674.defaultAlias = "Quest75674"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75674:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75674:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7567401"] = self.OnSubStart7567401}
end

function Quest75674:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7567401"] = self.OnSubFinish7567401}
end

function Quest75674:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75674:Start()
    print("Start")
end

function Quest75674:OnDestroy()
    print("OnDestroy")
end

function Quest75674:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75674:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75674:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:DestroyNpcTrigger("Q7567401N31091Trigger")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc31091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc31075.alias, 3)
    this:RecycleAllRes()
end

function Quest75674:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest75674:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75674:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75674:OnSubStart7567401(arg1)
    print("OnSubStart7567401")
    this:NpcCreateWithNpcTrigger(npcs.Npc31091.id, 0, 15, 7567401)
    this:CreateQuestNpc(arg1, npcs.Npc31075.id, 0, false, 0)
    if this:GetQuestVar(7567401, 0) == 0 then
        this:LevelLoadFinishSafeCall(function(arg1)
            this:ActionSafeCall(function(arg1)
                this:QuestNarratorTask(datas.NarratorWithId_7567401, nil)
                this:SetQuestVarByMainId(0, 1)
            end)
        end)
    end
end

function Quest75674:OnSubFinish7567401(arg1)
    print("OnSubFinish7567401")
    this:NpcDestroyImmediately(3, npcs.Npc31091.alias)
    this:NpcDestroyImmediately(3, npcs.Npc31075.alias)
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("MusicPartyTrialLevel", 0)
    end)
end

return Quest75674
