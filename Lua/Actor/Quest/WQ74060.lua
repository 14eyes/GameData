require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74060 = class("Quest74060", QuestActorProxy)
Quest74060.defaultAlias = "Quest74060"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74060:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74060:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7406001"] = self.OnSubStart7406001,
        ["7406002"] = self.OnSubStart7406002,
        ["7406003"] = self.OnSubStart7406003,
        ["7406004"] = self.OnSubStart7406004,
        ["7406005"] = self.OnSubStart7406005,
        ["7406006"] = self.OnSubStart7406006,
        ["7406007"] = self.OnSubStart7406007,
        ["7406008"] = self.OnSubStart7406008,
        ["7406040"] = self.OnSubStart7406040,
        ["7406009"] = self.OnSubStart7406009,
        ["7406010"] = self.OnSubStart7406010,
        ["7406011"] = self.OnSubStart7406011,
        ["7406012"] = self.OnSubStart7406012,
        ["7406013"] = self.OnSubStart7406013,
        ["7406014"] = self.OnSubStart7406014,
        ["7406015"] = self.OnSubStart7406015,
        ["7406016"] = self.OnSubStart7406016,
        ["7406017"] = self.OnSubStart7406017,
        ["7406018"] = self.OnSubStart7406018,
        ["7406019"] = self.OnSubStart7406019,
        ["7406020"] = self.OnSubStart7406020,
        ["7406021"] = self.OnSubStart7406021,
        ["7406037"] = self.OnSubStart7406037,
        ["7406022"] = self.OnSubStart7406022,
        ["7406023"] = self.OnSubStart7406023,
        ["7406024"] = self.OnSubStart7406024,
        ["7406025"] = self.OnSubStart7406025,
        ["7406026"] = self.OnSubStart7406026,
        ["7406027"] = self.OnSubStart7406027,
        ["7406028"] = self.OnSubStart7406028,
        ["7406029"] = self.OnSubStart7406029,
        ["7406030"] = self.OnSubStart7406030,
        ["7406031"] = self.OnSubStart7406031,
        ["7406032"] = self.OnSubStart7406032,
        ["7406033"] = self.OnSubStart7406033,
        ["7406034"] = self.OnSubStart7406034,
        ["7406035"] = self.OnSubStart7406035,
        ["7406036"] = self.OnSubStart7406036,
        ["7406038"] = self.OnSubStart7406038,
        ["7406039"] = self.OnSubStart7406039,
        ["7406041"] = self.OnSubStart7406041
    }
end

function Quest74060:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7406001"] = self.OnSubFinish7406001,
        ["7406002"] = self.OnSubFinish7406002,
        ["7406003"] = self.OnSubFinish7406003,
        ["7406004"] = self.OnSubFinish7406004,
        ["7406005"] = self.OnSubFinish7406005,
        ["7406006"] = self.OnSubFinish7406006,
        ["7406007"] = self.OnSubFinish7406007,
        ["7406008"] = self.OnSubFinish7406008,
        ["7406040"] = self.OnSubFinish7406040,
        ["7406009"] = self.OnSubFinish7406009,
        ["7406010"] = self.OnSubFinish7406010,
        ["7406011"] = self.OnSubFinish7406011,
        ["7406012"] = self.OnSubFinish7406012,
        ["7406013"] = self.OnSubFinish7406013,
        ["7406014"] = self.OnSubFinish7406014,
        ["7406015"] = self.OnSubFinish7406015,
        ["7406016"] = self.OnSubFinish7406016,
        ["7406017"] = self.OnSubFinish7406017,
        ["7406018"] = self.OnSubFinish7406018,
        ["7406019"] = self.OnSubFinish7406019,
        ["7406020"] = self.OnSubFinish7406020,
        ["7406021"] = self.OnSubFinish7406021,
        ["7406037"] = self.OnSubFinish7406037,
        ["7406022"] = self.OnSubFinish7406022,
        ["7406023"] = self.OnSubFinish7406023,
        ["7406024"] = self.OnSubFinish7406024,
        ["7406025"] = self.OnSubFinish7406025,
        ["7406026"] = self.OnSubFinish7406026,
        ["7406027"] = self.OnSubFinish7406027,
        ["7406028"] = self.OnSubFinish7406028,
        ["7406029"] = self.OnSubFinish7406029,
        ["7406030"] = self.OnSubFinish7406030,
        ["7406031"] = self.OnSubFinish7406031,
        ["7406032"] = self.OnSubFinish7406032,
        ["7406033"] = self.OnSubFinish7406033,
        ["7406034"] = self.OnSubFinish7406034,
        ["7406035"] = self.OnSubFinish7406035,
        ["7406036"] = self.OnSubFinish7406036,
        ["7406038"] = self.OnSubFinish7406038,
        ["7406039"] = self.OnSubFinish7406039,
        ["7406041"] = self.OnSubFinish7406041
    }
