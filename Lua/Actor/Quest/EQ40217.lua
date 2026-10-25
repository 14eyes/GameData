require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40217 = class("Quest40217", QuestActorProxy)
Quest40217.defaultAlias = "Quest40217"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40217:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40217:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4021701"] = self.OnSubStart4021701,
        ["4021702"] = self.OnSubStart4021702,
        ["4021703"] = self.OnSubStart4021703,
        ["4021707"] = self.OnSubStart4021707,
        ["4021704"] = self.OnSubStart4021704,
        ["4021705"] = self.OnSubStart4021705,
        ["4021706"] = self.OnSubStart4021706
    }
end

function Quest40217:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4021701"] = self.OnSubFinish4021701,
        ["4021702"] = self.OnSubFinish4021702,
        ["4021703"] = self.OnSubFinish4021703,
        ["4021707"] = self.OnSubFinish4021707,
        ["4021704"] = self.OnSubFinish4021704,
        ["4021705"] = self.OnSubFinish4021705,
        ["4021706"] = self.OnSubFinish4021706
    }
end

function Quest40217:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40217:Start()
    print("Start")
end

function Quest40217:OnDestroy()
    print("OnDestroy")
end

function Quest40217:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40217:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40217:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("4021706")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Ambor.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15856.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 3)
    this:ActorDestroy("Q4021703_TriggerIn")
    this:ActorDestroy("Q4021704_TrggerIn")
    this:DestroyNpcTrigger("Q4021706N16014Trigger")
    this:CancelStoryByQuest(134021703)
    this:CancelStoryByQuest(134021705)
    this:CancelStoryByQuest(134021707)
end

function Quest40217:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4021703_TriggerIn")
    this:ActorDestroy("Q4021704_TrggerIn")
end

function Quest40217:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40217:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest40217:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40217:OnSubStart4021701(arg1)
    print("OnSubStart4021701")
    actorUtils.FinishQuestID(false, 4021701)
end

function Quest40217:OnSubFinish4021701(arg1)
    print("OnSubFinish4021701")
end

function Quest40217:OnSubStart4021702(arg1)
    print("OnSubStart4021702")
end

function Quest40217:OnSubFinish4021702(arg1)
    print("OnSubFinish4021702")
    local avatarPos = actorUtils.GetAvatarPos()
    local tbl = {x = 1533.216, y = 267.516, z = -1072.676}
    if 50 < M.Dist(tbl, avatarPos) then
        this:QuestNarratorTask(datas.NarratorWithId_4021702, nil)
    end

    this:SetNavigationByMainId(40217, true)
end

function Quest40217:OnSubStart4021703(arg1)
    print("OnSubStart4021703")
    this:CreateQuestNpc(arg1, npcs.Ambor.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Ambor.alias, 40217):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15856.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15856.alias, 40217):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(134021703)
end

function Quest40217:OnSubFinish4021703(arg1)
    print("OnSubFinish4021703")
    this:ClearNarratorTask()
    this:QuestNarratorTask(datas.NarratorWithId_4021703, function(arg1)
        this:CancelStoryByQuest(134021703)
    end)
end

function Quest40217:OnSubStart4021707(arg1)
    print("OnSubStart4021707")
    this:GetQuestNpcActor(npcs.Ambor.alias, 40217):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15856.alias, 40217):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(134021707)
end

function Quest40217:OnSubFinish4021707(arg1)
    print("OnSubFinish4021707")
    this:ClearNarratorTask()
    this:CancelStoryByQuest(134021707)
end

function Quest40217:OnSubStart4021704(arg1)
    print("OnSubStart4021704")
    this:NpcCreateWithActionSafeCall(0, npcs.Ambor.id, arg1)
    this:GetQuestNpcActor(npcs.Ambor.alias, 40217):DisableInteeHeadCtrl(false)
    this:CreateQuestNpc(arg1, npcs.Npc15856.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15856.alias, 40217):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.NPC20088.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40217):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15854.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40217):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4021704_TrggerIn", "Actor/Gadget/Q4021704_TrggerIn", 70900002, 0, points._Q4021704_TrggerInPoint_.pos, points._Q4021704_TrggerInPoint_.rot, true, false, 3)
end

function Quest40217:OnSubFinish4021704(arg1)
    print("OnSubFinish4021704")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_4021705, nil)
        end)
    end)
end

function Quest40217:OnSubStart4021705(arg1)
    print("OnSubStart4021705")
    this:GetQuestNpcActor(npcs.Npc15856.alias, 40217):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Ambor.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Ambor.alias, 40217):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.NPC20088.id, arg1)
    this:GetQuestNpcActor(npcs.NPC20088.alias, 40217):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc15854.id, arg1)
    this:GetQuestNpcActor(npcs.Npc15854.alias, 40217):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(134021705)
end

function Quest40217:OnSubFinish4021705(arg1)
    print("OnSubFinish4021705")
    this:SafeDestroyQuestNpc(npcs.Ambor.alias, 3)
    this:SafeDestroyQuestNpc(npcs.NPC20088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15854.alias, 3)
    this:CancelStoryByQuest(134021705)
end

function Quest40217:OnSubStart4021706(arg1)
    print("OnSubStart4021706")
    this:GetQuestNpcActor(npcs.Npc15856.alias, 40217):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTrigger(npcs.Npc16014.id, 0, 8, 4021706)
end

function Quest40217:OnSubFinish4021706(arg1)
    print("OnSubFinish4021706")
    this:SafeDestroyQuestNpc(npcs.Npc15856.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc16014.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:CallDelayByQuest("4021706", 0.1, function(arg1)
            this:ActionSafeCall(function(arg1)
                actorUtils.ShowContext("SnowRaceMainPage", 0)
            end)
        end)
    end)
end

return Quest40217
