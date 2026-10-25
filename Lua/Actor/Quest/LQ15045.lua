require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15045 = class("Quest15045", QuestActorProxy)
Quest15045.defaultAlias = "Quest15045"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest15045:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest15045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1504501"] = self.OnSubStart1504501,
        ["1504530"] = self.OnSubStart1504530,
        ["1504503"] = self.OnSubStart1504503,
        ["1504504"] = self.OnSubStart1504504,
        ["1504502"] = self.OnSubStart1504502,
        ["1504505"] = self.OnSubStart1504505,
        ["1504506"] = self.OnSubStart1504506,
        ["1504507"] = self.OnSubStart1504507
    }
end

function Quest15045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1504501"] = self.OnSubFinish1504501,
        ["1504530"] = self.OnSubFinish1504530,
        ["1504503"] = self.OnSubFinish1504503,
        ["1504504"] = self.OnSubFinish1504504,
        ["1504502"] = self.OnSubFinish1504502,
        ["1504505"] = self.OnSubFinish1504505,
        ["1504506"] = self.OnSubFinish1504506,
        ["1504507"] = self.OnSubFinish1504507
    }
end

function Quest15045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1504502"] = self.OnSubFailed1504502, ["1504505"] = self.OnSubFailed1504505}
end

function Quest15045:Start()
    print("Start")
end

function Quest15045:OnDestroy()
    print("OnDestroy")
end

function Quest15045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15045:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15045:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:BanCrowdNpc(3521, 12, datas.Crowd3521_12_120002, false, true)
    this:BanCrowdNpc(3521, 9, datas.Crowd3521_9_90005_90006, false, true)
end

function Quest15045:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15045:OnSubStart1504501(arg1)
    print("OnSubStart1504501")
end

function Quest15045:OnSubFinish1504501(arg1)
    print("OnSubFinish1504501")
    this:QuestNarratorTask(datas.NarratorWithId_1504501, nil)
end

function Quest15045:OnSubStart1504530(arg1)
    print("OnSubStart1504530")
end

function Quest15045:OnSubFinish1504530(arg1)
    print("OnSubFinish1504530")
    this:QuestNarratorTask(datas.NarratorWithId_1504501, nil)
end

function Quest15045:OnSubStart1504503(arg1)
    print("OnSubStart1504503")
    this:CreateQuestNpc(arg1, npcs.Npc21865.id, 0, false, 0)
end

function Quest15045:OnSubFinish1504503(arg1)
    print("OnSubFinish1504503")
    this:SafeDestroyQuestNpc(npcs.Npc21865.alias, 3)
end

function Quest15045:OnSubStart1504504(arg1)
    print("OnSubStart1504504")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(1504504, 0, 30, 1, npcs.Npc21845.id)
    end)
end

function Quest15045:OnSubFinish1504504(arg1)
    print("OnSubFinish1504504")
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
end

function Quest15045:OnSubStart1504502(arg1)
    print("OnSubStart1504502")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121504501)
    end)
end

function Quest15045:OnSubFinish1504502(arg1)
    print("OnSubFinish1504502")
end

function Quest15045:OnSubFailed1504502(arg1)
    print("OnSubFailed1504502")
    this:CancelStoryByQuest(121504501)
end

function Quest15045:OnSubStart1504505(arg1)
    print("OnSubStart1504505")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(121504501)
    end)
end

function Quest15045:OnSubFinish1504505(arg1)
    print("OnSubFinish1504505")
end

function Quest15045:OnSubFailed1504505(arg1)
    print("OnSubFailed1504505")
    this:CancelStoryByQuest(121504501)
end

function Quest15045:OnSubStart1504506(arg1)
    print("OnSubStart1504506")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504506, 0, 35, 1, npcs.Npc21845.id)
end

function Quest15045:OnSubFinish1504506(arg1)
    print("OnSubFinish1504506")
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
    this:CancelStoryByQuest(121504501)
end

function Quest15045:OnSubStart1504507(arg1)
    print("OnSubStart1504507")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504507, 0, 10, 1, npcs.Npc21847.id)
    this:BanCrowdNpc(3521, 12, datas.Crowd3521_12_120002, true, true)
    this:BanCrowdNpc(3521, 9, datas.Crowd3521_9_90005_90006, true, true)
end

function Quest15045:OnSubFinish1504507(arg1)
    print("OnSubFinish1504507")
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 3)
    this:BanCrowdNpc(3521, 12, datas.Crowd3521_12_120002, false, true)
    this:BanCrowdNpc(3521, 9, datas.Crowd3521_9_90005_90006, false, true)
end

return Quest15045
