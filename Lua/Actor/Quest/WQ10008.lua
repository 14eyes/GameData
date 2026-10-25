require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10008 = class("Quest10008", QuestActorProxy)
Quest10008.defaultAlias = "Quest10008"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest10008:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest10008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1000801"] = self.OnSubStart1000801,
        ["1000812"] = self.OnSubStart1000812,
        ["1000809"] = self.OnSubStart1000809,
        ["1000810"] = self.OnSubStart1000810,
        ["1000802"] = self.OnSubStart1000802,
        ["1000807"] = self.OnSubStart1000807,
        ["1000808"] = self.OnSubStart1000808,
        ["1000803"] = self.OnSubStart1000803,
        ["1000811"] = self.OnSubStart1000811,
        ["1000804"] = self.OnSubStart1000804,
        ["1000805"] = self.OnSubStart1000805,
        ["1000806"] = self.OnSubStart1000806
    }
end

function Quest10008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1000801"] = self.OnSubFinish1000801,
        ["1000812"] = self.OnSubFinish1000812,
        ["1000809"] = self.OnSubFinish1000809,
        ["1000810"] = self.OnSubFinish1000810,
        ["1000802"] = self.OnSubFinish1000802,
        ["1000807"] = self.OnSubFinish1000807,
        ["1000808"] = self.OnSubFinish1000808,
        ["1000803"] = self.OnSubFinish1000803,
        ["1000811"] = self.OnSubFinish1000811,
        ["1000804"] = self.OnSubFinish1000804,
        ["1000805"] = self.OnSubFinish1000805,
        ["1000806"] = self.OnSubFinish1000806
    }
end

function Quest10008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1000809"] = self.OnSubFailed1000809,
        ["1000802"] = self.OnSubFailed1000802,
        ["1000807"] = self.OnSubFailed1000807,
        ["1000808"] = self.OnSubFailed1000808,
        ["1000803"] = self.OnSubFailed1000803,
        ["1000804"] = self.OnSubFailed1000804,
        ["1000805"] = self.OnSubFailed1000805,
        ["1000806"] = self.OnSubFailed1000806
    }
end

function Quest10008:Start()
    print("Start")
end

function Quest10008:OnDestroy()
    print("OnDestroy")
end

function Quest10008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10008:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10008:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1000804Trigger")
    this:ActorDestroy("Q1000807Trigger")
    this:ActorDestroy("Q1000801Trigger")
end

function Quest10008:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest10008:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest10008:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest10008:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest10008:OnSubStart1000801(arg1)
    print("OnSubStart1000801")
    actorMgr:CreateActorWithPos("Q1000801Trigger", "Actor/Gadget/Q1000801Trigger", 70900002, 0, points._Q1000801TriggerPoint_.pos, points._Q1000801TriggerPoint_.rot, true, false, 3)
end

function Quest10008:OnSubFinish1000801(arg1)
    print("OnSubFinish1000801")
    this:ActionSafeCall(function(arg1)
        this:PlayerEnterDungeonWithData(1809, 1279, 1000801, 1, datas.TransmitData1000801, nil, nil)
    end)
end

function Quest10008:OnSubStart1000812(arg1)
    print("OnSubStart1000812")
end

function Quest10008:OnSubFinish1000812(arg1)
    print("OnSubFinish1000812")
end

function Quest10008:OnSubStart1000809(arg1)
    print("OnSubStart1000809")
    this:NpcCreateWithNpcTrigger(npcs.Razor.id, 0, 25, 1000809)
    this:NpcCreateWithActionSafeCall(0, npcs.WolfBoss.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_100089910, nil)
    end)
end

function Quest10008:OnSubFinish1000809(arg1)
    print("OnSubFinish1000809")
    this:SafeDestroyQuestNpc(npcs.Razor.alias, 20301)
    this:SafeDestroyQuestNpc(npcs.WolfBoss.alias, 20301)
    this:ClearNarratorTask()
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    end)
end

function Quest10008:OnSubFailed1000809(arg1)
    print("OnSubFailed1000809")
    this:ClearNarratorTask()
end

function Quest10008:OnSubStart1000810(arg1)
    print("OnSubStart1000810")
