require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest4006 = class("Quest4006", QuestActorProxy)
Quest4006.defaultAlias = "Quest4006"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest4006:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest4006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["400601"] = self.OnSubStart400601,
        ["400618"] = self.OnSubStart400618,
        ["400621"] = self.OnSubStart400621,
        ["400619"] = self.OnSubStart400619,
        ["400625"] = self.OnSubStart400625,
        ["400624"] = self.OnSubStart400624,
        ["400602"] = self.OnSubStart400602,
        ["400626"] = self.OnSubStart400626,
        ["400603"] = self.OnSubStart400603,
        ["400604"] = self.OnSubStart400604,
        ["400620"] = self.OnSubStart400620,
        ["400605"] = self.OnSubStart400605,
        ["400606"] = self.OnSubStart400606,
        ["400607"] = self.OnSubStart400607,
        ["400622"] = self.OnSubStart400622,
        ["400608"] = self.OnSubStart400608,
        ["400609"] = self.OnSubStart400609,
        ["400623"] = self.OnSubStart400623,
        ["400610"] = self.OnSubStart400610,
        ["400611"] = self.OnSubStart400611,
        ["400612"] = self.OnSubStart400612,
        ["400613"] = self.OnSubStart400613,
        ["400614"] = self.OnSubStart400614,
        ["400615"] = self.OnSubStart400615,
        ["400627"] = self.OnSubStart400627,
        ["400616"] = self.OnSubStart400616,
        ["400617"] = self.OnSubStart400617
    }
end

function Quest4006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["400601"] = self.OnSubFinish400601,
        ["400618"] = self.OnSubFinish400618,
        ["400621"] = self.OnSubFinish400621,
        ["400619"] = self.OnSubFinish400619,
        ["400625"] = self.OnSubFinish400625,
        ["400624"] = self.OnSubFinish400624,
        ["400602"] = self.OnSubFinish400602,
        ["400626"] = self.OnSubFinish400626,
        ["400603"] = self.OnSubFinish400603,
        ["400604"] = self.OnSubFinish400604,
        ["400620"] = self.OnSubFinish400620,
        ["400605"] = self.OnSubFinish400605,
        ["400606"] = self.OnSubFinish400606,
        ["400607"] = self.OnSubFinish400607,
        ["400622"] = self.OnSubFinish400622,
        ["400608"] = self.OnSubFinish400608,
        ["400609"] = self.OnSubFinish400609,
        ["400623"] = self.OnSubFinish400623,
        ["400610"] = self.OnSubFinish400610,
        ["400611"] = self.OnSubFinish400611,
        ["400612"] = self.OnSubFinish400612,
        ["400613"] = self.OnSubFinish400613,
        ["400614"] = self.OnSubFinish400614,
        ["400615"] = self.OnSubFinish400615,
        ["400627"] = self.OnSubFinish400627,
        ["400616"] = self.OnSubFinish400616,
        ["400617"] = self.OnSubFinish400617
    }
end

function Quest4006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["400610"] = self.OnSubFailed400610}
end

function Quest4006:Start()
    print("Start")
end

function Quest4006:OnDestroy()
    print("OnDestroy")
end

function Quest4006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest4006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest4006:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest4006:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest4006:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest400622")
        actorUtils.FinishQuestID(false, 400622)
    end
end

function Quest4006:OnSubStart400601(arg1)
    print("OnSubStart400601")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13365Data.id, 0)
        actorMgr:CreateActorWithPos("Q4006Trigger", "Actor/Gadget/Q4006Trigger", 70900002, 0, points.TPos_Q4006Trigger.pos, points.TPos_Q4006Trigger.rot, true, false, 1085)
        this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    end)
end

function Quest4006:OnSubFinish400601(arg1)
    print("OnSubFinish400601")
    this:ActorDestroy("Q4006Trigger")
end

function Quest4006:OnSubStart400618(arg1)
    print("OnSubStart400618")
end

function Quest4006:OnSubFinish400618(arg1)
    print("OnSubFinish400618")
end

