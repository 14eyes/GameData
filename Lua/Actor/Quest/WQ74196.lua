require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74196 = class("Quest74196", QuestActorProxy)
Quest74196.defaultAlias = "Quest74196"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74196:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74196:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7419601"] = self.OnSubStart7419601,
        ["7419602"] = self.OnSubStart7419602,
        ["7419621"] = self.OnSubStart7419621,
        ["7419622"] = self.OnSubStart7419622,
        ["7419603"] = self.OnSubStart7419603,
        ["7419604"] = self.OnSubStart7419604,
        ["7419605"] = self.OnSubStart7419605,
        ["7419606"] = self.OnSubStart7419606,
        ["7419607"] = self.OnSubStart7419607,
        ["7419608"] = self.OnSubStart7419608,
        ["7419609"] = self.OnSubStart7419609,
        ["7419610"] = self.OnSubStart7419610,
        ["7419611"] = self.OnSubStart7419611,
        ["7419612"] = self.OnSubStart7419612,
        ["7419623"] = self.OnSubStart7419623,
        ["7419613"] = self.OnSubStart7419613,
        ["7419614"] = self.OnSubStart7419614,
        ["7419615"] = self.OnSubStart7419615,
        ["7419616"] = self.OnSubStart7419616,
        ["7419619"] = self.OnSubStart7419619,
        ["7419620"] = self.OnSubStart7419620,
        ["7419617"] = self.OnSubStart7419617,
        ["7419618"] = self.OnSubStart7419618
    }
end

function Quest74196:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7419601"] = self.OnSubFinish7419601,
        ["7419602"] = self.OnSubFinish7419602,
        ["7419621"] = self.OnSubFinish7419621,
        ["7419622"] = self.OnSubFinish7419622,
        ["7419603"] = self.OnSubFinish7419603,
        ["7419604"] = self.OnSubFinish7419604,
        ["7419605"] = self.OnSubFinish7419605,
        ["7419606"] = self.OnSubFinish7419606,
        ["7419607"] = self.OnSubFinish7419607,
        ["7419608"] = self.OnSubFinish7419608,
        ["7419609"] = self.OnSubFinish7419609,
        ["7419610"] = self.OnSubFinish7419610,
        ["7419611"] = self.OnSubFinish7419611,
        ["7419612"] = self.OnSubFinish7419612,
        ["7419623"] = self.OnSubFinish7419623,
        ["7419613"] = self.OnSubFinish7419613,
        ["7419614"] = self.OnSubFinish7419614,
        ["7419615"] = self.OnSubFinish7419615,
        ["7419616"] = self.OnSubFinish7419616,
        ["7419619"] = self.OnSubFinish7419619,
        ["7419620"] = self.OnSubFinish7419620,
        ["7419617"] = self.OnSubFinish7419617,
        ["7419618"] = self.OnSubFinish7419618
    }
end

function Quest74196:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74196:Start()
    print("Start")
end

function Quest74196:OnDestroy()
    print("OnDestroy")
end

function Quest74196:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74196:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74196:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74196:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest74196:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74196:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74196:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74196:OnSubStart7419601(arg1)
    print("OnSubStart7419601")
end

function Quest74196:OnSubFinish7419601(arg1)
    print("OnSubFinish7419601")
end

function Quest74196:OnSubStart7419602(arg1)
    print("OnSubStart7419602")
    this:PlayCutsceneIndex(7419602, function(arg1)
        actorUtils.FinishQuestID(false, 7419602)
    end, nil, nil, false)
end

function Quest74196:OnSubFinish7419602(arg1)
    print("OnSubFinish7419602")
end

function Quest74196:OnSubStart7419621(arg1)
    print("OnSubStart7419621")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21354Data.id, 7419621, 0, 30, 1)
end

function Quest74196:OnSubFinish7419621(arg1)
    print("OnSubFinish7419621")
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21354Data.alias)
end

