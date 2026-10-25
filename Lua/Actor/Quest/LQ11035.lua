require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11035 = class("Quest11035", QuestActorProxy)
Quest11035.defaultAlias = "Quest11035"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest11035:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest11035:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1103501"] = self.OnSubStart1103501,
        ["1103510"] = self.OnSubStart1103510,
        ["1103511"] = self.OnSubStart1103511,
        ["1103502"] = self.OnSubStart1103502,
        ["1103503"] = self.OnSubStart1103503,
        ["1103512"] = self.OnSubStart1103512,
        ["1103504"] = self.OnSubStart1103504,
        ["1103506"] = self.OnSubStart1103506,
        ["1103505"] = self.OnSubStart1103505,
        ["1103507"] = self.OnSubStart1103507,
        ["1103508"] = self.OnSubStart1103508,
        ["1103509"] = self.OnSubStart1103509
    }
end

function Quest11035:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1103501"] = self.OnSubFinish1103501,
        ["1103510"] = self.OnSubFinish1103510,
        ["1103511"] = self.OnSubFinish1103511,
        ["1103502"] = self.OnSubFinish1103502,
        ["1103503"] = self.OnSubFinish1103503,
        ["1103512"] = self.OnSubFinish1103512,
        ["1103504"] = self.OnSubFinish1103504,
        ["1103506"] = self.OnSubFinish1103506,
        ["1103505"] = self.OnSubFinish1103505,
        ["1103507"] = self.OnSubFinish1103507,
        ["1103508"] = self.OnSubFinish1103508,
        ["1103509"] = self.OnSubFinish1103509
    }
end

function Quest11035:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1103501"] = self.OnSubFailed1103501,
        ["1103510"] = self.OnSubFailed1103510,
        ["1103511"] = self.OnSubFailed1103511,
        ["1103502"] = self.OnSubFailed1103502,
        ["1103503"] = self.OnSubFailed1103503,
        ["1103512"] = self.OnSubFailed1103512,
        ["1103504"] = self.OnSubFailed1103504,
        ["1103506"] = self.OnSubFailed1103506,
        ["1103505"] = self.OnSubFailed1103505,
        ["1103507"] = self.OnSubFailed1103507,
        ["1103508"] = self.OnSubFailed1103508,
        ["1103509"] = self.OnSubFailed1103509
    }
end

function Quest11035:Start()
    print("Start")
end

function Quest11035:OnDestroy()
    print("OnDestroy")
end

function Quest11035:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11035:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11035:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11035:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ActionSafeCall(function()
            globalActor:PlayerEnterDungeon(1153, 1195, true, nil, 1)
        end)
    end

    if arg1 == 10 then
        actorUtils.FinishQuestID(false, 1103510)
    end

    if arg1 == 11 then
        actorUtils.FinishQuestID(false, 1103511)
    end
end

function Quest11035:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest11035:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest11035:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest11035:RewindDungeon()
    actorMgr:DestroyEntityActor("Q1103503N1083Trigger", 20209, false)
    actorMgr:DestroyEntityActor("Q1103506N1083Trigger", 20209, false)
    actorMgr:DestroyEntityActor("Q1103505N1083Trigger", 20209, false)
    self:SafeDestroyQuestNpc(npcs.Npc1083.alias, 20209)
end

function Quest11035:OnSubStart1103501(arg1)
    print("OnSubStart1103501")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1083.id, 1103501, 0, 10, 1)
    self:CreateLocalGadget(70711422, "1", {x = 1143.542, y = 350.077, z = 1571.832}, {x = 0, y = 240.803, z = 0}, 3, nil, nil, true, 0)
end

function Quest11035:OnSubFinish1103501(arg1)
    print("OnSubFinish1103501")
    self:SafeDestroyQuestNpc("Npc13892", 3)
    this:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeon(1153, 1195, true, nil, 1)
    end)
end

function Quest11035:OnSubFailed1103501(arg1)
    print("OnSubFailed1103501")
end

function Quest11035:OnSubStart1103510(arg1)
    print("OnSubStart1103510")
end

function Quest11035:OnSubFinish1103510(arg1)
    print("OnSubFinish1103510")
end

function Quest11035:OnSubFailed1103510(arg1)
    print("OnSubFailed1103510")
end

function Quest11035:OnSubStart1103511(arg1)
    print("OnSubStart1103511")
end

function Quest11035:OnSubFinish1103511(arg1)
    print("OnSubFinish1103511")
end

function Quest11035:OnSubFailed1103511(arg1)
    print("OnSubFailed1103511")
end

function Quest11035:OnSubStart1103502(arg1)
    print("OnSubStart1103502")
    self:CreateLocalGadget(70711422, "1", {x = 1143.542, y = 350.077, z = 1571.832}, {x = 0, y = 240.803, z = 0}, 3, nil, nil, true, 202)
    self:GetQuestNpcActor(npcs.Npc1083.alias, 11035):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest11035:OnSubFinish1103502(arg1)
    print("OnSubFinish1103502")
end

function Quest11035:OnSubFailed1103502(arg1)
    print("OnSubFailed1103502")
end

function Quest11035:OnSubStart1103503(arg1)
    print("OnSubStart1103503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1083.id, 1103503, 0, 3, 1)
end

function Quest11035:OnSubFinish1103503(arg1)
    print("OnSubFinish1103503")
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 20209)
end

