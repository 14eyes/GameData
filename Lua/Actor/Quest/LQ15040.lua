require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15040 = class("Quest15040", QuestActorProxy)
Quest15040.defaultAlias = "Quest15040"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15040:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15040:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1504001"] = self.OnSubStart1504001,
        ["1504015"] = self.OnSubStart1504015,
        ["1504002"] = self.OnSubStart1504002,
        ["1504020"] = self.OnSubStart1504020,
        ["1504016"] = self.OnSubStart1504016,
        ["1504003"] = self.OnSubStart1504003,
        ["1504004"] = self.OnSubStart1504004,
        ["1504007"] = self.OnSubStart1504007,
        ["1504005"] = self.OnSubStart1504005,
        ["1504008"] = self.OnSubStart1504008,
        ["1504009"] = self.OnSubStart1504009,
        ["1504014"] = self.OnSubStart1504014,
        ["1504011"] = self.OnSubStart1504011,
        ["1504006"] = self.OnSubStart1504006,
        ["1504017"] = self.OnSubStart1504017,
        ["1504012"] = self.OnSubStart1504012,
        ["1504013"] = self.OnSubStart1504013,
        ["1504010"] = self.OnSubStart1504010
    }
end

function Quest15040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1504001"] = self.OnSubFinish1504001,
        ["1504015"] = self.OnSubFinish1504015,
        ["1504002"] = self.OnSubFinish1504002,
        ["1504020"] = self.OnSubFinish1504020,
        ["1504016"] = self.OnSubFinish1504016,
        ["1504003"] = self.OnSubFinish1504003,
        ["1504004"] = self.OnSubFinish1504004,
        ["1504007"] = self.OnSubFinish1504007,
        ["1504005"] = self.OnSubFinish1504005,
        ["1504008"] = self.OnSubFinish1504008,
        ["1504009"] = self.OnSubFinish1504009,
        ["1504014"] = self.OnSubFinish1504014,
        ["1504011"] = self.OnSubFinish1504011,
        ["1504006"] = self.OnSubFinish1504006,
        ["1504017"] = self.OnSubFinish1504017,
        ["1504012"] = self.OnSubFinish1504012,
        ["1504013"] = self.OnSubFinish1504013,
        ["1504010"] = self.OnSubFinish1504010
    }
end

function Quest15040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1504001"] = self.OnSubFailed1504001}
end

function Quest15040:Start()
    print("Start")
end

function Quest15040:OnDestroy()
    print("OnDestroy")
end

function Quest15040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15040:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15040:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q1504013Trigger")
    this:ActorDestroy("Q1504008Trigger")
    this:ActorDestroy("Q1504014Trigger")
    this:ActorDestroy("Q1504016Trigger")
end

function Quest15040:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 150401701 then
        actorUtils.FinishQuestID(false, 1504017)
    end
end

function Quest15040:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15040:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15040:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest15040:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest15040:OnSubStart1504001(arg1)
    print("OnSubStart1504001")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504001, 0, 20, 1, npcs.Npc21844.id)
end

function Quest15040:OnSubFinish1504001(arg1)
    print("OnSubFinish1504001")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
    this:SetNavigationByMainId(15040, true)
end

function Quest15040:OnSubFailed1504001(arg1)
    print("OnSubFailed1504001")
    this:ClearNpcTriggerByQuestId(1504001)
end

function Quest15040:OnSubStart1504015(arg1)
    print("OnSubStart1504015")
end

function Quest15040:OnSubFinish1504015(arg1)
    print("OnSubFinish1504015")
end

function Quest15040:OnSubStart1504002(arg1)
    print("OnSubStart1504002")
end

function Quest15040:OnSubFinish1504002(arg1)
    print("OnSubFinish1504002")
end

function Quest15040:OnSubStart1504020(arg1)
    print("OnSubStart1504020")
end

function Quest15040:OnSubFinish1504020(arg1)
    print("OnSubFinish1504020")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataWithVehicle, nil, nil, nil)
end

function Quest15040:OnSubStart1504016(arg1)
    print("OnSubStart1504016")
    actorMgr:CreateActorWithPos("Q1504016Trigger", "Actor/Gadget/Q1504016Trigger", 70900002, 0, points._Q1504016TriggerPoint_.pos, points._Q1504016TriggerPoint_.rot, true, false, 3)
end

function Quest15040:OnSubFinish1504016(arg1)
    print("OnSubFinish1504016")
end