end

function Quest10008:OnSubFinish1000810(arg1)
    print("OnSubFinish1000810")
end

function Quest10008:OnSubStart1000802(arg1)
    print("OnSubStart1000802")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_100089901, nil)
    end)
end

function Quest10008:OnSubFinish1000802(arg1)
    print("OnSubFinish1000802")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_100089903, nil)
    end)
end

function Quest10008:OnSubFailed1000802(arg1)
    print("OnSubFailed1000802")
    this:ClearNarratorTask()
end

function Quest10008:OnSubStart1000807(arg1)
    print("OnSubStart1000807")
    actorMgr:CreateActorWithPos("Q1000807Trigger", "Actor/Gadget/Q1000807Trigger", 70900002, 0, points._Q1000807TriggerPoint_.pos, points._Q1000807TriggerPoint_.rot, true, false, 20301)
end

function Quest10008:OnSubFinish1000807(arg1)
    print("OnSubFinish1000807")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_100089904, nil)
    end)
end

function Quest10008:OnSubFailed1000807(arg1)
    print("OnSubFailed1000807")
    this:ClearNarratorTask()
    this:DestroyQuestTrigger("Q1000807Trigger", false)
end

function Quest10008:OnSubStart1000808(arg1)
    print("OnSubStart1000808")
end

function Quest10008:OnSubFinish1000808(arg1)
    print("OnSubFinish1000808")
end

function Quest10008:OnSubFailed1000808(arg1)
    print("OnSubFailed1000808")
    this:ClearNarratorTask()
end

function Quest10008:OnSubStart1000803(arg1)
    print("OnSubStart1000803")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000803, 0, 60, 1, npcs.Razor.id)
end

function Quest10008:OnSubFinish1000803(arg1)
    print("OnSubFinish1000803")
    this:SafeDestroyQuestNpc(npcs.Razor.alias, 20301)
end

function Quest10008:OnSubFailed1000803(arg1)
    print("OnSubFailed1000803")
    this:ClearNpcTriggerByQuestId(1000803)
    this:SafeDestroyQuestNpc(npcs.Razor.alias, 20301)
    this:ClearNarratorTask()
end

function Quest10008:OnSubStart1000811(arg1)
    print("OnSubStart1000811")
end

function Quest10008:OnSubFinish1000811(arg1)
    print("OnSubFinish1000811")
end

function Quest10008:OnSubStart1000804(arg1)
    print("OnSubStart1000804")
    actorMgr:CreateActorWithPos("Q1000804Trigger", "Actor/Gadget/Q1000804Trigger", 70900002, 0, points._Q1000804TriggerPoint_.pos, points._Q1000804TriggerPoint_.rot, true, false, 20301)
end

function Quest10008:OnSubFinish1000804(arg1)
    print("OnSubFinish1000804")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_100089906, nil)
    end)
end

function Quest10008:OnSubFailed1000804(arg1)
    print("OnSubFailed1000804")
    this:DestroyQuestTrigger("Q1000804Trigger", false)
end

function Quest10008:OnSubStart1000805(arg1)
    print("OnSubStart1000805")
end

function Quest10008:OnSubFinish1000805(arg1)
    print("OnSubFinish1000805")
end

function Quest10008:OnSubFailed1000805(arg1)
    print("OnSubFailed1000805")
    this:ClearNarratorTask()
end

function Quest10008:OnSubStart1000806(arg1)
    print("OnSubStart1000806")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1000806, 0, 60, 1, npcs.Razor.id)
end

function Quest10008:OnSubFinish1000806(arg1)
    print("OnSubFinish1000806")
    this:SafeDestroyQuestNpc(npcs.Razor.alias, 20301)
    this:LevelLoadFinishSafeCall(function(arg1)
        actorUtils.ShowContext("HexenzirkelTopicCompleteDialog", 10000020)
    end)
end

function Quest10008:OnSubFailed1000806(arg1)
    print("OnSubFailed1000806")
    this:ClearNpcTriggerByQuestId(1000803)
    this:SafeDestroyQuestNpc(npcs.Razor.alias, 20301)
end

return Quest10008