function Quest4006:OnSubStart400621(arg1)
    print("OnSubStart400621")
    actorMgr:CreateActorWithPos("Q4006Trigger2", "Actor/Gadget/Q4006Trigger2", 70900002, 0, {x = 0.137, y = 7.338, z = 155.75}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
end

function Quest4006:OnSubFinish400621(arg1)
    print("OnSubFinish400621")
    this:ActorDestroy("Q4006Trigger2")
end

function Quest4006:OnSubStart400619(arg1)
    print("OnSubStart400619")
    actorMgr:CreateActorWithPos("Q4006Trigger3", "Actor/Gadget/Q4006Trigger3", 70900002, 0, {x = 0.248, y = 7.341, z = 100.973}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    globalActor:EndGuide("GuideQuestEventsSkill")
    globalActor:EndGuide("GuideQuestEvents")
    globalActor:EndGuide("GuideQuestEventsSkillPC")
    globalActor:EndGuide("GuideQuestEventsPC")
    globalActor:EndGuide("GuideQuestEventsSkillPS")
    globalActor:EndGuide("GuideQuestEventsPS")
end

function Quest4006:OnSubFinish400619(arg1)
    print("OnSubFinish400619")
    this:ActorDestroy("Q4006Trigger3")
    globalActor:StartGuide("GuideQuestEventsSkill")
end

function Quest4006:OnSubStart400625(arg1)
    print("OnSubStart400625")
end

function Quest4006:OnSubFinish400625(arg1)
    print("OnSubFinish400625")
end

function Quest4006:OnSubStart400624(arg1)
    print("OnSubStart400624")
end

function Quest4006:OnSubFinish400624(arg1)
    print("OnSubFinish400624")
end

function Quest4006:OnSubStart400602(arg1)
    print("OnSubStart400602")
end

function Quest4006:OnSubFinish400602(arg1)
    print("OnSubFinish400602")
end

function Quest4006:OnSubStart400626(arg1)
    print("OnSubStart400626")
    this:CreateQuestNpc(arg1, npcs.Npc1071Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1072Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13365Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13394Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13366Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13367Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13369Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13369Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13370Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13370Data.alias):DoFreeStyle(1211, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13371Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13372Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13372Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13311Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13312Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13496Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13497Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13372Data.alias):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13600Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13674Data.id, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1075Data.alias)
    questNpcActor:SitOnChair(0, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13311Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13312Data.alias):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc13361Data.id, 0)
    local v = this:GetQuestNpcActor(npcs.Npc13361Data.alias)
    v:DoFreeStyle(4221, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
end

function Quest4006:OnSubFinish400626(arg1)
    print("OnSubFinish400626")
    this:CallDelayByQuest("400626", 2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_400601)
    end)

    globalActor:EndGuide("GuideQuestEventsSkill")
    globalActor:EndGuide("GuideQuestEvents")
    globalActor:EndGuide("GuideQuestEventsSkillPC")
    globalActor:EndGuide("GuideQuestEventsPC")
    globalActor:EndGuide("GuideQuestEventsSkillPS")
    globalActor:EndGuide("GuideQuestEventsPS")
end

function Quest4006:OnSubStart400603(arg1)
    print("OnSubStart400603")
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13369Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13370Data.alias):DoFreeStyle(1211, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13372Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13372Data.alias):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q4006Trigger7", "Actor/Gadget/Q4006Trigger7", 70900002, 0, points.TPos_Q4006Trigger7.pos, points.TPos_Q4006Trigger7.rot, true, false, 1085)
    this:CreateQuestNpc(arg1, npcs.Npc13329Data.id, 0)
    actorMgr:CreateActorWithPos("Q4006Trigger8", "Actor/Gadget/Q4006Trigger8", 70900002, 0, {x = -9.471, y = -46.26, z = 103.159}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1075Data.alias)
    questNpcActor:SitOnChair(0, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13311Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13312Data.alias):DisableInteeHeadCtrl(true)
    local v = this:GetQuestNpcActor(npcs.Npc13361Data.alias)
    v:DoFreeStyle(4221, true, nil, true, true, false, false)
    v:DisableInteeHeadCtrl(true)
end

function Quest4006:OnSubFinish400603(arg1)
    print("OnSubFinish400603")
    this:TransmitPlayerWithDialogTextByQuestId(400603, 1, nil, 0)
    this:ActorDestroy("Q4006Trigger7")
    this:ClearNarratorTask()
    this:UnCallDelayByQuest("400626")
end

function Quest4006:OnSubStart400604(arg1)
    print("OnSubStart400604")
    this:CreateQuestNpcWithTriggerBlackEx("400604tri", 400604, 1071, 0, 10, 0.5, 1, 0.5, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13328Data.id, 0)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4006:OnSubFinish400604(arg1)
    print("OnSubFinish400604")
    this:ActorDestroy("400604tri")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 1085)
    this:GetQuestNpcActor(npcs.Npc1071Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13372Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13674Data.alias, 1085)
    this:GetQuestNpcActor(npcs.Npc1075Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13311Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13312Data.alias):DisableInteeHeadCtrl(false)
end

