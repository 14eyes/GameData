require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73686 = class("Quest73686", QuestActorProxy)
Quest73686.defaultAlias = "Quest73686"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73686:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73686:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7368601"] = self.OnSubStart7368601,
        ["7368602"] = self.OnSubStart7368602,
        ["7368610"] = self.OnSubStart7368610,
        ["7368603"] = self.OnSubStart7368603,
        ["7368604"] = self.OnSubStart7368604,
        ["7368611"] = self.OnSubStart7368611,
        ["7368605"] = self.OnSubStart7368605,
        ["7368606"] = self.OnSubStart7368606,
        ["7368607"] = self.OnSubStart7368607,
        ["7368608"] = self.OnSubStart7368608,
        ["7368609"] = self.OnSubStart7368609
    }
end

function Quest73686:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7368601"] = self.OnSubFinish7368601,
        ["7368602"] = self.OnSubFinish7368602,
        ["7368610"] = self.OnSubFinish7368610,
        ["7368603"] = self.OnSubFinish7368603,
        ["7368604"] = self.OnSubFinish7368604,
        ["7368611"] = self.OnSubFinish7368611,
        ["7368605"] = self.OnSubFinish7368605,
        ["7368606"] = self.OnSubFinish7368606,
        ["7368607"] = self.OnSubFinish7368607,
        ["7368608"] = self.OnSubFinish7368608,
        ["7368609"] = self.OnSubFinish7368609
    }
end

function Quest73686:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73686:Start()
    print("Start")
end

function Quest73686:OnDestroy()
    print("OnDestroy")
end

function Quest73686:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73686:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73686:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13070Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13071Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3098Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 47307)
    this:SafeDestroyQuestNpc(npcs.Npc3099Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3086Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30139Data.alias, 3)
    actorMgr:DestroyEntityActor("Q73686TriggerStartNarra", 3, false)
    actorMgr:DestroyEntityActor("Q73686TriggerTalk", 3, false)
    actorMgr:DestroyEntityActor("Q7368610Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7368604Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7368606N1013Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7368607Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7368609Trigger", 3, false)
end

function Quest73686:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73686:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73686:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73686:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 5, 1)
end

function Quest73686:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73686:OnSubStart7368601(arg1)
    print("OnSubStart7368601")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13070Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13071Data.id, 0)
    actorMgr:CreateActorWithPos("Q73686TriggerStartNarra", "Actor/Gadget/Q73686TriggerStartNarra", 70900002, 0, {x = -2985.211, y = 204.501, z = -4229.028}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q73686TriggerTalk", "Actor/Gadget/Q73686TriggerTalk", 70900002, 0, {x = -2985.211, y = 204.501, z = -4229.028}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73686:OnSubFinish7368601(arg1)
    print("OnSubFinish7368601")
    this:ClearNarratorTask()
    this:StopNarrator()
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13070Data.alias)
    this:NpcDestroy(npcs.Npc13071Data.alias, 3)
end

function Quest73686:OnSubStart7368602(arg1)
    print("OnSubStart7368602")
    this:ActionSafeCall(function(arg1)
        this:CallDelay(2, function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithIdFight)
        end)
    end)
end

function Quest73686:OnSubFinish7368602(arg1)
    print("OnSubFinish7368602")
end

function Quest73686:OnSubStart7368610(arg1)
    print("OnSubStart7368610")
    this:CreateQuestNpcWithTriggerBlack("Q7368610Trigger", 7368610, 13070, 0, 20, 2)
    this:ClearNarratorTask()
    this:StopNarrator()
end

function Quest73686:OnSubFinish7368610(arg1)
    print("OnSubFinish7368610")
    this:NpcDestroy(npcs.Npc13070Data.alias, 3)
end

function Quest73686:OnSubStart7368603(arg1)
    print("OnSubStart7368603")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc3098Data.id, 0)
end

function Quest73686:OnSubFinish7368603(arg1)
    print("OnSubFinish7368603")
end

function Quest73686:OnSubStart7368604(arg1)
    print("OnSubStart7368604")
    this:CreateQuestNpcWithTrigger("Q7368604Trigger", 7368604, npcs.Npc1013Data.id, 0, 15)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc3086Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc30139Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1013Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc3086Data.alias):DoFreeStyle(1130, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc30139Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    end)

    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc3099Data.id, 0)
end

function Quest73686:OnSubFinish7368604(arg1)
    print("OnSubFinish7368604")
    this:NpcDestroy(npcs.Npc3098Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1013Data.alias)
    this:NpcDestroy(npcs.Npc3086Data.alias, 3)
    this:NpcDestroy(npcs.Npc30139Data.alias, 3)
    this:NpcDestroy(npcs.Npc3099Data.alias, 3)
end

function Quest73686:OnSubStart7368611(arg1)
    print("OnSubStart7368611")
end

function Quest73686:OnSubFinish7368611(arg1)
    print("OnSubFinish7368611")
end

function Quest73686:OnSubStart7368605(arg1)
    print("OnSubStart7368605")
    globalActor:PlayerEnterDungeon(765, 8407, true, nil, 0)
end

function Quest73686:OnSubFinish7368605(arg1)
    print("OnSubFinish7368605")
end

function Quest73686:OnSubStart7368606(arg1)
    print("OnSubStart7368606")
    this:NpcCreateWithTriggerBlack(npcs.Npc1013Data.id, 7368606, 0)
end

function Quest73686:OnSubFinish7368606(arg1)
    print("OnSubFinish7368606")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1013Data.alias)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3)
    end)
end

function Quest73686:OnSubStart7368607(arg1)
    print("OnSubStart7368607")
    this:CreateQuestNpcWithTriggerBlack("Q7368607Trigger", 7368607, 1013, 0, 10, 2)
end

function Quest73686:OnSubFinish7368607(arg1)
    print("OnSubFinish7368607")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1013Data.alias)
end

function Quest73686:OnSubStart7368608(arg1)
    print("OnSubStart7368608")
end

function Quest73686:OnSubFinish7368608(arg1)
    print("OnSubFinish7368608")
    this:NarratorOnlyTaskByData(datas.NarratorWithIdEnd)
end

function Quest73686:OnSubStart7368609(arg1)
    print("OnSubStart7368609")
    this:CreateQuestNpcWithTrigger("Q7368609Trigger", 7368609, 1013, 0, 10)
    this:NpcCreate(arg1, npcs.Npc3086Data.id, 0)
    this:NpcCreate(arg1, npcs.Npc30139Data.id, 0)
end

function Quest73686:OnSubFinish7368609(arg1)
    print("OnSubFinish7368609")
    this:StopNarrator()
    this:ClearNarratorTask()
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1013Data.alias)
    this:NpcDestroy(npcs.Npc3086Data.alias, 3)
    this:NpcDestroy(npcs.Npc30139Data.alias, 3)
end

return Quest73686
