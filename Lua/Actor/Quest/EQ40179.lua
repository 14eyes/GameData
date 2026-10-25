require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40179 = class("Quest40179", QuestActorProxy)
Quest40179.defaultAlias = "Quest40179"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40179:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40179:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4017901"] = self.OnSubStart4017901,
        ["4017915"] = self.OnSubStart4017915,
        ["4017902"] = self.OnSubStart4017902,
        ["4017903"] = self.OnSubStart4017903,
        ["4017907"] = self.OnSubStart4017907,
        ["4017908"] = self.OnSubStart4017908,
        ["4017909"] = self.OnSubStart4017909,
        ["4017918"] = self.OnSubStart4017918,
        ["4017910"] = self.OnSubStart4017910,
        ["4017911"] = self.OnSubStart4017911,
        ["4017912"] = self.OnSubStart4017912,
        ["4017913"] = self.OnSubStart4017913,
        ["4017914"] = self.OnSubStart4017914,
        ["4017919"] = self.OnSubStart4017919,
        ["4017904"] = self.OnSubStart4017904,
        ["4017916"] = self.OnSubStart4017916,
        ["4017917"] = self.OnSubStart4017917,
        ["4017905"] = self.OnSubStart4017905,
        ["4017906"] = self.OnSubStart4017906
    }
end

function Quest40179:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4017901"] = self.OnSubFinish4017901,
        ["4017915"] = self.OnSubFinish4017915,
        ["4017902"] = self.OnSubFinish4017902,
        ["4017903"] = self.OnSubFinish4017903,
        ["4017907"] = self.OnSubFinish4017907,
        ["4017908"] = self.OnSubFinish4017908,
        ["4017909"] = self.OnSubFinish4017909,
        ["4017918"] = self.OnSubFinish4017918,
        ["4017910"] = self.OnSubFinish4017910,
        ["4017911"] = self.OnSubFinish4017911,
        ["4017912"] = self.OnSubFinish4017912,
        ["4017913"] = self.OnSubFinish4017913,
        ["4017914"] = self.OnSubFinish4017914,
        ["4017919"] = self.OnSubFinish4017919,
        ["4017904"] = self.OnSubFinish4017904,
        ["4017916"] = self.OnSubFinish4017916,
        ["4017917"] = self.OnSubFinish4017917,
        ["4017905"] = self.OnSubFinish4017905,
        ["4017906"] = self.OnSubFinish4017906
    }
end

function Quest40179:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40179:Start()
    print("Start")
end

function Quest40179:OnDestroy()
    print("OnDestroy")
end

function Quest40179:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40179:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40179:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc15103.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc6055.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc6305.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc6228.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14918.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc30762.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14977.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc30791.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc30792.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc30795.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc30796.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 1095)
    this:LightNotifyTo(npcs.Npc6012.alias, 0, true)
    this:ActorDestroy("Q4017906Trigger")
    this:ActorDestroy("Q4017918Trigger")
    this:DestroyNpcTrigger("Q4017903N1092Trigger")
    this:DestroyNpcTrigger("Q4017904N1307Trigger")
    this:DestroyNpcTrigger("Q4017905N1086Trigger")
    this:DestroyNpcTrigger("Q4017906N1307Trigger")
    this:DestroyNpcTrigger("Q4017907N1086Trigger")
    this:DestroyNpcTrigger("Q4017909N1096Trigger")
    this:DestroyNpcTrigger("Q4017911N1092Trigger")
    this:DestroyNpcTrigger("Q4017912N1088Trigger")
    this:DestroyNpcTrigger("Q4017914N1092Trigger")
    this:DestroyNpcTrigger("Q4017915N1307Trigger")
    this:DestroyNpcTrigger("Q4017916N1307Trigger")
    this:DestroyNpcTrigger("Q4017917N1307Trigger")
    this:BanCrowdNpc(1099, 3, nil, false, nil)
end

function Quest40179:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4017906Trigger")
    this:ActorDestroy("Q4017918Trigger")
    this:BanCrowdNpc(1099, 3, nil, false, nil)
end

function Quest40179:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40179:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest40179:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40179:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40179:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40179:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest40179:OnSubStart4017901(arg1)
    print("OnSubStart4017901")
end

function Quest40179:OnSubFinish4017901(arg1)
    print("OnSubFinish4017901")
end

function Quest40179:OnSubStart4017915(arg1)
    print("OnSubStart4017915")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017915, 0, 40, 0, npcs.Npc1307.id)
end

function Quest40179:OnSubFinish4017915(arg1)
    print("OnSubFinish4017915")
    this:NpcDestroyImmediately(1095, npcs.Npc1307.alias)
    this:PlayerEnterDungeonWithData(1491, 1235, 4017915, 1, datas.PlayerEnterDungeonData4017915, nil, nil)
end

