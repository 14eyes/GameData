require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40123 = class("Quest40123", QuestActorProxy)
Quest40123.defaultAlias = "Quest40123"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40123:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40123:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4012301"] = self.OnSubStart4012301,
        ["4012302"] = self.OnSubStart4012302,
        ["4012303"] = self.OnSubStart4012303,
        ["4012304"] = self.OnSubStart4012304,
        ["4012305"] = self.OnSubStart4012305,
        ["4012306"] = self.OnSubStart4012306,
        ["4012307"] = self.OnSubStart4012307,
        ["4012308"] = self.OnSubStart4012308,
        ["4012309"] = self.OnSubStart4012309,
        ["4012310"] = self.OnSubStart4012310,
        ["4012311"] = self.OnSubStart4012311,
        ["4012312"] = self.OnSubStart4012312,
        ["4012313"] = self.OnSubStart4012313
    }
end

function Quest40123:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4012301"] = self.OnSubFinish4012301,
        ["4012302"] = self.OnSubFinish4012302,
        ["4012303"] = self.OnSubFinish4012303,
        ["4012304"] = self.OnSubFinish4012304,
        ["4012305"] = self.OnSubFinish4012305,
        ["4012306"] = self.OnSubFinish4012306,
        ["4012307"] = self.OnSubFinish4012307,
        ["4012308"] = self.OnSubFinish4012308,
        ["4012309"] = self.OnSubFinish4012309,
        ["4012310"] = self.OnSubFinish4012310,
        ["4012311"] = self.OnSubFinish4012311,
        ["4012312"] = self.OnSubFinish4012312,
        ["4012313"] = self.OnSubFinish4012313
    }
end

function Quest40123:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40123:Start()
    print("Start")
end

function Quest40123:OnDestroy()
    print("OnDestroy")
end

function Quest40123:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40123:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40123:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13493Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13598Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13599Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc13701Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40123Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q40123Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q40123Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q40123Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40123Trigger4", 3, false)
    actorMgr:DestroyEntityActor("Q4012308N1001Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012311N1023Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012313N10045Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4012312N1001Trigger", 3, false)
    self:RemoveLocalGadget(71700379, "1")
    self:RemoveLocalGadget(71700379, "2")
    self:RemoveLocalGadget(71700379, "3")
    self:RemoveLocalGadget(71700379, "4")
    self:UnCallDelayByQuest("4012313ShowContext")
end

function Quest40123:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest40123:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4)
end

function Quest40123:NPCFreeStyleGroup1(arg1)
    print("OnSubStart4012301")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1060Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1050, true, nil, true, true, false, true)
    local v = this:GetQuestNpcActor(npcs.Npc1027Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1130, true, nil, true, true, false, true)
    local questNpcActor2 = this:GetQuestNpcActor(npcs.Npc10045Data.alias)
    questNpcActor2:DisableInteeHeadCtrl(true)
    questNpcActor2:DoFreeStyle(1190, true, nil, true, true, false, true)
    local questNpcActor3 = this:GetQuestNpcActor(npcs.Npc1023Data.alias)
    questNpcActor3:DisableInteeHeadCtrl(true)
    questNpcActor3:DoFreeStyle(1220, true, nil, true, true, false, true)
    local questNpcActor4 = this:GetQuestNpcActor(npcs.Npc1061Data.alias)
    questNpcActor4:DisableInteeHeadCtrl(true)
    questNpcActor4:DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest40123:NPCFreeStyleGroup2(arg1)
    print("OnSubStart4012301")
    local questNpcActor = this:GetQuestNpcActor(npcs.WendyData.alias)
    questNpcActor:TurnTo(M.Euler2DirXZ({x = 0, y = 125.3, z = 2}))
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1230, true, nil, true, true, false, true)
    local v = this:GetQuestNpcActor(npcs.Npc1021Data.alias)
    v:TurnTo(M.Euler2DirXZ({x = 0, y = -53, z = 0}))
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1170, true, nil, true, true, false, true)
end

function Quest40123:OnSubStart4012301(arg1)
    print("OnSubStart4012301")
    actorUtils.FinishQuestID(false, 4012301)
end

function Quest40123:OnSubFinish4012301(arg1)
    print("OnSubFinish4012301")
    if self:GetSubQuestState(401101) ~= 2 then
        this:NarratorOnlyTaskByData(datas.NarratorWithId)
    end
end