end

function Quest74060:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74060:Start()
    print("Start")
end

function Quest74060:OnDestroy()
    print("OnDestroy")
end

function Quest74060:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74060:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74060:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc21073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5210Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21096Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7406001Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7406003Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7406008Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q7406015Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7406022Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7406024Trigger", 3, false)
end

function Quest74060:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest74060:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74060:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest74060:NPCDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg1, arg2)
end

function Quest74060:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74060:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7406011)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7406020)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7406029)
    end
end

function Quest74060:OnSubStart7406001(arg1)
    print("OnSubStart7406001")
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5262Data.id, 0)
end

function Quest74060:OnSubFinish7406001(arg1)
    print("OnSubFinish7406001")
end

function Quest74060:OnSubStart7406002(arg1)
    print("OnSubStart7406002")
    this:NpcCreateWithNpcTrigger(npcs.Npc21073Data.id, 7406002, 0, 10)
end

function Quest74060:OnSubFinish7406002(arg1)
    print("OnSubFinish7406002")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21073Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
end

function Quest74060:OnSubStart7406003(arg1)
    print("OnSubStart7406003")
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5210Data.id, 0)
    actorMgr:CreateActorWithPos("Q7406003Trigger", "Actor/Gadget/Q7406003Trigger", 70900002, 0, points.TPos_Q7406003Trigger.pos, points.TPos_Q7406003Trigger.rot, true, false, 3)
end

function Quest74060:OnSubFinish7406003(arg1)
    print("OnSubFinish7406003")
end

function Quest74060:OnSubStart7406004(arg1)
    print("OnSubStart7406004")
    this:NpcCreateWithNpcTrigger(npcs.Npc21124Data.id, 7406004, 0, 20)
end

function Quest74060:OnSubFinish7406004(arg1)
    print("OnSubFinish7406004")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21124Data.alias)
    this:NPCDestroyImmediately(npcs.Npc5210Data.alias, 3)
end

function Quest74060:OnSubStart7406005(arg1)
    print("OnSubStart7406005")
    this:CreateQuestNpc(arg1, npcs.Npc5262Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5262Data.alias):DoFreeStyle(4502, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc5210Data.alias, 1, true)
end

function Quest74060:OnSubFinish7406005(arg1)
    print("OnSubFinish7406005")
    this:PlayerEnterDungeonPointWithDialogs(988, 2194, 7406005, 1, nil, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
end

function Quest74060:OnSubStart7406006(arg1)
    print("OnSubStart7406006")
    this:CreateQuestNpc(arg1, npcs.Npc5262Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5262Data.alias):DoFreeStyle(4502, true, nil, true, true, false, false)
end

function Quest74060:OnSubFinish7406006(arg1)
    print("OnSubFinish7406006")
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
end

function Quest74060:OnSubStart7406007(arg1)
    print("OnSubStart7406007")
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5210Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21225Data.id, 7406007, 0, 60)
end

