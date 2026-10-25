require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14024 = class("Quest14024", QuestActorProxy)
Quest14024.defaultAlias = "Quest14024"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14024:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1402402"] = self.OnSubStart1402402,
        ["1402403"] = self.OnSubStart1402403,
        ["1402404"] = self.OnSubStart1402404,
        ["1402401"] = self.OnSubStart1402401,
        ["1402405"] = self.OnSubStart1402405,
        ["1402407"] = self.OnSubStart1402407,
        ["1402406"] = self.OnSubStart1402406
    }
end

function Quest14024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1402402"] = self.OnSubFinish1402402,
        ["1402403"] = self.OnSubFinish1402403,
        ["1402404"] = self.OnSubFinish1402404,
        ["1402401"] = self.OnSubFinish1402401,
        ["1402405"] = self.OnSubFinish1402405,
        ["1402407"] = self.OnSubFinish1402407,
        ["1402406"] = self.OnSubFinish1402406
    }
end

function Quest14024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14024:Start()
    print("Start")
end

function Quest14024:OnDestroy()
    print("OnDestroy")
end

function Quest14024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14024:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14024:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14024:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14024:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest14024:OnSubStart1402402(arg1)
    print("OnSubStart1402402")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:NpcCreateWithNpcTrigger(npcs.Npc1080Data.id, 1402402, 0, 7)
        this:GetQuestNpcActor(npcs.Npc1080Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:CreateQuestNpc(arg1, npcs.Npc13883Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc10200Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc5142Data.alias, 1, true)
        this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
        this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13883Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1074Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest14024:OnSubFinish1402402(arg1)
    print("OnSubFinish1402402")
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("1402402", 1, function(arg1)
            this:QuestNarratorTask(datas.Narrator_1402401)
        end)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc13883Data.alias, 3)
end

function Quest14024:OnSubStart1402403(arg1)
    print("OnSubStart1402403")
    this:NpcCreateWithNpcTrigger(npcs.Npc1071Data.id, 1402403, 0, 10)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1080Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1074Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:DailyNpcSafeHideSelf(npcs.Npc5142Data.alias, 1, true)
end

function Quest14024:OnSubFinish1402403(arg1)
    print("OnSubFinish1402403")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1080Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1074Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5142Data.alias, 0, true)
end

function Quest14024:OnSubStart1402404(arg1)
    print("OnSubStart1402404")
    this:CreateQuestNpc(arg1, npcs.Npc14025Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5121Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5125Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    this:CancelStoryByQuest(121402405)
    this:CancelStoryByQuest(121402401)
    this:ActorDestroy("Q14024Trigger2")
    this:ActorDestroy("Q1402406N13883Trigger")
    this:NPCDestroyImmediately(npcs.Npc13883Data.alias, 3)
end

function Quest14024:OnSubFinish1402404(arg1)
    print("OnSubFinish1402404")
    this:SafeDestroyQuestNpc(npcs.Npc14025Data.alias, 3)
end

function Quest14024:OnSubStart1402401(arg1)
    print("OnSubStart1402401")
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5121Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5125Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    this:DeployStoryByQuest(121402401)
end

function Quest14024:OnSubFinish1402401(arg1)
    print("OnSubFinish1402401")
    this:CancelStoryByQuest(121402401)
end

function Quest14024:OnSubStart1402405(arg1)
    print("OnSubStart1402405")
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5121Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5125Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    this:DeployStoryByQuest(121402405)
end

function Quest14024:OnSubFinish1402405(arg1)
    print("OnSubFinish1402405")
    this:CancelStoryByQuest(121402405)
end

function Quest14024:OnSubStart1402407(arg1)
    print("OnSubStart1402407")
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5121Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5125Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q14024Trigger2", "Actor/Gadget/Q14024Trigger2", 70900002, 0, points.TPos_Q14024Trigger2.pos, points.TPos_Q14024Trigger2.rot, true, false, 3)
end

function Quest14024:OnSubFinish1402407(arg1)
    print("OnSubFinish1402407")
    this:ActorDestroy("Q14024Trigger2")
end

function Quest14024:OnSubStart1402406(arg1)
    print("OnSubStart1402406")
    this:NpcCreateWithNpcTrigger(npcs.Npc13883Data.id, 1402406, 0, 8)
    this:DailyNpcSafeHideSelf(npcs.Npc5058Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5060Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5127Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5121Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc5125Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5237Data.alias, 1, true)
end

function Quest14024:OnSubFinish1402406(arg1)
    print("OnSubFinish1402406")
    this:SafeDestroyQuestNpc(npcs.Npc13883Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5058Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5059Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5060Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5127Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5121Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5237Data.alias, 0, true)
end

return Quest14024
