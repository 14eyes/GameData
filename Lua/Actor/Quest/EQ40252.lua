require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40252 = class("Quest40252", QuestActorProxy)
Quest40252.defaultAlias = "Quest40252"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40252:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40252:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4025201"] = self.OnSubStart4025201, ["4025202"] = self.OnSubStart4025202}
end

function Quest40252:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4025201"] = self.OnSubFinish4025201, ["4025202"] = self.OnSubFinish4025202}
end

function Quest40252:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40252:Start()
    print("Start")
end

function Quest40252:OnDestroy()
    print("OnDestroy")
end

function Quest40252:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40252:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40252:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("4025201")
    this:ActorDestroy("Q4025202Trigger", 40252)
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1093.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10211.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17221.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17224.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc17225.alias, 3)
    this:LightNotifyTo(npcs.Npc2475.alias, 0, true)
    this:RecycleAllRes()
end

function Quest40252:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4025202Trigger", 40252)
end

function Quest40252:ActorDestroy(arg1, arg2)
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

function Quest40252:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40252:OnSubStart4025201(arg1)
    print("OnSubStart4025201")
end

function Quest40252:OnSubFinish4025201(arg1)
    print("OnSubFinish4025201")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("ChapterBeginDialog", 10276, "")
        this:CallDelayByQuest("4025201", 3, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_4025201, nil)
        end)
    end, true)
end

function Quest40252:OnSubStart4025202(arg1)
    print("OnSubStart4025202")
    this:CreateQuestNpc(arg1, npcs.Npc1093.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc10211.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17221.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17224.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17225.id, 0, false, 0)
    this:NotifyTo(npcs.Npc2475.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1093.alias, 40252):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc10211.alias, 40252):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc17221.alias, 40252):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc17224.alias, 40252):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc17225.alias, 40252):SitOnChair(0, false)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q4025202Trigger", "Actor/Gadget/Q4025202Trigger", 70900002, 0, points._Q4025202TriggerPoint_.pos, points._Q4025202TriggerPoint_.rot, true, false, 3, nil, 0, 40252)
    end, true)
end

function Quest40252:OnSubFinish4025202(arg1)
    print("OnSubFinish4025202")
    this:NpcDestroyImmediately(3, npcs.Npc1093.alias)
    this:NpcDestroyImmediately(3, npcs.Npc10211.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17221.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17224.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17225.alias)
    this:LightNotifyTo(npcs.Npc2475.alias, 0, true)
    this:ClearNarratorTask()
    this:UnCallDelayByQuest("4025201")
end

return Quest40252