function Quest11035:OnSubFailed1103503(arg1)
    print("OnSubFailed1103503")
    self:RewindDungeon()
end

function Quest11035:OnSubStart1103512(arg1)
    print("OnSubStart1103512")
end

function Quest11035:OnSubFinish1103512(arg1)
    print("OnSubFinish1103512")
end

function Quest11035:OnSubFailed1103512(arg1)
    print("OnSubFailed1103512")
    self:RewindDungeon()
end

function Quest11035:OnSubStart1103504(arg1)
    print("OnSubStart1103504")
end

function Quest11035:OnSubFinish1103504(arg1)
    print("OnSubFinish1103504")
end

function Quest11035:OnSubFailed1103504(arg1)
    print("OnSubFailed1103504")
    self:RewindDungeon()
end

function Quest11035:OnSubStart1103506(arg1)
    print("OnSubStart1103506")
    this:CallDelayByQuest("", 2, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1083.id, 1103506, 0, 30, 1)
    end)
end

function Quest11035:OnSubFinish1103506(arg1)
    print("OnSubFinish1103506")
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 20209)
end

function Quest11035:OnSubFailed1103506(arg1)
    print("OnSubFailed1103506")
    self:RewindDungeon()
end

function Quest11035:OnSubStart1103505(arg1)
    print("OnSubStart1103505")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1083.id, 1103505, 0, 3, 1)
end

function Quest11035:OnSubFinish1103505(arg1)
    print("OnSubFinish1103505")
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 20209)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest11035:OnSubFailed1103505(arg1)
    print("OnSubFailed1103505")
    self:RewindDungeon()
end

function Quest11035:OnSubStart1103507(arg1)
    print("OnSubStart1103507")
    this:CreateQuestNpcWithTriggerBlackEx("Q1103507N1083Trigger", 1103507, 1083, 0, 10, 0, 1, 0.5, 2)
    self:CreateLocalGadget(70711422, "1", {x = 1143.542, y = 350.077, z = 1571.832}, {x = 0, y = 240.803, z = 0}, 3, nil, nil, true)
end

function Quest11035:OnSubFinish1103507(arg1)
    print("OnSubFinish1103507")
    self.RemoveLocalGadget(self, 70711422, "1")
    self.ActionSafeCall(self, function()
        self:QuestNarratorTask(datas.Narrator1103501, nil, nil)
    end)
end

function Quest11035:OnSubFailed1103507(arg1)
    print("OnSubFailed1103507")
end

function Quest11035:OnSubStart1103508(arg1)
    print("OnSubStart1103508")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Npc1083.id, 0)
        self:CreateQuestNpc(arg1, npcs.Npc13912.id, 0)
        self:CreateQuestNpc(arg1, npcs.Npc10045.id, 0)
    end)

    this:DailyNpcSafeHideSelf(npcs.Npc1627.alias, 1, true)
    self.GetQuestNpcActor(self, npcs.Npc1083.alias, 11035):DoFreeStyle(1120, true, nil, true, true, false, false)
end

function Quest11035:OnSubFinish1103508(arg1)
    print("OnSubFinish1103508")
    this:SafeDestroyQuestNpc(npcs.Npc13912.alias, 3)
end

function Quest11035:OnSubFailed1103508(arg1)
    print("OnSubFailed1103508")
end

function Quest11035:OnSubStart1103509(arg1)
    print("OnSubStart1103509")
    this:NpcCreateWithNpcTrigger(npcs.Npc1083.id, 1103509, 0, 15)
    this:DailyNpcSafeHideSelf(npcs.Npc1627.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc13916.id, 0)
    self:GetQuestNpcActor(npcs.Npc1083.alias, 11035):DoFreeStyle(1120, true, nil, true, true, false, false)
    self:CreateLocalGadget(71700737, "1", {x = -630.805, y = 225.074, z = 204.472}, {x = 0, y = -111.777, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700736, "2", {x = -631.524, y = 225.066, z = 203.711}, {x = 0, y = -80.423, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700737, "3", {x = -630.78, y = 225.074, z = 202.85}, {x = 0, y = -98.094, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700738, "4", {x = -631.649, y = 225.827, z = 203.985}, {x = 0, y = -10.967, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700739, "5", {x = -631.603, y = 225.828, z = 203.593}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700493, "6", {x = -635.1323, y = 225.072, z = 214.2287}, {x = 0, y = -78.162, z = 0}, 3, nil, nil, true)
    self:CreateLocalGadget(71700493, "7", {x = -634.543, y = 225.072, z = 213.805}, {x = 0, y = -50.804, z = 0}, 3, nil, nil, true)
end

function Quest11035:OnSubFinish1103509(arg1)
    print("OnSubFinish1103509")
    self:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc10045.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1083.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc13916.alias, 3)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc13917.id, 0, false, 0.5)
    self:CreateLocalGadget(71700379, "1", {x = -635.151, y = 225.302, z = 214.145}, {x = 0, y = 0, z = 0}, 3, nil, nil, true)
    actorMgr:CreateActorWithPos("Q1103509_Trigger1", "Actor/Gadget/Q1103509_Trigger1", 70900002, 0, points.Q1103509_Trigger1_Point.pos, points.Q1103509_Trigger1_Point.rot, true, false, 3)
end

function Quest11035:OnSubFailed1103509(arg1)
    print("OnSubFailed1103509")
end

return Quest11035
