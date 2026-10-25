require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76023 = class("Quest76023", QuestActorProxy)
Quest76023.defaultAlias = "Quest76023"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76023:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7602301"] = self.OnSubStart7602301,
        ["7602302"] = self.OnSubStart7602302,
        ["7602303"] = self.OnSubStart7602303,
        ["7602324"] = self.OnSubStart7602324,
        ["7602304"] = self.OnSubStart7602304,
        ["7602305"] = self.OnSubStart7602305,
        ["7602306"] = self.OnSubStart7602306,
        ["7602307"] = self.OnSubStart7602307,
        ["7602308"] = self.OnSubStart7602308,
        ["7602325"] = self.OnSubStart7602325,
        ["7602309"] = self.OnSubStart7602309,
        ["7602310"] = self.OnSubStart7602310,
        ["7602311"] = self.OnSubStart7602311,
        ["7602312"] = self.OnSubStart7602312,
        ["7602313"] = self.OnSubStart7602313,
        ["7602314"] = self.OnSubStart7602314,
        ["7602315"] = self.OnSubStart7602315,
        ["7602316"] = self.OnSubStart7602316,
        ["7602317"] = self.OnSubStart7602317,
        ["7602318"] = self.OnSubStart7602318,
        ["7602321"] = self.OnSubStart7602321,
        ["7602319"] = self.OnSubStart7602319,
        ["7602320"] = self.OnSubStart7602320
    }
end

function Quest76023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7602301"] = self.OnSubFinish7602301,
        ["7602302"] = self.OnSubFinish7602302,
        ["7602303"] = self.OnSubFinish7602303,
        ["7602324"] = self.OnSubFinish7602324,
        ["7602304"] = self.OnSubFinish7602304,
        ["7602305"] = self.OnSubFinish7602305,
        ["7602306"] = self.OnSubFinish7602306,
        ["7602307"] = self.OnSubFinish7602307,
        ["7602308"] = self.OnSubFinish7602308,
        ["7602325"] = self.OnSubFinish7602325,
        ["7602309"] = self.OnSubFinish7602309,
        ["7602310"] = self.OnSubFinish7602310,
        ["7602311"] = self.OnSubFinish7602311,
        ["7602312"] = self.OnSubFinish7602312,
        ["7602313"] = self.OnSubFinish7602313,
        ["7602314"] = self.OnSubFinish7602314,
        ["7602315"] = self.OnSubFinish7602315,
        ["7602316"] = self.OnSubFinish7602316,
        ["7602317"] = self.OnSubFinish7602317,
        ["7602318"] = self.OnSubFinish7602318,
        ["7602321"] = self.OnSubFinish7602321,
        ["7602319"] = self.OnSubFinish7602319,
        ["7602320"] = self.OnSubFinish7602320
    }
end

function Quest76023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76023:Start()
    print("Start")
end

function Quest76023:OnDestroy()
    print("OnDestroy")
end

function Quest76023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76023:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7602301Trigger")
    this:ActorDestroy("Q7602316Trigger")
    this:ActorDestroy("Q7602319Trigger")
    this:ActorDestroy("Q7602317Trigger")
    this:ActorDestroy("Q7602320Trigger")
    this:ActorDestroy("Q7602301Trigger_reminder01")
    this:ActorDestroy("Q7602324_Trigger_RocketArea")
    this:ActorDestroy("Q76023Trigger")
    this:ActorDestroy("Q7602314igger_1")
    this:ActorDestroy("Q7602314igger_2")
    this:ActorDestroy("Q7602315igger")
end