function Quest74196:OnSubStart7419622(arg1)
    print("OnSubStart7419622")
    actorMgr:CreateActorWithPos("Q74196Trigger4", "Actor/Gadget/Q74196Trigger4", 70900002, 0, {x = 1581.547, y = 350.091, z = 3667.638}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74196:OnSubFinish7419622(arg1)
    print("OnSubFinish7419622")
end

function Quest74196:OnSubStart7419603(arg1)
    print("OnSubStart7419603")
    actorMgr:CreateActorWithPos("Q74196Trigger", "Actor/Gadget/Q74196Trigger", 70900002, 0, {x = 1506.244, y = 358.461, z = 3592.642}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74196:OnSubFinish7419603(arg1)
    print("OnSubFinish7419603")
    this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId_01, 3)
end

function Quest74196:OnSubStart7419604(arg1)
    print("OnSubStart7419604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.PaimonData.id, 7419604, 0, 20, 1)
end

function Quest74196:OnSubFinish7419604(arg1)
    print("OnSubFinish7419604")
    this:NpcDestroyWithBlackscreen(11, npcs.PaimonData.alias)
end

function Quest74196:OnSubStart7419605(arg1)
    print("OnSubStart7419605")
    this:NpcCreateWithNpcTrigger(npcs.Npc21447Data.id, 7419605, 0, 25)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21447Data.alias)
    questNpcActor:DoFreeStyle(1, true, nil, true, true, false, false)
    questNpcActor:SpawnAttachEx("Eff_Monster_Golem_Centaur_Alert_Base")
    this:CreateQuestNpc(arg1, npcs.Npc21398Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21399Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21400Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21401Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21402Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21403Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21404Data.id, 0)
end

function Quest74196:OnSubFinish7419605(arg1)
    print("OnSubFinish7419605")
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21447Data.alias)
end

function Quest74196:OnSubStart7419606(arg1)
    print("OnSubStart7419606")
    this:CreateQuestNpc(arg1, npcs.Npc21398Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21399Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21400Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21401Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21402Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21403Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21404Data.id, 0)
    this:NarratorOnlyTaskByData(datas.NarratorWithId2)
end

function Quest74196:OnSubFinish7419606(arg1)
    print("OnSubFinish7419606")
end

function Quest74196:OnSubStart7419607(arg1)
    print("OnSubStart7419607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21447Data.id, 7419607, 0, 30, 1)
    this:CreateQuestNpc(arg1, npcs.Npc21398Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21399Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21400Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21401Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21402Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21403Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21404Data.id, 0)
end

function Quest74196:OnSubFinish7419607(arg1)
    print("OnSubFinish7419607")
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21447Data.alias)
end

function Quest74196:OnSubStart7419608(arg1)
    print("OnSubStart7419608")
    this:CreateQuestNpc(arg1, npcs.Npc21398Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21399Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21400Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21401Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21402Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21403Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21404Data.id, 0)
end

function Quest74196:OnSubFinish7419608(arg1)
    print("OnSubFinish7419608")
    this:TransmitPlayerWithTextById(arg1, 5, nil, 3)
end

function Quest74196:OnSubStart7419609(arg1)
    print("OnSubStart7419609")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21447Data.id, 7419609, 0, 20, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21461Data.id, 7419609, 0, 20, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21463Data.id, 7419609, 0, 20, 1)
    this:CreateQuestNpc(arg1, npcs.Npc21398Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21399Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21400Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21401Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21402Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21403Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21404Data.id, 0)
end

function Quest74196:OnSubFinish7419609(arg1)
    print("OnSubFinish7419609")
    this:TransmitPlayerWithTextById(arg1, 6, nil, 3)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21447Data.alias)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21461Data.alias)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21463Data.alias)
end

function Quest74196:OnSubStart7419610(arg1)
    print("OnSubStart7419610")
    this:CreateQuestNpc(arg1, npcs.Npc21398Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21399Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21400Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21401Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21402Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21403Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21404Data.id, 0)
    this:NarratorOnlyTaskByData(datas.NarratorWithId4)
end

function Quest74196:OnSubFinish7419610(arg1)
    print("OnSubFinish7419610")
end

function Quest74196:OnSubStart7419611(arg1)
    print("OnSubStart7419611")
    this:CreateQuestNpc(arg1, npcs.Npc21398Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21399Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21400Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21401Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21402Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21403Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21404Data.id, 0)
    this:PlayCutsceneIndex(7419611, function(arg1)
        actorUtils.FinishQuestID(false, 7419611)
    end, nil, nil, false)