function Quest4006:OnSubStart400620(arg1)
    print("OnSubStart400620")
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13369Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13370Data.alias):DoFreeStyle(1211, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4006Trigger4", "Actor/Gadget/Q4006Trigger4", 70900002, 0, points.TPos_Q4006Trigger4.pos, points.TPos_Q4006Trigger4.rot, true, false, 1085)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13361Data.alias)
    questNpcActor:DoFreeStyle(4221, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest4006:OnSubFinish400620(arg1)
    print("OnSubFinish400620")
    this:ActorDestroy("Q4006Trigger4")
end

function Quest4006:OnSubStart400605(arg1)
    print("OnSubStart400605")
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13369Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13370Data.alias):DoFreeStyle(1211, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc13395Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13396Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13397Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13398Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13498Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13499Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13500Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13501Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13502Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13328Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc13329Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13361Data.alias)
    questNpcActor:DoFreeStyle(4221, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest4006:OnSubFinish400605(arg1)
    print("OnSubFinish400605")
    this:DestroyQuestNpcActor(npcs.Npc13361Data.alias, 1085)
    this:CallDelayByQuest("400605", 2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_400602)
    end)
end

function Quest4006:OnSubStart400606(arg1)
    print("OnSubStart400606")
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13369Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13370Data.alias):DoFreeStyle(1211, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q4006Trigger1", "Actor/Gadget/Q4006Trigger1", 70900002, 0, {x = -0.21, y = 16.857, z = 97.699}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13361Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc13361Data.alias)
        questNpcActor:DoFreeStyle(1211, true, nil, true, true, false, false)
        questNpcActor:DisableInteeHeadCtrl(true)
    end)
end

function Quest4006:OnSubFinish400606(arg1)
    print("OnSubFinish400606")
    this:ClearNarratorTask()
    this:UnCallDelayByQuest("400605")
end

function Quest4006:OnSubStart400607(arg1)
    print("OnSubStart400607")
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13369Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13370Data.alias):DoFreeStyle(1211, true, nil, true, true, false, false)
    this:CreateQuestNpcWithTriggerBlackEx("400607tri", 400607, 1075, 0, 48, 0, 1, 0.5, 1)
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13361Data.alias)
    questNpcActor:DoFreeStyle(1211, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest4006:OnSubFinish400607(arg1)
    print("OnSubFinish400607")
    this:ActorDestroy("400607tri")
    this:CallDelayByQuest("400607", 2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_400603)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 1085)
end

function Quest4006:OnSubStart400622(arg1)
    print("OnSubStart400622")
end

function Quest4006:OnSubFinish400622(arg1)
    print("OnSubFinish400622")
end

function Quest4006:OnSubStart400608(arg1)
    print("OnSubStart400608")
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13369Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13370Data.alias):DoFreeStyle(1211, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13361Data.alias)
    questNpcActor:DoFreeStyle(1211, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest4006:OnSubFinish400608(arg1)
    print("OnSubFinish400608")
    this:SafeDestroyQuestNpc(npcs.Npc13365Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13394Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13366Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13367Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13369Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13370Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13371Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13395Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13396Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13397Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13398Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13496Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13497Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13498Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13499Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13500Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13501Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13502Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc13328Data.alias, 1085)
    this:GetQuestNpcActor(npcs.Npc13365Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13366Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc13367Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc13600Data.alias, 1085)
    this:ClearNarratorTask()
    this:UnCallDelayByQuest("400607")
    this:SafeDestroyQuestNpc(npcs.Npc13361Data.alias, 1085)
end

function Quest4006:OnSubStart400609(arg1)
    print("OnSubStart400609")
    this:CreateQuestNpcWithTriggerBlackEx("400609tri", 400609, 1075, 0, 30, 0.5, 1, 0.5, 1)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4006:OnSubFinish400609(arg1)
    print("OnSubFinish400609")
    this:DestroyQuestNpcActor(npcs.Npc1075Data.alias, 1085)
    this:ActorDestroy("400609tri")
    this:TransmitPlayerWithDialogTextByQuestId(400609, 1, nil, 0)
    this:DestroyQuestNpcActor(npcs.Npc13329Data.alias, 1085)
end

function Quest4006:OnSubStart400623(arg1)
    print("OnSubStart400623")
    actorMgr:CreateActorWithPos("Q4006Trigger6", "Actor/Gadget/Q4006Trigger6", 70900002, 0, points.TPos_Q4006Trigger6.pos, points.TPos_Q4006Trigger6.rot, true, false, 1085)
end

function Quest4006:OnSubFinish400623(arg1)
    print("OnSubFinish400623")
    this:ActorDestroy("Q4006Trigger6")
end

function Quest4006:OnSubStart400610(arg1)
    print("OnSubStart400610")
    this:CreateQuestNpcWithTriggerBlackEx("400610tri", 400610, 1071, 0, 30, 0.5, 1, 0.5, 1)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4006:OnSubFinish400610(arg1)
    print("OnSubFinish400610")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 1085)
    this:SafeDestroyQuestNpc(npcs.Npc1072Data.alias, 1085)
    this:ActorDestroy("400610tri")