function Quest40123:OnSubStart4012302(arg1)
    print("OnSubStart4012302")
    this:CreateQuestNpc(arg1, npcs.WendyData.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1021Data.id, 0)
    actorMgr:CreateActorWithPos("Q40123Trigger3", "Actor/Gadget/Q40123Trigger3", 70900002, 0, {x = 911.676, y = 272.734, z = 351.04}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.WendyData.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
    local v = this:GetQuestNpcActor(npcs.Npc1021Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest40123:OnSubFinish4012302(arg1)
    print("OnSubFinish4012302")
    this:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
    self:ClearNarratorTask()
end

function Quest40123:OnSubStart4012303(arg1)
    print("OnSubStart4012303")
    this:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1061Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1060Data.id, 0)
    actorMgr:CreateActorWithPos("Q40123Trigger", "Actor/Gadget/Q40123Trigger", 70900002, 0, points.TPos_Q40123Trigger.pos, points.TPos_Q40123Trigger.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.WendyData.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, false, true)
    local v = this:GetQuestNpcActor(npcs.Npc1021Data.alias)
    v:DisableInteeHeadCtrl(true)
    v:DoFreeStyle(1190, true, nil, true, true, false, true)
    self:NPCFreeStyleGroup1()
end

function Quest40123:OnSubFinish4012303(arg1)
    print("OnSubFinish4012303")
    this:NarratorOnlyTaskByData(datas.NarratorWithId_01)
    this:SafeDestroyQuestNpc(npcs.WendyData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
end

function Quest40123:OnSubStart4012304(arg1)
    print("OnSubStart4012304")
end

function Quest40123:OnSubFinish4012304(arg1)
    print("OnSubFinish4012304")
    self:ClearNarratorTask()
end

function Quest40123:OnSubStart4012305(arg1)
    print("OnSubStart4012305")
end

function Quest40123:OnSubFinish4012305(arg1)
    print("OnSubFinish4012305")
    self:ClearNarratorTask()
end

function Quest40123:OnSubStart4012306(arg1)
    print("OnSubStart4012306")
end

function Quest40123:OnSubFinish4012306(arg1)
    print("OnSubFinish4012306")
    self:ClearNarratorTask()
end

function Quest40123:OnSubStart4012307(arg1)
    print("OnSubStart4012307")
    self:NPCFreeStyleGroup1()
end

function Quest40123:OnSubFinish4012307(arg1)
    print("OnSubFinish4012307")
end

function Quest40123:OnSubStart4012308(arg1)
    print("OnSubStart4012308")
    self:NPCFreeStyleGroup1()
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.WendyData.id, 4012308, 0, 10, 1)
end

function Quest40123:OnSubFinish4012308(arg1)
    print("OnSubFinish4012308")
    self:SafeDestroyQuestNpc(npcs.Npc1061Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1060Data.alias, 3)
end

function Quest40123:OnSubStart4012309(arg1)
    print("OnSubStart4012309")
    this:CreateQuestNpc(arg1, npcs.Npc13493Data.id, 0)
    self:NPCFreeStyleGroup2()
    self:CreateLocalGadget(71700379, "1", {x = 1558.675, y = 220.852, z = 247.5028}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
end

function Quest40123:OnSubFinish4012309(arg1)
    print("OnSubFinish4012309")
end

function Quest40123:OnSubStart4012310(arg1)
    print("OnSubStart4012310")
    this:CreateQuestNpc(arg1, npcs.Npc13598Data.id, 0)
    self:NPCFreeStyleGroup2()
    self:CreateLocalGadget(71700379, "1", {x = 1558.675, y = 220.852, z = 247.5028}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700379, "2", {x = 1548.957, y = 220.852, z = 256.007}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
end

function Quest40123:OnSubFinish4012310(arg1)
    print("OnSubFinish4012310")
end

function Quest40123:OnSubStart4012311(arg1)
    print("OnSubStart4012311")
    this:CreateQuestNpc(arg1, npcs.Npc13599Data.id, 0)
    self:NPCFreeStyleGroup2()
    self:CreateLocalGadget(71700379, "1", {x = 1558.675, y = 220.852, z = 247.5028}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700379, "2", {x = 1548.957, y = 220.852, z = 256.007}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700379, "3", {x = 1543.093, y = 220.852, z = 248.272}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
end

function Quest40123:OnSubFinish4012311(arg1)
    print("OnSubFinish4012311")
end

function Quest40123:OnSubStart4012312(arg1)
    print("OnSubStart4012312")
    self:NpcCreateWithNpcTrigger(npcs.WendyData.id, 4012312, 0, 10)
    self:NPCFreeStyleGroup2()
    self:CreateQuestNpc(arg1, npcs.Npc13701Data.id, 0)
    self:CreateLocalGadget(71700379, "1", {x = 1558.675, y = 220.852, z = 247.5028}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700379, "2", {x = 1548.957, y = 220.852, z = 256.007}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700379, "3", {x = 1543.093, y = 220.852, z = 248.272}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700379, "4", {x = 1529.011, y = 220.852, z = 258.1852}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
end

function Quest40123:OnSubFinish4012312(arg1)
    print("OnSubFinish4012312")
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13493Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13598Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13599Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc13701Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1023Data.alias, 3)
    self:RemoveLocalGadget(71700379, "1")
    self:RemoveLocalGadget(71700379, "2")
    self:RemoveLocalGadget(71700379, "3")
    self:RemoveLocalGadget(71700379, "4")
end

function Quest40123:OnSubStart4012313(arg1)
    print("OnSubStart4012313")
    self.ActionSafeCall(self, function()
        this:NpcCreateWithNpcTrigger(npcs.Npc10045Data.id, 4012313, 0, 4)
        this:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 0)
        self:CreateQuestNpc(arg1, npcs.WendyData.id, 0)
        self:CreateQuestNpc(arg1, npcs.Npc1021Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1030, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc10045Data.alias):DoFreeStyle(1040, true, nil, true, true, false, true)
    end)
end

function Quest40123:OnSubFinish4012313(arg1)
    print("OnSubFinish4012313")
    this:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self.SafeDestroyQuestNpc(self, npcs.Npc1021Data.id, 3)
    actorMgr:CreateActorWithPos("Q40123Trigger4", "Actor/Gadget/Q40123Trigger4", 70900002, 0, {x = 1560.883, y = 218.756, z = 253.108}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    self.AfterMainPageActiveSafeCall(self, function()
        self:CallDelayByQuest("4012313ShowContext", 0.1, function()
            self:ActionSafeCall(function()
                actorUtils.ShowContext("PoetryFestivalMainPage", 0)
            end)
        end)
    end)
end

return Quest40123
