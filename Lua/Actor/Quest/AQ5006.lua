require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5006 = class("Quest5006", QuestActorProxy)
Quest5006.defaultAlias = "Quest5006"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5006:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["500601"] = self.OnSubStart500601,
        ["500602"] = self.OnSubStart500602,
        ["500603"] = self.OnSubStart500603,
        ["500615"] = self.OnSubStart500615,
        ["500618"] = self.OnSubStart500618,
        ["500619"] = self.OnSubStart500619,
        ["500616"] = self.OnSubStart500616,
        ["500613"] = self.OnSubStart500613,
        ["500604"] = self.OnSubStart500604,
        ["500605"] = self.OnSubStart500605,
        ["500606"] = self.OnSubStart500606,
        ["500620"] = self.OnSubStart500620,
        ["500607"] = self.OnSubStart500607,
        ["500608"] = self.OnSubStart500608,
        ["500611"] = self.OnSubStart500611,
        ["500610"] = self.OnSubStart500610,
        ["500614"] = self.OnSubStart500614,
        ["500617"] = self.OnSubStart500617,
        ["500612"] = self.OnSubStart500612,
        ["500621"] = self.OnSubStart500621,
        ["500609"] = self.OnSubStart500609
    }
end

function Quest5006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["500601"] = self.OnSubFinish500601,
        ["500602"] = self.OnSubFinish500602,
        ["500603"] = self.OnSubFinish500603,
        ["500615"] = self.OnSubFinish500615,
        ["500618"] = self.OnSubFinish500618,
        ["500619"] = self.OnSubFinish500619,
        ["500616"] = self.OnSubFinish500616,
        ["500613"] = self.OnSubFinish500613,
        ["500604"] = self.OnSubFinish500604,
        ["500605"] = self.OnSubFinish500605,
        ["500606"] = self.OnSubFinish500606,
        ["500620"] = self.OnSubFinish500620,
        ["500607"] = self.OnSubFinish500607,
        ["500608"] = self.OnSubFinish500608,
        ["500611"] = self.OnSubFinish500611,
        ["500610"] = self.OnSubFinish500610,
        ["500614"] = self.OnSubFinish500614,
        ["500617"] = self.OnSubFinish500617,
        ["500612"] = self.OnSubFinish500612,
        ["500621"] = self.OnSubFinish500621,
        ["500609"] = self.OnSubFinish500609
    }
end

function Quest5006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["500602"] = self.OnSubFailed500602,
        ["500615"] = self.OnSubFailed500615,
        ["500616"] = self.OnSubFailed500616,
        ["500613"] = self.OnSubFailed500613,
        ["500605"] = self.OnSubFailed500605,
        ["500606"] = self.OnSubFailed500606,
        ["500620"] = self.OnSubFailed500620,
        ["500607"] = self.OnSubFailed500607,
        ["500608"] = self.OnSubFailed500608,
        ["500610"] = self.OnSubFailed500610,
        ["500612"] = self.OnSubFailed500612
    }
end

function Quest5006:Start()
    print("Start")
end

function Quest5006:OnDestroy()
    print("OnDestroy")
end

function Quest5006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5006:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 500614)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 500617)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 500618)
    elseif arg1 == 4 then
        actorUtils.FinishQuestID(false, 500619)
    end
end

function Quest5006:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5006:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest5006:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5006:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest5006:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5006:OnSubStart500601(arg1)
    print("OnSubStart500601")
end

function Quest5006:OnSubFinish500601(arg1)
    print("OnSubFinish500601")
end

function Quest5006:OnSubStart500602(arg1)
    print("OnSubStart500602")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1.5, npcs.Npc14162.id, 0, 500602, 20, true)
end

function Quest5006:OnSubFinish500602(arg1)
    print("OnSubFinish500602")
    this:SafeDestroyQuestNpc(npcs.Npc14162.alias, 20229)
end

function Quest5006:OnSubFailed500602(arg1)
    print("OnSubFailed500602")
    this:ActorDestroy("Q500602N14162Trigger")
end

function Quest5006:OnSubStart500603(arg1)
    print("OnSubStart500603")
end

function Quest5006:OnSubFinish500603(arg1)
    print("OnSubFinish500603")
