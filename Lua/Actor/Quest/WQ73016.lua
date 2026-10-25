require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73016 = class("Quest73016", QuestActorProxy)
Quest73016.defaultAlias = "Quest73016"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73016:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7301601"] = self.OnSubStart7301601,
        ["7301602"] = self.OnSubStart7301602,
        ["7301603"] = self.OnSubStart7301603,
        ["7301604"] = self.OnSubStart7301604,
        ["7301605"] = self.OnSubStart7301605,
        ["7301606"] = self.OnSubStart7301606,
        ["7301616"] = self.OnSubStart7301616,
        ["7301607"] = self.OnSubStart7301607,
        ["7301608"] = self.OnSubStart7301608,
        ["7301609"] = self.OnSubStart7301609,
        ["7301610"] = self.OnSubStart7301610,
        ["7301613"] = self.OnSubStart7301613,
        ["7301611"] = self.OnSubStart7301611,
        ["7301615"] = self.OnSubStart7301615,
        ["7301617"] = self.OnSubStart7301617,
        ["7301614"] = self.OnSubStart7301614,
        ["7301612"] = self.OnSubStart7301612
    }
end

function Quest73016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7301601"] = self.OnSubFinish7301601,
        ["7301602"] = self.OnSubFinish7301602,
        ["7301603"] = self.OnSubFinish7301603,
        ["7301604"] = self.OnSubFinish7301604,
        ["7301605"] = self.OnSubFinish7301605,
        ["7301606"] = self.OnSubFinish7301606,
        ["7301616"] = self.OnSubFinish7301616,
        ["7301607"] = self.OnSubFinish7301607,
        ["7301608"] = self.OnSubFinish7301608,
        ["7301609"] = self.OnSubFinish7301609,
        ["7301610"] = self.OnSubFinish7301610,
        ["7301613"] = self.OnSubFinish7301613,
        ["7301611"] = self.OnSubFinish7301611,
        ["7301615"] = self.OnSubFinish7301615,
        ["7301617"] = self.OnSubFinish7301617,
        ["7301614"] = self.OnSubFinish7301614,
        ["7301612"] = self.OnSubFinish7301612
    }
end

function Quest73016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7301615"] = self.OnSubFailed7301615}
end

function Quest73016:Start()
    print("Start")
end

function Quest73016:OnDestroy()
    print("OnDestroy")
end

function Quest73016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73016:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73016:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73016:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7301615)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(true, 7301615)
    end
end

function Quest73016:OnSubStart7301601(arg1)
    print("OnSubStart7301601")
    this:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc20761Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q73016Trigger", "Actor/Gadget/Q73016Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301601").pos, sceneData:GetDummyPoint(3, "guide_Q7301601").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73016TriggerReminder01", "Actor/Gadget/Q73016TriggerReminder01", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301601_reminder").pos, sceneData:GetDummyPoint(3, "guide_Q7301601_reminder").rot, true, false, 3)
end

function Quest73016:OnSubFinish7301601(arg1)
    print("OnSubFinish7301601")
end

function Quest73016:OnSubStart7301602(arg1)
    print("OnSubStart7301602")
    this:RequestInteraction(npcs.Npc20606Data.alias)
end

function Quest73016:OnSubFinish7301602(arg1)
    print("OnSubFinish7301602")
    this:NarratorOnlyTask(datas.NarratorTable1, nil, "")
    this:SafeDestroyQuestNpc(npcs.Npc20761Data.alias, 3)
end

function Quest73016:OnSubStart7301603(arg1)
    print("OnSubStart7301603")
    this:RequestInteraction(npcs.Npc20606Data.alias)
end

function Quest73016:OnSubFinish7301603(arg1)
    print("OnSubFinish7301603")
    this:NarratorOnlyTask(datas.NarratorTable2, nil, "")
end

function Quest73016:OnSubStart7301604(arg1)
    print("OnSubStart7301604")
    this:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q73016TriggerBattle01", "Actor/Gadget/Q73016TriggerBattle01", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301604_1").pos, sceneData:GetDummyPoint(3, "guide_Q7301604_1").rot, true, false, 3)
end

function Quest73016:OnSubFinish7301604(arg1)
    print("OnSubFinish7301604")
    this:NarratorOnlyTask(datas.NarratorTable3, nil, "")
end

function Quest73016:OnSubStart7301605(arg1)
    print("OnSubStart7301605")
    this:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q73016TriggerBattle02", "Actor/Gadget/Q73016TriggerBattle02", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301605_1").pos, sceneData:GetDummyPoint(3, "guide_Q7301605_1").rot, true, false, 3)
end

function Quest73016:OnSubFinish7301605(arg1)
    print("OnSubFinish7301605")
    this:NarratorOnlyTask(datas.NarratorTable4, nil, "")
