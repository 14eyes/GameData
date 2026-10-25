require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15030 = class("Quest15030", QuestActorProxy)
Quest15030.defaultAlias = "Quest15030"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest15030:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1503001"] = self.OnSubStart1503001,
        ["1503006"] = self.OnSubStart1503006,
        ["1503002"] = self.OnSubStart1503002,
        ["1503003"] = self.OnSubStart1503003,
        ["1503008"] = self.OnSubStart1503008,
        ["1503009"] = self.OnSubStart1503009,
        ["1503004"] = self.OnSubStart1503004,
        ["1503007"] = self.OnSubStart1503007,
        ["1503005"] = self.OnSubStart1503005
    }
end

function Quest15030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1503001"] = self.OnSubFinish1503001,
        ["1503006"] = self.OnSubFinish1503006,
        ["1503002"] = self.OnSubFinish1503002,
        ["1503003"] = self.OnSubFinish1503003,
        ["1503008"] = self.OnSubFinish1503008,
        ["1503009"] = self.OnSubFinish1503009,
        ["1503004"] = self.OnSubFinish1503004,
        ["1503007"] = self.OnSubFinish1503007,
        ["1503005"] = self.OnSubFinish1503005
    }
end

function Quest15030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15030:Start()
    print("Start")
end

function Quest15030:OnDestroy()
    print("OnDestroy")
end

function Quest15030:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15030:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15030:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15030:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q1503001Trigger")
    this:BanCrowdNpc(3517, 4, nil, false)
end

function Quest15030:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1503008 then
        actorUtils.FinishQuestID(false, 1503008)
    elseif arg1 == 1503009 then
        actorUtils.FinishQuestID(false, 1503009)
    end
end

function Quest15030:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15030:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15030:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15030:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15030:Hidecrowd()
    this:BanCrowdNpc(3517, 4, nil, true)
end

function Quest15030:OnSubStart1503001(arg1)
    print("OnSubStart1503001")
    this:CreateQuestNpc(arg1, npcs.Npc1098.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15030):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc6305.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6305.alias, 15030):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:TryStartTribalAutoTrack(arg1)
    this:GetQuestNpcActor(npcs.Npc1098.alias, 15030):SitOnChair(0, true)
    this:Hidecrowd()
    this:GetQuestNpcActor(npcs.Npc1098.alias, 15030):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1091.alias, 15030):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc6305.alias, 15030):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q1503001Trigger", "Actor/Gadget/Q1503001Trigger", 70900002, 0, points._Q1503001TriggerPoint_.pos, points._Q1503001TriggerPoint_.rot, true, false, 3)
end

function Quest15030:OnSubFinish1503001(arg1)
    print("OnSubFinish1503001")
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6305.alias, 3)
    this:SetNavigationByMainId(15030, true)
    this:ActorDestroy("Q1503001Trigger")
end

function Quest15030:OnSubStart1503006(arg1)
    print("OnSubStart1503006")
    this:NpcCreateWithNpcTrigger(npcs.Npc1098.id, 0, 10, 1503006)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:Hidecrowd()
end

function Quest15030:OnSubFinish1503006(arg1)
    print("OnSubFinish1503006")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
end

function Quest15030:OnSubStart1503002(arg1)
    print("OnSubStart1503002")
    this:CreateQuestNpc(arg1, npcs.Npc6391.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc15101.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:CreateQuestNpc(arg1, npcs.Npc6388.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6431.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6394.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15207.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15210.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6387.alias, true, 1)
    this:GetQuestNpcActor(npcs.Npc6388.alias, 15030):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc6391.alias, 15030):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc6394.alias, 15030):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc6431.alias, 15030):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15207.alias, 15030):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc15210.alias, 15030):SitOnChair(0, true)
end

function Quest15030:OnSubFinish1503002(arg1)
    print("OnSubFinish1503002")
    this:SafeDestroyQuestNpc(npcs.Npc6391.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15101.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6388.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6431.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6394.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15207.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15210.alias, 3)
    this:LightNotifyTo(npcs.Npc6387.alias, 0, true)
end

function Quest15030:OnSubStart1503003(arg1)
    print("OnSubStart1503003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503003, 0, 5, 0.5, npcs.Npc1098.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:Hidecrowd()
end

function Quest15030:OnSubFinish1503003(arg1)
    print("OnSubFinish1503003")
    this:SafeDestroyQuestNpc(npcs.Npc1098.alias, 3)
end

function Quest15030:OnSubStart1503008(arg1)
    print("OnSubStart1503008")
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
end

function Quest15030:OnSubFinish1503008(arg1)
    print("OnSubFinish1503008")
end

function Quest15030:OnSubStart1503009(arg1)
    print("OnSubStart1503009")
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
end

function Quest15030:OnSubFinish1503009(arg1)
    print("OnSubFinish1503009")
end

function Quest15030:OnSubStart1503004(arg1)
    print("OnSubStart1503004")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503004, 0, 5, 1.5, npcs.Npc15141.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:CreateLocalGadget(73035009, "1", {x = -2504.947, y = 261.024, z = 10178.02}, {x = 0, y = 235.599, z = 0}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73035010, "2", {x = -2518.064, y = 259.997, z = 10167.82}, {x = 0, y = 116.389, z = 0}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73035009, "3", {x = -2515.668, y = 257.878, z = 10144.43}, {x = 0, y = 336.154, z = 0}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73035010, "4", {x = -2514.798, y = 257.66, z = 10143.44}, {x = 0, y = 156.154, z = 0}, 3, nil, nil, true, 0, true)
    this:Hidecrowd()
end

function Quest15030:OnSubFinish1503004(arg1)
    print("OnSubFinish1503004")
    this:SafeDestroyQuestNpc(npcs.Npc15141.alias, 3)
    this:RemoveLocalGadget(73035009, "1")
end

function Quest15030:OnSubStart1503007(arg1)
    print("OnSubStart1503007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1503007, 0, 8, 1.5, npcs.Npc15142.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:CreateLocalGadget(73035010, "2", {x = -2518.064, y = 260.023, z = 10167.82}, {x = 0, y = 38.627, z = 0}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73035009, "3", {x = -2515.668, y = 257.878, z = 10144.43}, {x = 0, y = 336.154, z = 0}, 3, nil, nil, true, 0, true)
    this:CreateLocalGadget(73035010, "4", {x = -2514.798, y = 257.66, z = 10143.44}, {x = 0, y = 156.154, z = 0}, 3, nil, nil, true, 0, true)
    this:Hidecrowd()
end

function Quest15030:OnSubFinish1503007(arg1)
    print("OnSubFinish1503007")
    this:SafeDestroyQuestNpc(npcs.Npc15142.alias, 3)
    this:RemoveLocalGadget(73035010, "2")
    this:RemoveLocalGadget(73035009, "3")
    this:RemoveLocalGadget(73035010, "4")
end

function Quest15030:OnSubStart1503005(arg1)
    print("OnSubStart1503005")
    this:NpcCreateWithNpcTrigger(npcs.Npc15143.id, 0, 13, 1503005)
    this:CreateQuestNpc(arg1, npcs.Npc15144.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc6391.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6392.alias, true, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc6393.alias, true, 1)
    this:Hidecrowd()
end

function Quest15030:OnSubFinish1503005(arg1)
    print("OnSubFinish1503005")
    this:SafeDestroyQuestNpc(npcs.Npc15143.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15144.alias, 3)
end

return Quest15030