function Quest76023:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76023:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76023:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76023:OnSubStart7602301(arg1)
    print("OnSubStart7602301")
    this:CreateQuestNpc(arg1, npcs.Npc21945.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7602301Trigger_reminder01", "Actor/Gadget/Q7602301Trigger_reminder01", 70900002, 0, points._Q7602301Trigger_reminder01Point_.pos, points._Q7602301Trigger_reminder01Point_.rot, true, false, 3)
    actorUtils.FinishQuestID(false, 7602301)
end

function Quest76023:OnSubFinish7602301(arg1)
    print("OnSubFinish7602301")
end

function Quest76023:OnSubStart7602302(arg1)
    print("OnSubStart7602302")
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(1280, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7602301Trigger", "Actor/Gadget/Q7602301Trigger", 70900002, 0, points._Q7602301TriggerPoint_.pos, points._Q7602301TriggerPoint_.rot, true, false, 3)
end

function Quest76023:OnSubFinish7602302(arg1)
    print("OnSubFinish7602302")
    this:SetNavigationByMainId(76023, true)
end

function Quest76023:OnSubStart7602303(arg1)
    print("OnSubStart7602303")
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):TurnToAvatar()
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(4473, true, nil, true, true, false, false)
end

function Quest76023:OnSubFinish7602303(arg1)
    print("OnSubFinish7602303")
end

function Quest76023:OnSubStart7602324(arg1)
    print("OnSubStart7602324")
    actorMgr:CreateActorWithPos("Q7602324_Trigger_RocketArea", "Actor/Gadget/Q7602324_Trigger_RocketArea", 70900002, 0, points._Q7602324_Trigger_RocketAreaPoint_.pos, points._Q7602324_Trigger_RocketAreaPoint_.rot, true, false, 3)
end

function Quest76023:OnSubFinish7602324(arg1)
    print("OnSubFinish7602324")
end

function Quest76023:OnSubStart7602304(arg1)
    print("OnSubStart7602304")
end

function Quest76023:OnSubFinish7602304(arg1)
    print("OnSubFinish7602304")
end

function Quest76023:OnSubStart7602305(arg1)
    print("OnSubStart7602305")
    this:PlayCutsceneIndex(7602301, function(arg1)
        actorUtils.FinishQuestID(false, 7602305)
    end, nil, nil, false)
end

function Quest76023:OnSubFinish7602305(arg1)
    print("OnSubFinish7602305")
    this:CallDelayByQuest("", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7602303, nil)
    end)
end

function Quest76023:OnSubStart7602306(arg1)
    print("OnSubStart7602306")
    this:CreateQuestNpc(arg1, npcs.Npc21945.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):EnableInteractionWithUIEx(true)
end

function Quest76023:OnSubFinish7602306(arg1)
    print("OnSubFinish7602306")
end

function Quest76023:OnSubStart7602307(arg1)
    print("OnSubStart7602307")
end

function Quest76023:OnSubFinish7602307(arg1)
    print("OnSubFinish7602307")
end

function Quest76023:OnSubStart7602308(arg1)
    print("OnSubStart7602308")
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(4221, true, nil, true, true, false, false)
end

function Quest76023:OnSubFinish7602308(arg1)
    print("OnSubFinish7602308")
end

function Quest76023:OnSubStart7602325(arg1)
    print("OnSubStart7602325")
    this:PlayCutsceneIndex(7602302, function(arg1)
        actorUtils.FinishQuestID(false, 7602325)
    end, nil, nil, false)
end

function Quest76023:OnSubFinish7602325(arg1)
    print("OnSubFinish7602325")
end

function Quest76023:OnSubStart7602309(arg1)
    print("OnSubStart7602309")
    this:CreateQuestNpc(arg1, npcs.Npc21945.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):EnableInteractionWithUIEx(true)
end

function Quest76023:OnSubFinish7602309(arg1)
    print("OnSubFinish7602309")
end

function Quest76023:OnSubStart7602310(arg1)
    print("OnSubStart7602310")
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76023:OnSubFinish7602310(arg1)
    print("OnSubFinish7602310")
end

function Quest76023:OnSubStart7602311(arg1)
    print("OnSubStart7602311")
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(4221, true, nil, true, true, false, false)
end

function Quest76023:OnSubFinish7602311(arg1)
    print("OnSubFinish7602311")
end