function Quest74060:OnSubFinish7406007(arg1)
    print("OnSubFinish7406007")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21124Data.alias)
    this:NPCDestroyImmediately(npcs.Npc5210Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21225Data.alias, 3)
end

function Quest74060:OnSubStart7406008(arg1)
    print("OnSubStart7406008")
    this:DailyNpcSafeHideSelf(npcs.Npc5210Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7406008Trigger", "Actor/Gadget/Q7406008Trigger", 70900002, 0, points.TPos_Q7406008Trigger.pos, points.TPos_Q7406008Trigger.rot, true, false, 3)
end

function Quest74060:OnSubFinish7406008(arg1)
    print("OnSubFinish7406008")
end

function Quest74060:OnSubStart7406040(arg1)
    print("OnSubStart7406040")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc5210Data.id, 7406040, 0, 20, 1)
end

function Quest74060:OnSubFinish7406040(arg1)
    print("OnSubFinish7406040")
    this:NPCDestroyImmediately(npcs.Npc5210Data.alias, 3)
end

function Quest74060:OnSubStart7406009(arg1)
    print("OnSubStart7406009")
    this:DailyNpcSafeHideSelf(npcs.Npc5210Data.alias, 1, true)
end

function Quest74060:OnSubFinish7406009(arg1)
    print("OnSubFinish7406009")
end

function Quest74060:OnSubStart7406010(arg1)
    print("OnSubStart7406010")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21073Data.id, 7406010, 0, 35, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5210Data.id, 0)
end

function Quest74060:OnSubFinish7406010(arg1)
    print("OnSubFinish7406010")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21073Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21124Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5210Data.alias)
end

function Quest74060:OnSubStart7406011(arg1)
    print("OnSubStart7406011")
    this:CreateQuestNpc(arg1, npcs.Npc5262Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5262Data.alias):DoFreeStyle(4502, true, nil, true, true, false, false)
end

function Quest74060:OnSubFinish7406011(arg1)
    print("OnSubFinish7406011")
    this:PlayerEnterDungeonPointWithDialogs(991, 2195, 7406011, 1, nil, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21225Data.alias, 3)
end

function Quest74060:OnSubStart7406012(arg1)
    print("OnSubStart7406012")
    this:CreateQuestNpc(arg1, npcs.Npc21225Data.id, 0)
end

function Quest74060:OnSubFinish7406012(arg1)
    print("OnSubFinish7406012")
    this:SafeDestroyQuestNpc(npcs.Npc21225Data.alias, 3)
end

function Quest74060:OnSubStart7406013(arg1)
    print("OnSubStart7406013")
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc5262Data.id, 7406013, 0, 40)
    this:GetQuestNpcActor(npcs.Npc5262Data.alias):DoFreeStyle(4010, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc5262Data.alias)
end

function Quest74060:OnSubFinish7406013(arg1)
    print("OnSubFinish7406013")
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
end

function Quest74060:OnSubStart7406014(arg1)
    print("OnSubStart7406014")
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
end

function Quest74060:OnSubFinish7406014(arg1)
    print("OnSubFinish7406014")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21073Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21124Data.alias)
end

function Quest74060:OnSubStart7406015(arg1)
    print("OnSubStart7406015")
    actorMgr:CreateActorWithPos("Q7406015Trigger", "Actor/Gadget/Q7406015Trigger", 70900002, 0, points.TPos_Q7406015Trigger.pos, points.TPos_Q7406015Trigger.rot, true, false, 3)
end

function Quest74060:OnSubFinish7406015(arg1)
    print("OnSubFinish7406015")
end

function Quest74060:OnSubStart7406016(arg1)
    print("OnSubStart7406016")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21073Data.id, 7406016, 0, 30, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:RequestInteraction(npcs.Npc21073Data.alias)
end

function Quest74060:OnSubFinish7406016(arg1)
    print("OnSubFinish7406016")
    this:SafeDestroyQuestNpc(npcs.Npc21073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21124Data.alias, 3)
end

