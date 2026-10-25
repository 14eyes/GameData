require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77137 = class("Quest77137", QuestActorProxy)
Quest77137.defaultAlias = "Quest77137"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77137:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77137:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7713701"] = self.OnSubStart7713701,
        ["7713702"] = self.OnSubStart7713702,
        ["7713703"] = self.OnSubStart7713703,
        ["7713707"] = self.OnSubStart7713707,
        ["7713704"] = self.OnSubStart7713704,
        ["7713705"] = self.OnSubStart7713705,
        ["7713706"] = self.OnSubStart7713706,
        ["7713708"] = self.OnSubStart7713708
    }
end

function Quest77137:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7713701"] = self.OnSubFinish7713701,
        ["7713702"] = self.OnSubFinish7713702,
        ["7713703"] = self.OnSubFinish7713703,
        ["7713707"] = self.OnSubFinish7713707,
        ["7713704"] = self.OnSubFinish7713704,
        ["7713705"] = self.OnSubFinish7713705,
        ["7713706"] = self.OnSubFinish7713706,
        ["7713708"] = self.OnSubFinish7713708
    }
end

function Quest77137:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7713703"] = self.OnSubFailed7713703,
        ["7713707"] = self.OnSubFailed7713707,
        ["7713705"] = self.OnSubFailed7713705
    }
end

function Quest77137:Start()
    print("Start")
end

function Quest77137:OnDestroy()
    print("OnDestroy")
end

function Quest77137:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77137:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77137:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77137:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7713707Trigger", 77137)
end

function Quest77137:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7713708 then
        actorUtils.FinishQuestWithParam({false}, {7713708})
    end
end

function Quest77137:ActorDestroy(arg1, arg2)
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

function Quest77137:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77137:NpcDestroyWithAfterIntercall(arg1, arg2)
    this:AfterInterCall(function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest77137:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77137:OnSubStart7713701(arg1)
    print("OnSubStart7713701")
end

function Quest77137:OnSubFinish7713701(arg1)
    print("OnSubFinish7713701")
end

function Quest77137:OnSubStart7713702(arg1)
    print("OnSubStart7713702")
    this:NpcCreateWithNpcTrigger(npcs.Npc16945.id, 0, 50, 7713702)
    this:DeployStoryByQuest(147713701)
end

function Quest77137:OnSubFinish7713702(arg1)
    print("OnSubFinish7713702")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc16945.alias)
    this:QuestNarratorTask(datas.NarratorWithId_7716302, nil)
    this:CancelAllStory()
end

function Quest77137:OnSubStart7713703(arg1)
    print("OnSubStart7713703")
    this:NpcCreateWithNpcTrigger(npcs.Npc16944.id, 0, 15, 7713703)
end

function Quest77137:OnSubFinish7713703(arg1)
    print("OnSubFinish7713703")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc16944.alias)
    this:ClearNarratorTask()
end

function Quest77137:OnSubFailed7713703(arg1)
    print("OnSubFailed7713703")
    this:RecycleAllRes()
end

function Quest77137:OnSubStart7713707(arg1)
    print("OnSubStart7713707")
    actorMgr:CreateActorWithPos("Q7713707Trigger", "Actor/Gadget/Q7713707Trigger", 70900002, 0, points._Q7713707TriggerPoint_.pos, points._Q7713707TriggerPoint_.rot, true, false, 3, nil, 0, 77137)
    this:DeployStoryByQuest(147713701)
end

function Quest77137:OnSubFinish7713707(arg1)
    print("OnSubFinish7713707")
    this:ActorDestroy("Q7713707Trigger", 77137)
    this:CancelAllStory()
end

function Quest77137:OnSubFailed7713707(arg1)
    print("OnSubFailed7713707")
    this:RecycleAllRes()
    this:ActorDestroy("Q7713707Trigger", 77137)
    this:CancelAllStory()
end

function Quest77137:OnSubStart7713704(arg1)
    print("OnSubStart7713704")
    this:NpcCreateWithNpcTrigger(npcs.Npc1335.id, 0, 40, 7713704)
    this:DeployStoryByQuest(147713702)
end

function Quest77137:OnSubFinish7713704(arg1)
    print("OnSubFinish7713704")
    this:CancelAllStory()
end

function Quest77137:OnSubStart7713705(arg1)
    print("OnSubStart7713705")
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 77137):DoFreeStyle(1130, true, nil, true, true, false, false)
end

function Quest77137:OnSubFinish7713705(arg1)
    print("OnSubFinish7713705")
end

function Quest77137:OnSubFailed7713705(arg1)
    print("OnSubFailed7713705")
    this:RecycleAllRes()
end

function Quest77137:OnSubStart7713706(arg1)
    print("OnSubStart7713706")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7713706, 0, 60, 0, npcs.Npc1335.id)
end

function Quest77137:OnSubFinish7713706(arg1)
    print("OnSubFinish7713706")
    this:NpcDestroyWithAfterIntercall(3, npcs.Npc1335.alias)
end

function Quest77137:OnSubStart7713708(arg1)
    print("OnSubStart7713708")
end

function Quest77137:OnSubFinish7713708(arg1)
    print("OnSubFinish7713708")
end

return Quest77137