end

function Quest5006:OnSubStart500615(arg1)
    print("OnSubStart500615")
    this:NpcCreateWithNpcTrigger(npcs.Npc1087.id, 0, 20, 500615)
end

function Quest5006:OnSubFinish500615(arg1)
    print("OnSubFinish500615")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20229)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("9", 4, function(arg1)
            this:ClearNarratorTask()
            this:QuestNarratorTask(datas.NarratorWithId_500603, nil)
        end)
    end)
end

function Quest5006:OnSubFailed500615(arg1)
    print("OnSubFailed500615")
    this:ActorDestroy("Q500615N1087Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20229)
end

function Quest5006:OnSubStart500618(arg1)
    print("OnSubStart500618")
end

function Quest5006:OnSubFinish500618(arg1)
    print("OnSubFinish500618")
end

function Quest5006:OnSubStart500619(arg1)
    print("OnSubStart500619")
end

function Quest5006:OnSubFinish500619(arg1)
    print("OnSubFinish500619")
end

function Quest5006:OnSubStart500616(arg1)
    print("OnSubStart500616")
    this:DeployStoryByQuest(110500601)
end

function Quest5006:OnSubFinish500616(arg1)
    print("OnSubFinish500616")
end

function Quest5006:OnSubFailed500616(arg1)
    print("OnSubFailed500616")
    this:CancelStoryByQuest(110500601)
    this:ClearNarratorTask()
    this:UnCallDelayByQuest("9")
end

function Quest5006:OnSubStart500613(arg1)
    print("OnSubStart500613")
    actorMgr:CreateActorWithPos("Q500613TriggerRequest", "Actor/Gadget/Q500613TriggerRequest", 70900002, 0, points._Q500613TriggerRequestPoint_.pos, points._Q500613TriggerRequestPoint_.rot, true, false, 20229)
    this:DeployStoryByQuest(110500601)
end

function Quest5006:OnSubFinish500613(arg1)
    print("OnSubFinish500613")
    this:CancelStoryByQuest(110500601)
end

function Quest5006:OnSubFailed500613(arg1)
    print("OnSubFailed500613")
    this:ActorDestroy("Q500613TriggerRequest")
    this:CancelStoryByQuest(110500601)
end

function Quest5006:OnSubStart500604(arg1)
    print("OnSubStart500604")
end

function Quest5006:OnSubFinish500604(arg1)
    print("OnSubFinish500604")
end

function Quest5006:OnSubStart500605(arg1)
    print("OnSubStart500605")
    this:CallDelayByQuest("5", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(500605, 0, 25, 1, npcs.Npc1086.id)
    end)
end

function Quest5006:OnSubFinish500605(arg1)
    print("OnSubFinish500605")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 20229)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("1", 4, function(arg1)
            this:QuestNarratorTask(datas.NarratorWithId_500604, nil)
        end)
    end)
end

function Quest5006:OnSubFailed500605(arg1)
    print("OnSubFailed500605")
    this:ActorDestroy("Q500605N1086Trigger")
    this:UnCallDelayByQuest("5")
end

function Quest5006:OnSubStart500606(arg1)
    print("OnSubStart500606")
    this:NpcCreateWithNpcTriggerAndBlackscreen(500606, 0, 35, 1, npcs.Npc1087.id)
    this:PlayIndexedEffect("1", "Eff_SceneObj_SmallTutengAbyss_01", {x = 568.15, y = 5.22, z = 841.6}, {x = 0, y = -99.489, z = 0}, nil)
end

function Quest5006:OnSubFinish500606(arg1)
    print("OnSubFinish500606")
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 20229)
end

function Quest5006:OnSubFailed500606(arg1)
    print("OnSubFailed500606")
    this:ActorDestroy("Q500606N1087Trigger")
    this:RemoveIndexedEffect("1")
    this:UnCallDelayByQuest("1")
    this:ClearNarratorTask()
end

function Quest5006:OnSubStart500620(arg1)
    print("OnSubStart500620")
end

function Quest5006:OnSubFinish500620(arg1)
    print("OnSubFinish500620")
end

function Quest5006:OnSubFailed500620(arg1)
    print("OnSubFailed500620")
    this:RemoveIndexedEffect("1")