function Quest74060:OnSubStart7406017(arg1)
    print("OnSubStart7406017")
end

function Quest74060:OnSubFinish7406017(arg1)
    print("OnSubFinish7406017")
end

function Quest74060:OnSubStart7406018(arg1)
    print("OnSubStart7406018")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21073Data.id, 7406018, 0, 30, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
end

function Quest74060:OnSubFinish7406018(arg1)
    print("OnSubFinish7406018")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21124Data.alias)
end

function Quest74060:OnSubStart7406019(arg1)
    print("OnSubStart7406019")
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74060:OnSubFinish7406019(arg1)
    print("OnSubFinish7406019")
    this:SafeDestroyQuestNpc(npcs.Npc21073Data.alias, 3)
end

function Quest74060:OnSubStart7406020(arg1)
    print("OnSubStart7406020")
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21124Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5262Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5262Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest74060:OnSubFinish7406020(arg1)
    print("OnSubFinish7406020")
    this:PlayerEnterDungeonPointWithDialogs(993, 2196, 7406020, 1, nil, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc21124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
end

function Quest74060:OnSubStart7406021(arg1)
    print("OnSubStart7406021")
end

function Quest74060:OnSubFinish7406021(arg1)
    print("OnSubFinish7406021")
end

function Quest74060:OnSubStart7406037(arg1)
    print("OnSubStart7406037")
    this:NpcCreateWithNpcTrigger(npcs.Npc5262Data.id, 7406037, 0, 50)
end

function Quest74060:OnSubFinish7406037(arg1)
    print("OnSubFinish7406037")
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
end

function Quest74060:OnSubStart7406022(arg1)
    print("OnSubStart7406022")
    this:NpcCreateWithNpcTrigger(npcs.Npc21073Data.id, 7406022, 0, 15)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21096Data.id, 0)
    actorMgr:CreateActorWithPos("Q7406022Trigger", "Actor/Gadget/Q7406022Trigger", 70900002, 0, points.TPos_Q7406022Trigger.pos, points.TPos_Q7406022Trigger.rot, true, false, 3)
end

function Quest74060:OnSubFinish7406022(arg1)
    print("OnSubFinish7406022")
end

function Quest74060:OnSubStart7406023(arg1)
    print("OnSubStart7406023")
    this:NpcCreateWithNpcTrigger(npcs.Npc21073Data.id, 7406023, 0, 25)
end

function Quest74060:OnSubFinish7406023(arg1)
    print("OnSubFinish7406023")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21073Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21124Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21096Data.alias, 3)
end

function Quest74060:OnSubStart7406024(arg1)
    print("OnSubStart7406024")
    actorMgr:CreateActorWithPos("Q7406024Trigger", "Actor/Gadget/Q7406024Trigger", 70900002, 0, points.TPos_Q7406024Trigger.pos, points.TPos_Q7406024Trigger.rot, true, false, 3)
end

function Quest74060:OnSubFinish7406024(arg1)
    print("OnSubFinish7406024")
end

function Quest74060:OnSubStart7406025(arg1)
    print("OnSubStart7406025")
    this:NpcCreateWithNpcTrigger(npcs.Npc21073Data.id, 7406025, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
end

function Quest74060:OnSubFinish7406025(arg1)
    print("OnSubFinish7406025")
    this:SafeDestroyQuestNpc(npcs.Npc21073Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21124Data.alias)
end

function Quest74060:OnSubStart7406026(arg1)
    print("OnSubStart7406026")
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
end

function Quest74060:OnSubFinish7406026(arg1)
    print("OnSubFinish7406026")
end

function Quest74060:OnSubStart7406027(arg1)
    print("OnSubStart7406027")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21073Data.id, 7406027, 0, 35, 2)
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
end

function Quest74060:OnSubFinish7406027(arg1)
    print("OnSubFinish7406027")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21124Data.alias)
end