end

function Quest4006:OnSubFailed400610(arg1)
    print("OnSubFailed400610")
    this:ActorDestroy("400610tri")
end

function Quest4006:OnSubStart400611(arg1)
    print("OnSubStart400611")
    this:CreateQuestNpc(arg1, npcs.Npc13330Data.id, 0)
    actorMgr:CreateActorWithPos("Q4006Trigger5", "Actor/Gadget/Q4006Trigger5", 70900002, 0, {x = 0.576, y = 17.002, z = 98.563}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1085)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4006:OnSubFinish400611(arg1)
    print("OnSubFinish400611")
    this:DestroyQuestNpcActor(npcs.Npc13330Data.alias, 1085)
    this:ActorDestroy("Q4006Trigger5")
end

function Quest4006:OnSubStart400612(arg1)
    print("OnSubStart400612")
    this:CreateQuestNpcWithTriggerBlackEx("400612tri", 400612, 1071, 0, 30, 0.5, 1, 0.5, 1)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4006:OnSubFinish400612(arg1)
    print("OnSubFinish400612")
    this:ActorDestroy("400612tri")
end

function Quest4006:OnSubStart400613(arg1)
    print("OnSubStart400613")
    this:CreateQuestNpcWithTriggerBlackEx("400613tri", 400613, 1071, 0, 40, 0.5, 1, 0.5, 1)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4006:OnSubFinish400613(arg1)
    print("OnSubFinish400613")
    this:ActorDestroy("400613tri")
end

function Quest4006:OnSubStart400614(arg1)
    print("OnSubStart400614")
    this:CreateQuestNpcWithTriggerBlackEx("400614tri", 400614, 1071, 0, 40, 0.5, 1, 0.5, 1)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4006:OnSubFinish400614(arg1)
    print("OnSubFinish400614")
    this:ActorDestroy("400614tri")
end

function Quest4006:OnSubStart400615(arg1)
    print("OnSubStart400615")
    this:CreateQuestNpcWithTriggerBlackEx("400615tri", 400615, 1071, 0, 40, 0.5, 1, 0.5, 1)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4006:OnSubFinish400615(arg1)
    print("OnSubFinish400615")
    this:DestroyQuestNpcActor(npcs.Npc1075Data.alias, 1085)
    this:TransmitPlayerWithDialogTextByQuestId(400615, 1, datas.DialogsId, 5)
end

function Quest4006:OnSubStart400627(arg1)
    print("OnSubStart400627")
    local v = this
    local v2 = v
    local questLimitRegionTask = v.QuestLimitRegionTask
    local n = 400627
    local n2 = 1085
    local tbl = {1085}
    local tbl2 = {x = 0, y = 0, z = 0}
    local tbl3 = {}
    local n3 = 0
    local n4 = 0
    tbl3[1] = 0
    tbl3[2] = n3
    tbl3[3] = n4
    questLimitRegionTask(v2, n, n2, tbl, tbl2, tbl3, 1, 210, 230, 0.3, "QUEST_Message_Q300790", "QUEST_Message_Q300791", nil)
end

function Quest4006:OnSubFinish400627(arg1)
    print("OnSubFinish400627")
    self:ClearQuestLimitRegionTask()
end

function Quest4006:OnSubStart400616(arg1)
    print("OnSubStart400616")
    this:CreateQuestNpcWithTriggerBlackEx("400616tri", 400616, 1071, 0, 20, 0.5, 1, 0.5, 1)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4006:OnSubFinish400616(arg1)
    print("OnSubFinish400616")
    this:SafeDestroyQuestNpc(npcs.Npc1071Data.alias, 1085)
end

function Quest4006:OnSubStart400617(arg1)
    print("OnSubStart400617")
    this:CreateQuestNpcWithTriggerBlackEx("400617tri", 400617, 1075, 0, 5, 0.5, 1, 0.5, 1)
    this:NotifyTo(npcs.Npc5100Data.alias, 1, true)
end

function Quest4006:OnSubFinish400617(arg1)
    print("OnSubFinish400617")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 1085)
    this:LightNotifyTo(npcs.Npc5100Data.alias, 0, true)
end

return Quest4006