end

function Quest74196:OnSubFinish7419611(arg1)
    print("OnSubFinish7419611")
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21398Data.alias)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21399Data.alias)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21400Data.alias)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21401Data.alias)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21402Data.alias)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21403Data.alias)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21404Data.alias)
end

function Quest74196:OnSubStart7419612(arg1)
    print("OnSubStart7419612")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21464Data.id, 7419612, 0, 20, 1)
end

function Quest74196:OnSubFinish7419612(arg1)
    print("OnSubFinish7419612")
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21464Data.alias)
end

function Quest74196:OnSubStart7419623(arg1)
    print("OnSubStart7419623")
    local groupEntityCreateTask = curtainUtils.CreateGroupEntityCreateTask({{groupId = 133405030, configId = 30001}})
    this:ShowBlackScreen(1, 3, 0, nil, function(arg1_2)
        this:ShowBlackScreen(0, 2, 0, nil, nil, nil, "", false, true)
        this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21431Data.id, 0)
        actorUtils.FinishQuestID(false, 7419623)
    end, groupEntityCreateTask, "", false, true)
end

function Quest74196:OnSubFinish7419623(arg1)
    print("OnSubFinish7419623")
end

function Quest74196:OnSubStart7419613(arg1)
    print("OnSubStart7419613")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21431Data.id, 0)
end

function Quest74196:OnSubFinish7419613(arg1)
    print("OnSubFinish7419613")
    this:QuestNarratorTask(datas.NarratorWithId5)
end

function Quest74196:OnSubStart7419614(arg1)
    print("OnSubStart7419614")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc21431Data.id, 0)
    actorMgr:CreateActorWithPos("Q74196Trigger3", "Actor/Gadget/Q74196Trigger3", 70900002, 0, {x = 1507.993, y = -414.0, z = 3567.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 11)
end

function Quest74196:OnSubFinish7419614(arg1)
    print("OnSubFinish7419614")
    this:SafeDestroyQuestNpc(npcs.Npc21431Data.alias, 11)
end

function Quest74196:OnSubStart7419615(arg1)
    print("OnSubStart7419615")
    this:CreateQuestNpc(arg1, npcs.Npc21354Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21431Data.id, 7419615, 0, 30, 1)
end

function Quest74196:OnSubFinish7419615(arg1)
    print("OnSubFinish7419615")
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21354Data.alias)
    this:NpcDestroyWithBlackscreen(11, npcs.Npc21431Data.alias)
end

function Quest74196:OnSubStart7419616(arg1)
    print("OnSubStart7419616")
end

function Quest74196:OnSubFinish7419616(arg1)
    print("OnSubFinish7419616")
    this:TransmitPlayerWithDialogTextByQuestId(7419616, 2, datas.DialogsId_01, 5)
end

function Quest74196:OnSubStart7419619(arg1)
    print("OnSubStart7419619")
    actorMgr:CreateActorWithPos("Q74196Trigger5", "Actor/Gadget/Q74196Trigger5", 70900002, 0, {x = 1228.609, y = 282.0, z = 4464.49}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74196:OnSubFinish7419619(arg1)
    print("OnSubFinish7419619")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerWithTextById(arg1, 3, nil, 4.6)
    end)
end

function Quest74196:OnSubStart7419620(arg1)
    print("OnSubStart7419620")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21354Data.id, 7419620, 0, 30, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21431Data.id, 7419620, 0, 30, 1)
end

function Quest74196:OnSubFinish7419620(arg1)
    print("OnSubFinish7419620")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21354Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21431Data.alias)
end

function Quest74196:OnSubStart7419617(arg1)
    print("OnSubStart7419617")
end

function Quest74196:OnSubFinish7419617(arg1)
    print("OnSubFinish7419617")
end

function Quest74196:OnSubStart7419618(arg1)
    print("OnSubStart7419618")
end

function Quest74196:OnSubFinish7419618(arg1)
    print("OnSubFinish7419618")
end

return Quest74196