end

function Quest5006:OnSubStart500607(arg1)
    print("OnSubStart500607")
    this:PlayIndexedEffect("1", "Eff_SceneObj_SmallTutengAbyss_01", {x = 568.15, y = 5.22, z = 841.6}, {x = 0, y = -99.489, z = 0}, nil)
end

function Quest5006:OnSubFinish500607(arg1)
    print("OnSubFinish500607")
end

function Quest5006:OnSubFailed500607(arg1)
    print("OnSubFailed500607")
    this:RemoveIndexedEffect("1")
end

function Quest5006:OnSubStart500608(arg1)
    print("OnSubStart500608")
    this:CallDelayByQuest("8", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(500608, 0, 50, 1, npcs.Npc14142.id)
        this:RemoveIndexedEffect("1")
    end)
end

function Quest5006:OnSubFinish500608(arg1)
    print("OnSubFinish500608")
end

function Quest5006:OnSubFailed500608(arg1)
    print("OnSubFailed500608")
    this:ActorDestroy("Q500608N14142Trigger")
    this:UnCallDelayByQuest("8")
end

function Quest5006:OnSubStart500611(arg1)
    print("OnSubStart500611")
    globalActor:PlayAudioState("StateGroup_specialQuest_Switch", "specialQuest_off")
end

function Quest5006:OnSubFinish500611(arg1)
    print("OnSubFinish500611")
    this:SafeDestroyQuestNpc(npcs.Npc14142.alias, 20229)
end

function Quest5006:OnSubStart500610(arg1)
    print("OnSubStart500610")
end

function Quest5006:OnSubFinish500610(arg1)
    print("OnSubFinish500610")
end

function Quest5006:OnSubFailed500610(arg1)
    print("OnSubFailed500610")
    this:ActorDestroy("Q500612TriggerFinish")
    globalActor:PlayAudioState("StateGroup_specialQuest_Switch", "specialQuest_off")
end

function Quest5006:OnSubStart500614(arg1)
    print("OnSubStart500614")
end

function Quest5006:OnSubFinish500614(arg1)
    print("OnSubFinish500614")
end

function Quest5006:OnSubStart500617(arg1)
    print("OnSubStart500617")
end

function Quest5006:OnSubFinish500617(arg1)
    print("OnSubFinish500617")
end

function Quest5006:OnSubStart500612(arg1)
    print("OnSubStart500612")
    actorMgr:CreateActorWithPos("Q500612TriggerFinish", "Actor/Gadget/Q500612TriggerFinish", 70900002, 0, points._Q500612TriggerFinishPoint_.pos, points._Q500612TriggerFinishPoint_.rot, true, false, 20229)
end

function Quest5006:OnSubFinish500612(arg1)
    print("OnSubFinish500612")
    globalActor:PlayAudioState("StateGroup_specialQuest_Switch", "specialQuest_off")
end

function Quest5006:OnSubFailed500612(arg1)
    print("OnSubFailed500612")
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:TransmitPlayerByData(arg1, 3, datas.TransmitData500612, nil, nil, nil)
        this:ActorDestroy("Q500612TriggerFinish")
    end, nil, nil, "", false, false)

    globalActor:PlayAudioState("StateGroup_specialQuest_Switch", "specialQuest_off")
end

function Quest5006:OnSubStart500621(arg1)
    print("OnSubStart500621")
    this:PlayCutsceneIndex(50061201, function(arg1)
        actorUtils.FinishQuestID(false, 500621)
    end, nil, nil, false)
end

function Quest5006:OnSubFinish500621(arg1)
    print("OnSubFinish500621")
    this:ShowBlackScreen(0.2, 1, 0.5, function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData500612Success, nil, nil, nil)
    end, nil, nil, "", false, false)
end

function Quest5006:OnSubStart500609(arg1)
    print("OnSubStart500609")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1.5, npcs.Npc1086.id, 0, 500609, 15, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6170.alias, true, 1)
end

function Quest5006:OnSubFinish500609(arg1)
    print("OnSubFinish500609")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:LightNotifyTo(npcs.Npc6170.alias, 0, true)
end

return Quest5006
