require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75025 = class("Quest75025", QuestActorProxy)
Quest75025.defaultAlias = "Quest75025"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75025:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7502501"] = self.OnSubStart7502501,
        ["7502504"] = self.OnSubStart7502504,
        ["7502506"] = self.OnSubStart7502506,
        ["7502507"] = self.OnSubStart7502507,
        ["7502508"] = self.OnSubStart7502508,
        ["7502513"] = self.OnSubStart7502513,
        ["7502514"] = self.OnSubStart7502514,
        ["7502515"] = self.OnSubStart7502515,
        ["7502509"] = self.OnSubStart7502509,
        ["7502510"] = self.OnSubStart7502510,
        ["7502511"] = self.OnSubStart7502511,
        ["7502516"] = self.OnSubStart7502516,
        ["7502512"] = self.OnSubStart7502512
    }
end

function Quest75025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7502501"] = self.OnSubFinish7502501,
        ["7502504"] = self.OnSubFinish7502504,
        ["7502506"] = self.OnSubFinish7502506,
        ["7502507"] = self.OnSubFinish7502507,
        ["7502508"] = self.OnSubFinish7502508,
        ["7502513"] = self.OnSubFinish7502513,
        ["7502514"] = self.OnSubFinish7502514,
        ["7502515"] = self.OnSubFinish7502515,
        ["7502509"] = self.OnSubFinish7502509,
        ["7502510"] = self.OnSubFinish7502510,
        ["7502511"] = self.OnSubFinish7502511,
        ["7502516"] = self.OnSubFinish7502516,
        ["7502512"] = self.OnSubFinish7502512
    }
end

function Quest75025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75025:Start()
    print("Start")
end

function Quest75025:OnDestroy()
    print("OnDestroy")
end

function Quest75025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75025:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21507.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21502.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21503.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21504.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21505.alias, 3)
end

function Quest75025:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75025:RewindStart() end

function Quest75025:OnSubStart7502501(arg1)
    print("OnSubStart7502501")
    this:CreateQuestNpc(arg1, npcs.Npc21507.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21504.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21504.alias, 75025):DoFreeStyle(13, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21502.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21502.alias, 75025):DoFreeStyle(5, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21503.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21506.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21506.alias, 75025):DoFreeStyle(8, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7502501", "Actor/Gadget/Q7502501", 70900002, 0, points._Q7502501Point_.pos, points._Q7502501Point_.rot, true, false, 3)
end

function Quest75025:OnSubFinish7502501(arg1)
    print("OnSubFinish7502501")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

function Quest75025:OnSubStart7502504(arg1)
    print("OnSubStart7502504")
    this:CreateQuestNpc(arg1, npcs.Npc21507.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21502.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21502.alias, 75025):DoFreeStyle(5, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21503.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21504.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21504.alias, 75025):DoFreeStyle(13, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21506.id, 0, false, 0)
end

function Quest75025:OnSubFinish7502504(arg1)
    print("OnSubFinish7502504")
end

function Quest75025:OnSubStart7502506(arg1)
    print("OnSubStart7502506")
end

function Quest75025:OnSubFinish7502506(arg1)
    print("OnSubFinish7502506")
end

function Quest75025:OnSubStart7502507(arg1)
    print("OnSubStart7502507")
end

function Quest75025:OnSubFinish7502507(arg1)
    print("OnSubFinish7502507")
end

function Quest75025:OnSubStart7502508(arg1)
    print("OnSubStart7502508")
end

function Quest75025:OnSubFinish7502508(arg1)
    print("OnSubFinish7502508")
end

function Quest75025:OnSubStart7502513(arg1)
    print("OnSubStart7502513")
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21504.alias, 75025)
        this:NpcRunToTaskEasy(questNpcActor, {x = -1169.13, y = 183.907, z = 8242.012}, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21504.alias, 75025):DoFreeStyle(2, true, nil, true, true, false, false)
            this:CallDelayByQuest("7502513", 1.5, function(arg1)
                actorUtils.FinishQuestID(false, 7502513)
            end)
        end)
    end)
end

function Quest75025:OnSubFinish7502513(arg1)
    print("OnSubFinish7502513")
end

function Quest75025:OnSubStart7502514(arg1)
    print("OnSubStart7502514")
    this:GetQuestNpcActor(npcs.Npc21504.alias, 75025):DoFreeStyle(8, true, nil, true, true, false, false)
end

function Quest75025:OnSubFinish7502514(arg1)
    print("OnSubFinish7502514")
end

function Quest75025:OnSubStart7502515(arg1)
    print("OnSubStart7502515")
end

function Quest75025:OnSubFinish7502515(arg1)
    print("OnSubFinish7502515")
end

function Quest75025:OnSubStart7502509(arg1)
    print("OnSubStart7502509")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc21505.id, 0, 7502509, 15, false)
end

function Quest75025:OnSubFinish7502509(arg1)
    print("OnSubFinish7502509")
end

function Quest75025:OnSubStart7502510(arg1)
    print("OnSubStart7502510")
end

function Quest75025:OnSubFinish7502510(arg1)
    print("OnSubFinish7502510")
end

function Quest75025:OnSubStart7502511(arg1)
    print("OnSubStart7502511")
    this:GetQuestNpcActor(npcs.Npc21507.alias, 75025):DoFreeStyle(1, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21502.alias, 75025):DoFreeStyle(5, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21504.alias, 75025):DoFreeStyle(13, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21460.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75025):DoFreeStyle(15, true, nil, true, true, false, false)
end

function Quest75025:OnSubFinish7502511(arg1)
    print("OnSubFinish7502511")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

function Quest75025:OnSubStart7502516(arg1)
    print("OnSubStart7502516")
    this:GetQuestNpcActor(npcs.Npc21507.alias, 75025):DoFreeStyle(1, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21504.alias, 75025):DoFreeStyle(13, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21502.alias, 75025):DoFreeStyle(5, true, nil, true, true, false, true)
    this:QuestNarratorTask(datas.NarratorWithId_7502599, nil)
end

function Quest75025:OnSubFinish7502516(arg1)
    print("OnSubFinish7502516")
end

function Quest75025:OnSubStart7502512(arg1)
    print("OnSubStart7502512")
    this:CreateQuestNpc(arg1, npcs.Npc21507.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21502.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21502.alias, 75025):DoFreeStyle(5, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21503.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21504.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21504.alias, 75025):DoFreeStyle(13, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21505.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21506.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21460.id, 0, false, 0)
    this:DeployStoryByQuest(147502502)
end

function Quest75025:OnSubFinish7502512(arg1)
    print("OnSubFinish7502512")
    this:SafeDestroyQuestNpc(npcs.Npc21507.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21502.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21503.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21504.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21505.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21506.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

return Quest75025
