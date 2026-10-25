require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74502 = class("Quest74502", QuestActorProxy)
Quest74502.defaultAlias = "Quest74502"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74502:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74502:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7450203"] = self.OnSubStart7450203,
        ["7450201"] = self.OnSubStart7450201,
        ["7450202"] = self.OnSubStart7450202
    }
end

function Quest74502:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7450203"] = self.OnSubFinish7450203,
        ["7450201"] = self.OnSubFinish7450201,
        ["7450202"] = self.OnSubFinish7450202
    }
end

function Quest74502:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74502:Start()
    print("Start")
end

function Quest74502:OnDestroy()
    print("OnDestroy")
end

function Quest74502:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74502:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74502:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5029Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5024Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5040Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5040Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q74502Trigger", 3, false)
    this:UnCallDelayByQuest("1")
end

function Quest74502:OnSubStart7450203(arg1)
    print("OnSubStart7450203")
end

function Quest74502:OnSubFinish7450203(arg1)
    print("OnSubFinish7450203")
    this:NarratorOnlyTaskByData(datas.Narrator_7450201, nil, 74502)
end

function Quest74502:OnSubStart7450201(arg1)
    print("OnSubStart7450201")
    this:AfterMainPageActiveSafeCall(function(arg1_2)
        this:CallDelayByQuest("1", 1, function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc5029Data.id, 0)
            this:CreateQuestNpc(arg1, npcs.Npc5024Data.id, 0)
            actorMgr:CreateActorWithPos("Q74502Trigger", "Actor/Gadget/Q74502Trigger", 70900002, 0, points.TPos_Q74502Trigger.pos, points.TPos_Q74502Trigger.rot, true, false, 3)
        end)
    end)
end

function Quest74502:OnSubFinish7450201(arg1)
    print("OnSubFinish7450201")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5029Data.alias, 3)
        this:ClearNarratorTask()
        this:StopNarrator()
    end)
end

function Quest74502:OnSubStart7450202(arg1)
    print("OnSubStart7450202")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5029Data.id, 0)
        this:NotifyTo(npcs.Npc5040Data.alias, 1, true)
        this:NotifyTo(npcs.Npc30411Data.alias, 1, true)
        this:NotifyTo(npcs.Npc30412Data.alias, 1, true)
    end)
end

function Quest74502:OnSubFinish7450202(arg1)
    print("OnSubFinish7450202")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5024Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5029Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5040Data.alias, 0, true)
    end)
end

return Quest74502