function Quest74060:OnSubStart7406028(arg1)
    print("OnSubStart7406028")
    this:CreateQuestNpc(arg1, npcs.Npc21073Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74060:OnSubFinish7406028(arg1)
    print("OnSubFinish7406028")
    this:SafeDestroyQuestNpc(npcs.Npc21073Data.alias, 3)
end

function Quest74060:OnSubStart7406029(arg1)
    print("OnSubStart7406029")
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21124Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc5262Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5262Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest74060:OnSubFinish7406029(arg1)
    print("OnSubFinish7406029")
    this:PlayerEnterDungeonPointWithDialogs(995, 2197, 7406029, 1, nil, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc21124Data.alias, 3)
end

function Quest74060:OnSubStart7406030(arg1)
    print("OnSubStart7406030")
end

function Quest74060:OnSubFinish7406030(arg1)
    print("OnSubFinish7406030")
    this:RequestInteraction(npcs.Npc21073Data.alias)
end

function Quest74060:OnSubStart7406031(arg1)
    print("OnSubStart7406031")
    this:NpcCreateWithNpcTrigger(npcs.Npc5262Data.id, 7406031, 0, 50)
end

function Quest74060:OnSubFinish7406031(arg1)
    print("OnSubFinish7406031")
    this:PlayerEnterDungeonPointWithDialogs(997, 2198, 7406031, 1, nil, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
end

function Quest74060:OnSubStart7406032(arg1)
    print("OnSubStart7406032")
end

function Quest74060:OnSubFinish7406032(arg1)
    print("OnSubFinish7406032")
end

function Quest74060:OnSubStart7406033(arg1)
    print("OnSubStart7406033")
    this:NpcCreateWithNpcTrigger(npcs.Npc5262Data.id, 7406033, 0, 30)
    this:CreateQuestNpc(arg1, npcs.Npc21096Data.id, 0)
    this:RequestInteraction(npcs.Npc5262Data.alias)
end

function Quest74060:OnSubFinish7406033(arg1)
    print("OnSubFinish7406033")
    this:NPCDestroyImmediately(npcs.Npc5262Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21096Data.alias)
end

function Quest74060:OnSubStart7406034(arg1)
    print("OnSubStart7406034")
    this:DailyNpcSafeHideSelf(npcs.Npc5262Data.alias, 1, true)
end

function Quest74060:OnSubFinish7406034(arg1)
    print("OnSubFinish7406034")
end

function Quest74060:OnSubStart7406035(arg1)
    print("OnSubStart7406035")
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc21096Data.id, 7406035, 0, 30, 2)
    this:RequestInteraction(npcs.Npc21096Data.alias)
end

function Quest74060:OnSubFinish7406035(arg1)
    print("OnSubFinish7406035")
    this:SafeDestroyQuestNpc(npcs.Npc21124Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21096Data.alias)
end

function Quest74060:OnSubStart7406036(arg1)
    print("OnSubStart7406036")
    this:NpcCreateWithNpcTrigger(npcs.Npc21073Data.id, 7406036, 0, 20)
end

function Quest74060:OnSubFinish7406036(arg1)
    print("OnSubFinish7406036")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21073Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21124Data.alias)
end

function Quest74060:OnSubStart7406038(arg1)
    print("OnSubStart7406038")
    this:CreateQuestNpc(arg1, npcs.Npc21124Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5262Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21225Data.id, 0)
end

function Quest74060:OnSubFinish7406038(arg1)
    print("OnSubFinish7406038")
    this:PlayerEnterDungeonPointWithDialogs(991, 2195, 7406011, 1, nil, 3, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc21124Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5262Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21225Data.alias, 3)
end

function Quest74060:OnSubStart7406039(arg1)
    print("OnSubStart7406039")
end

function Quest74060:OnSubFinish7406039(arg1)
    print("OnSubFinish7406039")
end

function Quest74060:OnSubStart7406041(arg1)
    print("OnSubStart7406041")
end

function Quest74060:OnSubFinish7406041(arg1)
    print("OnSubFinish7406041")
end

return Quest74060