function Quest15040:OnSubStart1504003(arg1)
    print("OnSubStart1504003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504003, 0, 15, 1, npcs.Npc21845.id)
end

function Quest15040:OnSubFinish1504003(arg1)
    print("OnSubFinish1504003")
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
end

function Quest15040:OnSubStart1504004(arg1)
    print("OnSubStart1504004")
    this:DailyNpcSafeHideSelf(npcs.Npc6547.alias, true, 1)
end

function Quest15040:OnSubFinish1504004(arg1)
    print("OnSubFinish1504004")
end

function Quest15040:OnSubStart1504007(arg1)
    print("OnSubStart1504007")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504007, 0, 20, 1, npcs.Npc21844.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6547.alias, true, 1)
end

function Quest15040:OnSubFinish1504007(arg1)
    print("OnSubFinish1504007")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
end

function Quest15040:OnSubStart1504005(arg1)
    print("OnSubStart1504005")
    this:DailyNpcSafeHideSelf(npcs.Npc6547.alias, true, 1)
end

function Quest15040:OnSubFinish1504005(arg1)
    print("OnSubFinish1504005")
end

function Quest15040:OnSubStart1504008(arg1)
    print("OnSubStart1504008")
    this:DailyNpcSafeHideSelf(npcs.Npc6547.alias, true, 1)
    actorMgr:CreateActorWithPos("Q1504008Trigger", "Actor/Gadget/Q1504008Trigger", 70900002, 0, points._Q1504008TriggerPoint_.pos, points._Q1504008TriggerPoint_.rot, true, false, 3)
end

function Quest15040:OnSubFinish1504008(arg1)
    print("OnSubFinish1504008")
end

function Quest15040:OnSubStart1504009(arg1)
    print("OnSubStart1504009")
    this:DailyNpcSafeHideSelf(npcs.Npc6547.alias, true, 1)
end

function Quest15040:OnSubFinish1504009(arg1)
    print("OnSubFinish1504009")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitDataBlack, nil, nil, nil)
    end)
end

function Quest15040:OnSubStart1504014(arg1)
    print("OnSubStart1504014")
    actorMgr:CreateActorWithPos("Q1504014Trigger", "Actor/Gadget/Q1504014Trigger", 70900002, 0, points._Q1504014TriggerPoint_.pos, points._Q1504014TriggerPoint_.rot, true, false, 3)
end

function Quest15040:OnSubFinish1504014(arg1)
    print("OnSubFinish1504014")
end

function Quest15040:OnSubStart1504011(arg1)
    print("OnSubStart1504011")
end

function Quest15040:OnSubFinish1504011(arg1)
    print("OnSubFinish1504011")
end

function Quest15040:OnSubStart1504006(arg1)
    print("OnSubStart1504006")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc6547.id, 0, 1504006, 20, true)
end

function Quest15040:OnSubFinish1504006(arg1)
    print("OnSubFinish1504006")
    this:SafeDestroyQuestNpc(npcs.Npc6547.alias, 3)
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitDataBlack, nil, nil, nil)
    end)
end

function Quest15040:OnSubStart1504017(arg1)
    print("OnSubStart1504017")
end

function Quest15040:OnSubFinish1504017(arg1)
    print("OnSubFinish1504017")
end

function Quest15040:OnSubStart1504012(arg1)
    print("OnSubStart1504012")
    this:DailyNpcSafeHideSelf(npcs.Npc6547.alias, true, 1)
end

function Quest15040:OnSubFinish1504012(arg1)
    print("OnSubFinish1504012")
end

function Quest15040:OnSubStart1504013(arg1)
    print("OnSubStart1504013")
    actorMgr:CreateActorWithPos("Q1504013Trigger", "Actor/Gadget/Q1504013Trigger", 70900002, 0, points._Q1504013TriggerPoint_.pos, points._Q1504013TriggerPoint_.rot, true, false, 3)
end

function Quest15040:OnSubFinish1504013(arg1)
    print("OnSubFinish1504013")
end

function Quest15040:OnSubStart1504010(arg1)
    print("OnSubStart1504010")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504010, 0, 20, 1, npcs.Npc21844.id)
    this:DailyNpcSafeHideSelf(npcs.Npc6547.alias, true, 1)
end

function Quest15040:OnSubFinish1504010(arg1)
    print("OnSubFinish1504010")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
    this:LightNotifyTo(npcs.Npc6547.alias, 0, true)
    this:SetNavigationByMainId(15043, true)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HolidayMemoryBookPage", 1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.ShowContext("PaintSeeliePaletteUnlock1", 0)
        end)
    end)
end

return Quest15040