function Quest40179:OnSubStart4017902(arg1)
    print("OnSubStart4017902")
    this:DestroyQuestNpcActor(npcs.Npc1086.alias, 20252)
    this:DestroyQuestNpcActor(npcs.Npc1088.alias, 20252)
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20252)
    this:DestroyQuestNpcActor(npcs.Npc1092.alias, 20252)
    this:DestroyQuestNpcActor(npcs.Npc30791.alias, 20252)
    this:DestroyQuestNpcActor(npcs.Npc30792.alias, 20252)
    this:DestroyQuestNpcActor(npcs.Npc30795.alias, 20252)
    this:DestroyQuestNpcActor(npcs.Npc30796.alias, 20252)
    this:DestroyQuestNpcActor(npcs.Npc1091.alias, 20252)
    this:DestroyQuestNpcActor(npcs.Npc1094.alias, 20252)
    this:DestroyNpcTrigger("Q4017903N1092Trigger")
    this:DestroyNpcTrigger("Q4017907N1086Trigger")
    this:DestroyNpcTrigger("Q4017909N1096Trigger")
    this:DestroyNpcTrigger("Q4017911N1092Trigger")
    this:DestroyNpcTrigger("Q4017912N1088Trigger")
    this:DestroyNpcTrigger("Q4017914N1092Trigger")
    this:ActorDestroy("Q4017918Trigger")
end

function Quest40179:OnSubFinish4017902(arg1)
    print("OnSubFinish4017902")
end

function Quest40179:OnSubStart4017903(arg1)
    print("OnSubStart4017903")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1092.id, 0, 4017903, 40, true)
end

function Quest40179:OnSubFinish4017903(arg1)
    print("OnSubFinish4017903")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 20252)
end

function Quest40179:OnSubStart4017907(arg1)
    print("OnSubStart4017907")
    this:NpcCreateWithNpcTrigger(npcs.Npc1086.id, 0, 10, 4017907)
    this:CreateQuestNpc(arg1, npcs.Npc30791.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30792.id, 0, false, 0)
end

function Quest40179:OnSubFinish4017907(arg1)
    print("OnSubFinish4017907")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc30791.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc30792.alias, 20252)
end

function Quest40179:OnSubStart4017908(arg1)
    print("OnSubStart4017908")
end

function Quest40179:OnSubFinish4017908(arg1)
    print("OnSubFinish4017908")
end

function Quest40179:OnSubStart4017909(arg1)
    print("OnSubStart4017909")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017909, 0, 30, 0, npcs.Npc1096.id)
end

function Quest40179:OnSubFinish4017909(arg1)
    print("OnSubFinish4017909")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 20252)
end

function Quest40179:OnSubStart4017918(arg1)
    print("OnSubStart4017918")
    actorMgr:CreateActorWithPos("Q4017918Trigger", "Actor/Gadget/Q4017918Trigger", 70900002, 0, points._Q4017918TriggerPoint_.pos, points._Q4017918TriggerPoint_.rot, true, false, 20252)
end

function Quest40179:OnSubFinish4017918(arg1)
    print("OnSubFinish4017918")
end

function Quest40179:OnSubStart4017910(arg1)
    print("OnSubStart4017910")
end

function Quest40179:OnSubFinish4017910(arg1)
    print("OnSubFinish4017910")
end

function Quest40179:OnSubStart4017911(arg1)
    print("OnSubStart4017911")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017911, 0, 40, 0, npcs.Npc1092.id)
end

function Quest40179:OnSubFinish4017911(arg1)
    print("OnSubFinish4017911")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 20252)
end

function Quest40179:OnSubStart4017912(arg1)
    print("OnSubStart4017912")
    this:NpcCreateWithNpcTrigger(npcs.Npc1088.id, 0, 10, 4017912)
    this:CreateQuestNpc(arg1, npcs.Npc30795.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30796.id, 0, false, 0)
end

function Quest40179:OnSubFinish4017912(arg1)
    print("OnSubFinish4017912")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc30795.alias, 20252)
    this:SafeDestroyQuestNpc(npcs.Npc30796.alias, 20252)
end

function Quest40179:OnSubStart4017913(arg1)
    print("OnSubStart4017913")
end

function Quest40179:OnSubFinish4017913(arg1)
    print("OnSubFinish4017913")
end

function Quest40179:OnSubStart4017914(arg1)
    print("OnSubStart4017914")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017914, 0, 40, 0, npcs.Npc1092.id)
end

function Quest40179:OnSubFinish4017914(arg1)
    print("OnSubFinish4017914")
    this:NpcDestroyImmediately(20252, npcs.Npc1092.alias)
end

function Quest40179:OnSubStart4017919(arg1)
    print("OnSubStart4017919")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20252 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData4017919, nil, nil, nil)
            end
        end)
    end)
end

function Quest40179:OnSubFinish4017919(arg1)
    print("OnSubFinish4017919")
end

function Quest40179:OnSubStart4017904(arg1)
    print("OnSubStart4017904")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1307.id, 0, 4017904, 40, true)
