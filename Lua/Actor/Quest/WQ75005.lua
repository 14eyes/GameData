require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75005 = class("Quest75005", QuestActorProxy)
Quest75005.defaultAlias = "Quest75005"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest75005:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest75005:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7500501"] = self.OnSubStart7500501,
        ["7500502"] = self.OnSubStart7500502,
        ["7500503"] = self.OnSubStart7500503,
        ["7500504"] = self.OnSubStart7500504,
        ["7500505"] = self.OnSubStart7500505,
        ["7500516"] = self.OnSubStart7500516,
        ["7500507"] = self.OnSubStart7500507,
        ["7500508"] = self.OnSubStart7500508,
        ["7500517"] = self.OnSubStart7500517,
        ["7500509"] = self.OnSubStart7500509,
        ["7500510"] = self.OnSubStart7500510,
        ["7500511"] = self.OnSubStart7500511,
        ["7500506"] = self.OnSubStart7500506,
        ["7500514"] = self.OnSubStart7500514,
        ["7500512"] = self.OnSubStart7500512,
        ["7500515"] = self.OnSubStart7500515
    }
end

function Quest75005:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7500501"] = self.OnSubFinish7500501,
        ["7500502"] = self.OnSubFinish7500502,
        ["7500503"] = self.OnSubFinish7500503,
        ["7500504"] = self.OnSubFinish7500504,
        ["7500505"] = self.OnSubFinish7500505,
        ["7500516"] = self.OnSubFinish7500516,
        ["7500507"] = self.OnSubFinish7500507,
        ["7500508"] = self.OnSubFinish7500508,
        ["7500517"] = self.OnSubFinish7500517,
        ["7500509"] = self.OnSubFinish7500509,
        ["7500510"] = self.OnSubFinish7500510,
        ["7500511"] = self.OnSubFinish7500511,
        ["7500506"] = self.OnSubFinish7500506,
        ["7500514"] = self.OnSubFinish7500514,
        ["7500512"] = self.OnSubFinish7500512,
        ["7500515"] = self.OnSubFinish7500515
    }
end

function Quest75005:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75005:Start()
    print("Start")
end

function Quest75005:OnDestroy()
    print("OnDestroy")
end

function Quest75005:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75005:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75005:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75005:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest75005:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest75005:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest75005:OnSubStart7500501(arg1)
    print("OnSubStart7500501")
end

function Quest75005:OnSubFinish7500501(arg1)
    print("OnSubFinish7500501")
end

function Quest75005:OnSubStart7500502(arg1)
    print("OnSubStart7500502")
    actorMgr:CreateActorWithPos("Q7500502Trigger", "Actor/Gadget/Q7500502Trigger", 70900002, 0, {x = -2295.223, y = 198.423, z = 7961.346}, {x = 0.0, y = 350.0, z = 0.0}, true, false)
end

function Quest75005:OnSubFinish7500502(arg1)
    print("OnSubFinish7500502")
end

function Quest75005:OnSubStart7500503(arg1)
    print("OnSubStart7500503")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21465Data.id, 7500503, 0, 10, 1)
end

function Quest75005:OnSubFinish7500503(arg1)
    print("OnSubFinish7500503")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:SetNavigationByMainId(75005, true)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21465Data.alias, 3)
end

function Quest75005:OnSubStart7500504(arg1)
    print("OnSubStart7500504")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21465Data.id, 0, false, 0)
        actorMgr:CreateActorWithPos("Q7500504Trigger", "Actor/Gadget/Q7500504Trigger", 70900002, 0, {x = -2237.399, y = 207.966, z = 7960.059}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest75005:OnSubFinish7500504(arg1)
    print("OnSubFinish7500504")
end

function Quest75005:OnSubStart7500505(arg1)
    print("OnSubStart7500505")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21465Data.id, 7500505, 0, 10, 1)
end

function Quest75005:OnSubFinish7500505(arg1)
    print("OnSubFinish7500505")
    this:SafeDestroyQuestNpc(npcs.Npc21465Data.alias, 3)