function Quest76023:OnSubStart7602312(arg1)
    print("OnSubStart7602312")
    this:PlayCutsceneIndex(7602303, function(arg1)
        actorUtils.FinishQuestID(false, 7602312)
    end, nil, nil, false)
end

function Quest76023:OnSubFinish7602312(arg1)
    print("OnSubFinish7602312")
end

function Quest76023:OnSubStart7602313(arg1)
    print("OnSubStart7602313")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7602313, 0, 20, 0, npcs.Npc21945.id)
    this:RequestInteraction("", "", true)
end

function Quest76023:OnSubFinish7602313(arg1)
    print("OnSubFinish7602313")
    this:CallDelayByQuest("", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7602305, nil)
        this:EnterSceneLookCamera({x = 2649.073, y = 378.471, z = 9287.526}, 0, 3, true, false)
    end)
end

function Quest76023:OnSubStart7602314(arg1)
    print("OnSubStart7602314")
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(1240, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7602314igger_1", "Actor/Gadget/Q7602314igger_1", 70900002, 0, points._Q7602314igger_1Point_.pos, points._Q7602314igger_1Point_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7602314igger_2", "Actor/Gadget/Q7602314igger_2", 70900002, 0, points._Q7602314igger_2Point_.pos, points._Q7602314igger_2Point_.rot, true, false, 3)
end

function Quest76023:OnSubFinish7602314(arg1)
    print("OnSubFinish7602314")
    this:QuestNarratorTask(datas.NarratorWithId_7602308, nil)
end

function Quest76023:OnSubStart7602315(arg1)
    print("OnSubStart7602315")
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(4221, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7602315igger", "Actor/Gadget/Q7602315igger", 70900002, 0, points._Q7602315iggerPoint_.pos, points._Q7602315iggerPoint_.rot, true, false, 3)
end

function Quest76023:OnSubFinish7602315(arg1)
    print("OnSubFinish7602315")
    this:QuestNarratorTask(datas.NarratorWithId_7602310, nil)
end

function Quest76023:OnSubStart7602316(arg1)
    print("OnSubStart7602316")
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(4221, true, nil, true, true, false, false)
end

function Quest76023:OnSubFinish7602316(arg1)
    print("OnSubFinish7602316")
    this:SafeDestroyQuestNpc(npcs.Npc21945.alias, 3)
end

function Quest76023:OnSubStart7602317(arg1)
    print("OnSubStart7602317")
    actorMgr:CreateActorWithPos("Q7602317Trigger", "Actor/Gadget/Q7602317Trigger", 70900002, 0, points._Q7602317TriggerPoint_.pos, points._Q7602317TriggerPoint_.rot, true, false, 3)
end

function Quest76023:OnSubFinish7602317(arg1)
    print("OnSubFinish7602317")
    this:QuestNarratorTask(datas.NarratorWithId_7602311, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7602312, nil)
        this:EnterSceneLookCamera({x = 2573.559, y = 360.983, z = 9220.264}, 0, 3, true, false)
    end)
end

function Quest76023:OnSubStart7602318(arg1)
    print("OnSubStart7602318")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21945.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76023:OnSubFinish7602318(arg1)
    print("OnSubFinish7602318")
    this:CallDelayByQuest("", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7602319, nil)
    end)
end

function Quest76023:OnSubStart7602321(arg1)
    print("OnSubStart7602321")
end

function Quest76023:OnSubFinish7602321(arg1)
    print("OnSubFinish7602321")
    this:CallDelayByQuest("", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7602319, nil)
    end)
end

function Quest76023:OnSubStart7602319(arg1)
    print("OnSubStart7602319")
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76023:OnSubFinish7602319(arg1)
    print("OnSubFinish7602319")
end

function Quest76023:OnSubStart7602320(arg1)
    print("OnSubStart7602320")
    this:GetQuestNpcActor(npcs.Npc21945.alias, 76023):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest76023:OnSubFinish7602320(arg1)
    print("OnSubFinish7602320")
end

return Quest76023
