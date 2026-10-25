require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73710 = class("Quest73710", QuestActorProxy)
Quest73710.defaultAlias = "Quest73710"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest73710:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73710:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7371001"] = self.OnSubStart7371001}
end

function Quest73710:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7371001"] = self.OnSubFinish7371001}
end

function Quest73710:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73710:Start()
    print("Start")
end

function Quest73710:OnDestroy()
    print("OnDestroy")
end

function Quest73710:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73710:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73710:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q7371001Trigger", 0)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30981.alias, 3)
    this:RecycleAllRes()
end

function Quest73710:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7371001Trigger", 0)
end

function Quest73710:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest73710:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest73710:OnSubStart7371001(arg1)
    print("OnSubStart7371001")
    this:CreateQuestNpc(arg1, npcs.Npc30981.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7371001Trigger", "Actor/Gadget/Q7371001Trigger", 70900002, 0, points._Q7371001TriggerPoint_.pos, points._Q7371001TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    if this:GetQuestVar(7371001, 0) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7371001, nil)
        this:SetQuestVarByMainId(0, 1)
    end
end

function Quest73710:OnSubFinish7371001(arg1)
    print("OnSubFinish7371001")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc30981.alias)
    this:DestroyQuestTrigger("Q7371001Trigger", false)
end

return Quest73710