end

function Quest75005:OnSubStart7500516(arg1)
    print("OnSubStart7500516")
end

function Quest75005:OnSubFinish7500516(arg1)
    print("OnSubFinish7500516")
    this:QuestNarratorTask(datas.rmd7500516)
end

function Quest75005:OnSubStart7500507(arg1)
    print("OnSubStart7500507")
    actorMgr:CreateActorWithPos("Q7500507Trigger", "Actor/Gadget/Q7500507Trigger", 70900002, 0, {x = -2316.392, y = 106.22, z = 7959.167}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75005:OnSubFinish7500507(arg1)
    print("OnSubFinish7500507")
end

function Quest75005:OnSubStart7500508(arg1)
    print("OnSubStart7500508")
    actorMgr:CreateActorWithPos("Q7500508Trigger", "Actor/Gadget/Q7500508Trigger", 70900002, 0, {x = -2553.819, y = 52.449, z = 7855.865}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest75005:OnSubFinish7500508(arg1)
    print("OnSubFinish7500508")
    this:QuestNarratorTask(datas.rmd7500508)
end

function Quest75005:OnSubStart7500517(arg1)
    print("OnSubStart7500517")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc21465Data.id, 0)
end

function Quest75005:OnSubFinish7500517(arg1)
    print("OnSubFinish7500517")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21465Data.alias)
end

function Quest75005:OnSubStart7500509(arg1)
    print("OnSubStart7500509")
end

function Quest75005:OnSubFinish7500509(arg1)
    print("OnSubFinish7500509")
end

function Quest75005:OnSubStart7500510(arg1)
    print("OnSubStart7500510")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21465Data.id, 7500510, 0, 10, 1)
end

function Quest75005:OnSubFinish7500510(arg1)
    print("OnSubFinish7500510")
end

function Quest75005:OnSubStart7500511(arg1)
    print("OnSubStart7500511")
    this:CreateQuestNpc(arg1, npcs.Npc21465Data.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21465Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21551Data.id, 0, false, 0)
end

function Quest75005:OnSubFinish7500511(arg1)
    print("OnSubFinish7500511")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 41)
    this:SafeDestroyQuestNpc(npcs.Npc21465Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21551Data.alias, 3)
end

function Quest75005:OnSubStart7500506(arg1)
    print("OnSubStart7500506")
    actorMgr:CreateActorWithPos("Q7500506Trigger", "Actor/Gadget/Q7500506Trigger", 70900002, 0, points.TPos_Q7500506Trigger.pos, points.TPos_Q7500506Trigger.rot, true, false, 3)
end

function Quest75005:OnSubFinish7500506(arg1)
    print("OnSubFinish7500506")
end

function Quest75005:OnSubStart7500514(arg1)
    print("OnSubStart7500514")
    this:CreateQuestNpcWithTrigger("Q7500514Trigger", 7500514, 21552, 1, 30, 2)
end

function Quest75005:OnSubFinish7500514(arg1)
    print("OnSubFinish7500514")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 41)
    this:SafeDestroyQuestNpc(npcs.Npc21552Data.alias, 3)
end

function Quest75005:OnSubStart7500512(arg1)
    print("OnSubStart7500512")
    actorMgr:CreateActorWithPos("Q7500512Trigger", "Actor/Gadget/Q7500512Trigger", 70900002, 0, points.TPos_Q7500512Trigger.pos, points.TPos_Q7500512Trigger.rot, true, false, 3)
end

function Quest75005:OnSubFinish7500512(arg1)
    print("OnSubFinish7500512")
end

function Quest75005:OnSubStart7500515(arg1)
    print("OnSubStart7500515")
    this:CreateQuestNpcWithTrigger("Q7500515Trigger", 7500515, 21465, 1, 6, 2)
end

function Quest75005:OnSubFinish7500515(arg1)
    print("OnSubFinish7500515")
    this:SafeDestroyQuestNpc(npcs.Npc21465Data.alias, 3)
end

return Quest75005