end

function Quest73016:OnSubStart7301606(arg1)
    print("OnSubStart7301606")
    this:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q73016TriggerBattle03", "Actor/Gadget/Q73016TriggerBattle03", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301606_1").pos, sceneData:GetDummyPoint(3, "guide_Q7301606_1").rot, true, false, 3)
end

function Quest73016:OnSubFinish7301606(arg1)
    print("OnSubFinish7301606")
end

function Quest73016:OnSubStart7301616(arg1)
    print("OnSubStart7301616")
    this:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc20606Data.alias)
end

function Quest73016:OnSubFinish7301616(arg1)
    print("OnSubFinish7301616")
end

function Quest73016:OnSubStart7301607(arg1)
    print("OnSubStart7301607")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20606Data.id, 0)
    this:RequestInteraction(npcs.Npc20606Data.alias)
end

function Quest73016:OnSubFinish7301607(arg1)
    print("OnSubFinish7301607")
end

function Quest73016:OnSubStart7301608(arg1)
    print("OnSubStart7301608")
end

function Quest73016:OnSubFinish7301608(arg1)
    print("OnSubFinish7301608")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7301607, function(arg1)
            this:NarratorOnlyTask(datas.NarratorTable6, nil, "")
        end, nil, nil, false)

        this:NpcDestroy(npcs.Npc20606Data.alias, 3)
    end)

    this:NpcDestroy(npcs.Npc20606Data.alias, 3)
end

function Quest73016:OnSubStart7301609(arg1)
    print("OnSubStart7301609")
    actorMgr:CreateActorWithPos("Q73016Trigger1", "Actor/Gadget/Q73016Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301612").pos, sceneData:GetDummyPoint(3, "guide_Q7301612").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73016TriggerReminder02", "Actor/Gadget/Q73016TriggerReminder02", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301609_reminder").pos, sceneData:GetDummyPoint(3, "guide_Q7301609_reminder").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73016TriggerReminder03", "Actor/Gadget/Q73016TriggerReminder03", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q7301612").pos, sceneData:GetDummyPoint(3, "guide_Q7301612").rot, true, false, 3)
end

function Quest73016:OnSubFinish7301609(arg1)
    print("OnSubFinish7301609")
    this:NarratorOnlyTask(datas.NarratorTable8, nil, "")
end

function Quest73016:OnSubStart7301610(arg1)
    print("OnSubStart7301610")
    this:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc20606Data.alias)
end

function Quest73016:OnSubFinish7301610(arg1)
    print("OnSubFinish7301610")
end

function Quest73016:OnSubStart7301613(arg1)
    print("OnSubStart7301613")
end

function Quest73016:OnSubFinish7301613(arg1)
    print("OnSubFinish7301613")
    this:NarratorOnlyTask(datas.NarratorTable9, nil, "")
end

function Quest73016:OnSubStart7301611(arg1)
    print("OnSubStart7301611")
    this:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 0, false, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc20606Data.alias):DoFreeStyle(8010, true, nil, true, true, false, false)
    end)
end

function Quest73016:OnSubFinish7301611(arg1)
    print("OnSubFinish7301611")
end

function Quest73016:OnSubStart7301615(arg1)
    print("OnSubStart7301615")
    this:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 0, false, 0)
end

function Quest73016:OnSubFinish7301615(arg1)
    print("OnSubFinish7301615")
    this:TransmitPlayerWithTextByQuestId(7301615, 1, datas.TextmapId, 2)
    this:NpcDestroy(npcs.Npc20606Data.alias, 3)
end

function Quest73016:OnSubFailed7301615(arg1)
    print("OnSubFailed7301615")
    this:NpcDestroy(npcs.Npc20606Data.alias, 3)
end

function Quest73016:OnSubStart7301617(arg1)
    print("OnSubStart7301617")
    actorMgr:CreateActorWithPos("Q73016TriggerQ17", "Actor/Gadget/Q73016TriggerQ17", 70900002, 0, sceneData:GetDummyPoint(3, "Q7301516_player").pos, sceneData:GetDummyPoint(3, "Q7301516_player").rot, true, false, 3)
end

function Quest73016:OnSubFinish7301617(arg1)
    print("OnSubFinish7301617")
end

function Quest73016:OnSubStart7301614(arg1)
    print("OnSubStart7301614")
end

function Quest73016:OnSubFinish7301614(arg1)
    print("OnSubFinish7301614")
end

function Quest73016:OnSubStart7301612(arg1)
    print("OnSubStart7301612")
end

function Quest73016:OnSubFinish7301612(arg1)
    print("OnSubFinish7301612")
end

return Quest73016