end

function Quest40179:OnSubFinish4017904(arg1)
    print("OnSubFinish4017904")
end

function Quest40179:OnSubStart4017916(arg1)
    print("OnSubStart4017916")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017916, 0, 40, 0, npcs.Npc1307.id)
end

function Quest40179:OnSubFinish4017916(arg1)
    print("OnSubFinish4017916")
end

function Quest40179:OnSubStart4017917(arg1)
    print("OnSubStart4017917")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4017917, 0, 40, 0, npcs.Npc1307.id)
end

function Quest40179:OnSubFinish4017917(arg1)
    print("OnSubFinish4017917")
    this:SafeDestroyQuestNpc(npcs.Npc1307.alias, 3)
end

function Quest40179:OnSubStart4017905(arg1)
    print("OnSubStart4017905")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc1086.id, 0, 40, 4017905)
        this:CreateQuestNpc(arg1, npcs.Npc1098.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1098.alias, 40179):DoFreeStyle(1060, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15103.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc6055.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc6100.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc6305.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc6092.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6092.alias, 40179):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc6228.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc6228.alias, 40179):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14918.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14918.alias, 40179):DoFreeStyle(4111, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1089.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1089.alias, 40179):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1091.alias, 40179):DoFreeStyle(1192, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40179):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc30762.id, 0, false, 0)
        this:DailyNpcSafeHideSelf(npcs.Npc6012.alias, true, 1)
        this:GetQuestNpcActor(npcs.Npc6100.alias, 40179):SitOnChair(0, false)
        this:GetQuestNpcActor(npcs.Npc6055.alias, 40179):SitOnChair(0, false)
        this:GetQuestNpcActor(npcs.Npc6305.alias, 40179):SitOnChair(0, false)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 40179):SitOnChair(0, false)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 40179):SitOnChair(0, false)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 40179):SitOnChair(0, false)
        this:GetQuestNpcActor(npcs.Npc6100.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6055.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6305.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1098.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc30762.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc15103.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1091.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6092.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc6228.alias, 40179):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14918.alias, 40179):DisableInteeHeadCtrl(true)
        this:BanCrowdNpc(1099, 3, nil, true)
        this:GetQuestNpcActor(npcs.Npc1088.alias, 40179):DisableInteeHeadCtrl(true)
        this:ActionSafeCall(nil)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 40179):DoFreeStyle(8060, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 40179):DoFreeStyle(8013, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc6100.alias, 40179):DoFreeStyle(8041, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 40179):DoFreeStyle(8040, true, nil, true, true, false, true)
    end)
end

function Quest40179:OnSubFinish4017905(arg1)
    print("OnSubFinish4017905")
end

function Quest40179:OnSubStart4017906(arg1)
    print("OnSubStart4017906")
    this:NpcCreateWithNpcTrigger(npcs.Npc1307.id, 0, 20, 4017906)
    this:GetQuestNpcActor(npcs.Npc6092.alias, 40179):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6228.alias, 40179):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14918.alias, 40179):DoFreeStyle(4111, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1089.alias, 40179):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 40179):DoFreeStyle(1192, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 40179):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14977.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40179):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 40179):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:DailyNpcSafeHideSelf(npcs.Npc6012.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc6100.alias, 40179):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc6055.alias, 40179):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc6305.alias, 40179):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 40179):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 40179):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40179):SitOnChair(0, false)
    this:GetQuestNpcActor(npcs.Npc6100.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6055.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6305.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30762.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15103.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6092.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6228.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14918.alias, 40179):DisableInteeHeadCtrl(true)
    this:BanCrowdNpc(1099, 3, nil, true, nil)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 40179):DisableInteeHeadCtrl(true)
    this:ActionSafeCall(nil)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 40179):DoFreeStyle(8060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 40179):DoFreeStyle(8013, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc6100.alias, 40179):DoFreeStyle(8041, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40179):DoFreeStyle(8040, true, nil, true, true, false, true)
end

function Quest40179:OnSubFinish4017906(arg1)
    print("OnSubFinish4017906")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc15103.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc30762.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc6055.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc6100.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc6305.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc6228.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14918.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 1099)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 1099)
    actorMgr:CreateActorWithPos("Q4017906Trigger", "Actor/Gadget/Q4017906Trigger", 70900002, 0, points._Q4017906TriggerPoint_.pos, points._Q4017906TriggerPoint_.rot, true, false, 3)
    this:LightNotifyTo(npcs.Npc6012.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc6100.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc6055.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc6305.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc30762.alias, 40179):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15103.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1096.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc6092.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc6228.alias, 40179):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14918.alias, 40179):DisableInteeHeadCtrl(false)
    this:BanCrowdNpc(1099, 3, nil, false, nil)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1307.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList4017906)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc14977.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList4017906)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 40179):DisableInteeHeadCtrl(false)
end

return Quest40179
