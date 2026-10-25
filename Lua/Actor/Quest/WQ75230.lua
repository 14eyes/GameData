require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75230 = class("Quest75230", QuestActorProxy)
Quest75230.defaultAlias = "Quest75230"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75230:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75230:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7523001"] = self.OnSubStart7523001,
        ["7523002"] = self.OnSubStart7523002,
        ["7523003"] = self.OnSubStart7523003,
        ["7523004"] = self.OnSubStart7523004,
        ["7523005"] = self.OnSubStart7523005,
        ["7523006"] = self.OnSubStart7523006,
        ["7523009"] = self.OnSubStart7523009,
        ["7523031"] = self.OnSubStart7523031,
        ["7523015"] = self.OnSubStart7523015,
        ["7523029"] = self.OnSubStart7523029,
        ["7523026"] = self.OnSubStart7523026,
        ["7523007"] = self.OnSubStart7523007,
        ["7523027"] = self.OnSubStart7523027,
        ["7523030"] = self.OnSubStart7523030,
        ["7523036"] = self.OnSubStart7523036,
        ["7523011"] = self.OnSubStart7523011,
        ["7523038"] = self.OnSubStart7523038,
        ["7523039"] = self.OnSubStart7523039,
        ["7523040"] = self.OnSubStart7523040,
        ["7523012"] = self.OnSubStart7523012,
        ["7523013"] = self.OnSubStart7523013,
        ["7523028"] = self.OnSubStart7523028,
        ["7523014"] = self.OnSubStart7523014,
        ["7523035"] = self.OnSubStart7523035,
        ["7523016"] = self.OnSubStart7523016,
        ["7523037"] = self.OnSubStart7523037,
        ["7523041"] = self.OnSubStart7523041,
        ["7523034"] = self.OnSubStart7523034,
        ["7523032"] = self.OnSubStart7523032,
        ["7523018"] = self.OnSubStart7523018,
        ["7523042"] = self.OnSubStart7523042,
        ["7523019"] = self.OnSubStart7523019,
        ["7523033"] = self.OnSubStart7523033,
        ["7523043"] = self.OnSubStart7523043,
        ["7523020"] = self.OnSubStart7523020,
        ["7523044"] = self.OnSubStart7523044,
        ["7523021"] = self.OnSubStart7523021,
        ["7523022"] = self.OnSubStart7523022,
        ["7523024"] = self.OnSubStart7523024,
        ["7523008"] = self.OnSubStart7523008,
        ["7523010"] = self.OnSubStart7523010,
        ["7523025"] = self.OnSubStart7523025,
        ["7523023"] = self.OnSubStart7523023,
        ["7523017"] = self.OnSubStart7523017
    }
end

function Quest75230:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7523001"] = self.OnSubFinish7523001,
        ["7523002"] = self.OnSubFinish7523002,
        ["7523003"] = self.OnSubFinish7523003,
        ["7523004"] = self.OnSubFinish7523004,
        ["7523005"] = self.OnSubFinish7523005,
        ["7523006"] = self.OnSubFinish7523006,
        ["7523009"] = self.OnSubFinish7523009,
        ["7523031"] = self.OnSubFinish7523031,
        ["7523015"] = self.OnSubFinish7523015,
        ["7523029"] = self.OnSubFinish7523029,
        ["7523026"] = self.OnSubFinish7523026,
        ["7523007"] = self.OnSubFinish7523007,
        ["7523027"] = self.OnSubFinish7523027,
        ["7523030"] = self.OnSubFinish7523030,
        ["7523036"] = self.OnSubFinish7523036,
        ["7523011"] = self.OnSubFinish7523011,
        ["7523038"] = self.OnSubFinish7523038,
        ["7523039"] = self.OnSubFinish7523039,
        ["7523040"] = self.OnSubFinish7523040,
        ["7523012"] = self.OnSubFinish7523012,
        ["7523013"] = self.OnSubFinish7523013,
        ["7523028"] = self.OnSubFinish7523028,
        ["7523014"] = self.OnSubFinish7523014,
        ["7523035"] = self.OnSubFinish7523035,
        ["7523016"] = self.OnSubFinish7523016,
        ["7523037"] = self.OnSubFinish7523037,
        ["7523041"] = self.OnSubFinish7523041,
        ["7523034"] = self.OnSubFinish7523034,
        ["7523032"] = self.OnSubFinish7523032,
        ["7523018"] = self.OnSubFinish7523018,
        ["7523042"] = self.OnSubFinish7523042,
        ["7523019"] = self.OnSubFinish7523019,
        ["7523033"] = self.OnSubFinish7523033,
        ["7523043"] = self.OnSubFinish7523043,
        ["7523020"] = self.OnSubFinish7523020,
        ["7523044"] = self.OnSubFinish7523044,
        ["7523021"] = self.OnSubFinish7523021,
        ["7523022"] = self.OnSubFinish7523022,
        ["7523024"] = self.OnSubFinish7523024,
        ["7523008"] = self.OnSubFinish7523008,
        ["7523010"] = self.OnSubFinish7523010,
        ["7523025"] = self.OnSubFinish7523025,
        ["7523023"] = self.OnSubFinish7523023,
        ["7523017"] = self.OnSubFinish7523017
    }
end

function Quest75230:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75230:Start()
    print("Start")
end

function Quest75230:OnDestroy()
    print("OnDestroy")
end

function Quest75230:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75230:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75230:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc21952.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21955.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21956.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21957.alias, 20263)
    this:SafeDestroyQuestNpc(npcs.Npc21954.alias, 3)
    this:ActorDestroy("Q7523010Trigger")
    this:ActorDestroy("Q7523011Trigger")
    this:ActorDestroy("Q7523019Trigger")
    this:ActorDestroy("Q7523018Trigger")
    this:DestroyNpcTrigger("Q7523021N21957Trigger")
    this:DestroyNpcTrigger("Q7523003N21954Trigger")
    this:DestroyNpcTrigger("Q7523019N21957Trigger")
    this:DestroyNpcTrigger("Q7523010N21956Trigger")
    this:DestroyNpcTrigger("Q7523025N21952Trigger")
end

function Quest75230:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7523010Trigger")
    this:ActorDestroy("Q7523011Trigger")
    this:ActorDestroy("Q7523019Trigger")
    this:ActorDestroy("Q7523018Trigger")
    this:ActorDestroy("Q7523028Trigger")
    this:ActorDestroy("Q7523032Trigger")
    this:ActorDestroy("Q7523033Trigger")
end

function Quest75230:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75230:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75230:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest75230:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75230:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest75230:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest75230:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest75230:OnSubStart7523001(arg1)
    print("OnSubStart7523001")
    this:CreateQuestNpc(arg1, npcs.Npc21953.id, 0, false, 0)
end

function Quest75230:OnSubFinish7523001(arg1)
    print("OnSubFinish7523001")
    this:SafeDestroyQuestNpc(npcs.Npc21953.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData1, nil, nil, nil)
end

function Quest75230:OnSubStart7523002(arg1)
    print("OnSubStart7523002")
end

function Quest75230:OnSubFinish7523002(arg1)
    print("OnSubFinish7523002")
end

function Quest75230:OnSubStart7523003(arg1)
    print("OnSubStart7523003")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523003, 0, 30, 1, npcs.Npc21954.id)
end

function Quest75230:OnSubFinish7523003(arg1)
    print("OnSubFinish7523003")
    this:NpcDestroyImmediately(3, npcs.Npc21952.alias)
end

function Quest75230:OnSubStart7523004(arg1)
    print("OnSubStart7523004")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21954.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21952.id, arg1)
end

function Quest75230:OnSubFinish7523004(arg1)
    print("OnSubFinish7523004")
end

function Quest75230:OnSubStart7523005(arg1)
    print("OnSubStart7523005")
    this:ActionSafeCall(nil)
    this:CreateQuestNpc(arg1, npcs.Npc21952.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21952.alias, 75230):DoFreeStyle(2, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21955.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21954.id, 0, false, 0)
end

function Quest75230:OnSubFinish7523005(arg1)
    print("OnSubFinish7523005")
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData1, nil, nil, nil)
end

function Quest75230:OnSubStart7523006(arg1)
    print("OnSubStart7523006")
    this:NpcCreateWithNpcTrigger(npcs.Npc21955.id, 0, 10, 7523006)
    this:GetQuestNpcActor(npcs.Npc21952.alias, 75230):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest75230:OnSubFinish7523006(arg1)
    print("OnSubFinish7523006")
    this:SafeDestroyQuestNpc(npcs.Npc21955.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21952.alias, 3)
end

function Quest75230:OnSubStart7523009(arg1)
    print("OnSubStart7523009")
    this:CreateQuestNpc(arg1, npcs.Npc21952.id, 0, false, 0)
end

function Quest75230:OnSubFinish7523009(arg1)
    print("OnSubFinish7523009")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21954.alias)
end

function Quest75230:OnSubStart7523031(arg1)
    print("OnSubStart7523031")
end

function Quest75230:OnSubFinish7523031(arg1)
    print("OnSubFinish7523031")
    this:CreateQuestNpc(arg1, npcs.Npc21954.id, 0, false, 0)
    this:QuestNarratorTask(datas.NarratorWithId_7523001, nil)
end

function Quest75230:OnSubStart7523015(arg1)
    print("OnSubStart7523015")
    this:CreateQuestNpc(arg1, npcs.Npc21952.id, 0, false, 0)
end

function Quest75230:OnSubFinish7523015(arg1)
    print("OnSubFinish7523015")
end

function Quest75230:OnSubStart7523029(arg1)
    print("OnSubStart7523029")
    this:NpcCreateWithNpcTrigger(npcs.Npc21973.id, 0, 5, 7523029)
end

function Quest75230:OnSubFinish7523029(arg1)
    print("OnSubFinish7523029")
    this:SafeDestroyQuestNpc(npcs.Npc21973.alias, 3)
end

function Quest75230:OnSubStart7523026(arg1)
    print("OnSubStart7523026")
end

function Quest75230:OnSubFinish7523026(arg1)
    print("OnSubFinish7523026")
end

function Quest75230:OnSubStart7523007(arg1)
    print("OnSubStart7523007")
end

function Quest75230:OnSubFinish7523007(arg1)
    print("OnSubFinish7523007")
end

function Quest75230:OnSubStart7523027(arg1)
    print("OnSubStart7523027")
end

function Quest75230:OnSubFinish7523027(arg1)
    print("OnSubFinish7523027")
end

function Quest75230:OnSubStart7523030(arg1)
    print("OnSubStart7523030")
end

function Quest75230:OnSubFinish7523030(arg1)
    print("OnSubFinish7523030")
    this:TransmitPlayerByData(arg1, 5, datas.TransmitData1, nil, nil, nil)
end

function Quest75230:OnSubStart7523036(arg1)
    print("OnSubStart7523036")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523036, 0, 10, 0, npcs.Npc21956.id)
end

function Quest75230:OnSubFinish7523036(arg1)
    print("OnSubFinish7523036")
    this:SafeDestroyQuestNpc(npcs.Npc21956.alias, 3)
end

function Quest75230:OnSubStart7523011(arg1)
    print("OnSubStart7523011")
    this:CreateQuestNpc(arg1, npcs.Npc21952.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21954.id, 0, 10, 7523011)
end

function Quest75230:OnSubFinish7523011(arg1)
    print("OnSubFinish7523011")
end

function Quest75230:OnSubStart7523038(arg1)
    print("OnSubStart7523038")
    this:CreateQuestNpc(arg1, npcs.Npc22194.id, 0, false, 0)
end

function Quest75230:OnSubFinish7523038(arg1)
    print("OnSubFinish7523038")
    this:RequestInteraction(npcs.Npc22194.alias, "", true)
    this:CallDelayByQuest("7523038D1", 0.2, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc22194.alias, 3)
    end)
end

function Quest75230:OnSubStart7523039(arg1)
    print("OnSubStart7523039")
    this:CreateQuestNpc(arg1, npcs.Npc22195.id, 0, false, 0)
end

function Quest75230:OnSubFinish7523039(arg1)
    print("OnSubFinish7523039")
    this:RequestInteraction(npcs.Npc22195.alias, "", true)
    this:CallDelayByQuest("7523039D1", 0.2, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc22195.alias, 3)
    end)
end

function Quest75230:OnSubStart7523040(arg1)
    print("OnSubStart7523040")
    this:CreateQuestNpc(arg1, npcs.Npc22196.id, 0, false, 0)
end

function Quest75230:OnSubFinish7523040(arg1)
    print("OnSubFinish7523040")
    this:RequestInteraction(npcs.Npc22196.alias, "", true)
    this:CallDelayByQuest("7523040D1", 0.2, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc22196.alias, 3)
    end)
end

function Quest75230:OnSubStart7523012(arg1)
    print("OnSubStart7523012")
    this:ActionSafeCall(nil)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21956.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21956.alias, 75230):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21954.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc21952.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21952.alias, 75230):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest75230:OnSubFinish7523012(arg1)
    print("OnSubFinish7523012")
end

function Quest75230:OnSubStart7523013(arg1)
    print("OnSubStart7523013")
    this:GetQuestNpcActor(npcs.Npc21956.alias, 75230):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21952.alias, 75230):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest75230:OnSubFinish7523013(arg1)
    print("OnSubFinish7523013")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21956.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22194.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22195.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22196.alias, 3)
end

function Quest75230:OnSubStart7523028(arg1)
    print("OnSubStart7523028")
    this:GetQuestNpcActor(npcs.Npc21952.alias, 75230):DoFreeStyle(2, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7523028Trigger", "Actor/Gadget/Q7523028Trigger", 70900002, 0, points._Q7523028TriggerPoint_.pos, points._Q7523028TriggerPoint_.rot, true, false, 3)
end

function Quest75230:OnSubFinish7523028(arg1)
    print("OnSubFinish7523028")
end

function Quest75230:OnSubStart7523014(arg1)
    print("OnSubStart7523014")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523014, 0, 8, 0, npcs.Npc21956.id)
    this:GetQuestNpcActor(npcs.Npc21952.alias, 75230):DoFreeStyle(2, true, nil, true, true, false, false)
end

function Quest75230:OnSubFinish7523014(arg1)
    print("OnSubFinish7523014")
    this:SafeDestroyQuestNpc(npcs.Npc21956.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21954.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21952.alias, 3)
    this:TransmitPlayerByData(arg1, 3, datas.TransmitData1, nil, nil, nil)
end

function Quest75230:OnSubStart7523035(arg1)
    print("OnSubStart7523035")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc21956.id, 0, 7523035, 10, true)
end

function Quest75230:OnSubFinish7523035(arg1)
    print("OnSubFinish7523035")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21956.alias)
end

function Quest75230:OnSubStart7523016(arg1)
    print("OnSubStart7523016")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523016, 0, 5, 0, npcs.Npc21956.id)
end

function Quest75230:OnSubFinish7523016(arg1)
    print("OnSubFinish7523016")
end

function Quest75230:OnSubStart7523037(arg1)
    print("OnSubStart7523037")
    this:NpcCreateWithNpcTrigger(npcs.Npc21956.id, 0, 20, 7523037)
end

function Quest75230:OnSubFinish7523037(arg1)
    print("OnSubFinish7523037")
    this:SafeDestroyQuestNpc(npcs.Npc21956.alias, 3)
    this:PlayerEnterDungeonWithData(1618, 1245, 7523017, 0, datas.TransmitData1, nil, nil)
end

function Quest75230:OnSubStart7523041(arg1)
    print("OnSubStart7523041")
end

function Quest75230:OnSubFinish7523041(arg1)
    print("OnSubFinish7523041")
end

function Quest75230:OnSubStart7523034(arg1)
    print("OnSubStart7523034")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc21973.id, 0, 7523034, 30, true)
end

function Quest75230:OnSubFinish7523034(arg1)
    print("OnSubFinish7523034")
    this:SafeDestroyQuestNpc(npcs.Npc21973.alias, 20263)
end

function Quest75230:OnSubStart7523032(arg1)
    print("OnSubStart7523032")
    actorMgr:CreateActorWithPos("Q7523032Trigger", "Actor/Gadget/Q7523032Trigger", 70900002, 0, points._Q7523032TriggerPoint_.pos, points._Q7523032TriggerPoint_.rot, true, false, 20263)
end

function Quest75230:OnSubFinish7523032(arg1)
    print("OnSubFinish7523032")
end

function Quest75230:OnSubStart7523018(arg1)
    print("OnSubStart7523018")
    actorMgr:CreateActorWithPos("Q7523018Trigger", "Actor/Gadget/Q7523018Trigger", 70900002, 0, points._Q7523018TriggerPoint_.pos, points._Q7523018TriggerPoint_.rot, true, false, 20263)
end

function Quest75230:OnSubFinish7523018(arg1)
    print("OnSubFinish7523018")
end

function Quest75230:OnSubStart7523042(arg1)
    print("OnSubStart7523042")
end

function Quest75230:OnSubFinish7523042(arg1)
    print("OnSubFinish7523042")
end

function Quest75230:OnSubStart7523019(arg1)
    print("OnSubStart7523019")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523019, 0, 20, 1, npcs.Npc21957.id)
    actorMgr:CreateActorWithPos("Q7523019Trigger", "Actor/Gadget/Q7523019Trigger", 70900002, 0, points._Q7523019TriggerPoint_.pos, points._Q7523019TriggerPoint_.rot, true, false, 20263)
end

function Quest75230:OnSubFinish7523019(arg1)
    print("OnSubFinish7523019")
    this:SafeDestroyQuestNpc(npcs.Npc21957.alias, 20263)
end

function Quest75230:OnSubStart7523033(arg1)
    print("OnSubStart7523033")
    actorMgr:CreateActorWithPos("Q7523033Trigger", "Actor/Gadget/Q7523033Trigger", 70900002, 0, points._Q7523033TriggerPoint_.pos, points._Q7523033TriggerPoint_.rot, true, false, 20263)
end

function Quest75230:OnSubFinish7523033(arg1)
    print("OnSubFinish7523033")
end

function Quest75230:OnSubStart7523043(arg1)
    print("OnSubStart7523043")
end

function Quest75230:OnSubFinish7523043(arg1)
    print("OnSubFinish7523043")
end

function Quest75230:OnSubStart7523020(arg1)
    print("OnSubStart7523020")
end

function Quest75230:OnSubFinish7523020(arg1)
    print("OnSubFinish7523020")
    this:TransmitPlayerByData(arg1, 6, datas.TransmitData1, nil, nil, nil)
end

function Quest75230:OnSubStart7523044(arg1)
    print("OnSubStart7523044")
end

function Quest75230:OnSubFinish7523044(arg1)
    print("OnSubFinish7523044")
end

function Quest75230:OnSubStart7523021(arg1)
    print("OnSubStart7523021")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523021, 0, 80, 1, npcs.Npc21957.id)
end

function Quest75230:OnSubFinish7523021(arg1)
    print("OnSubFinish7523021")
    this:SafeDestroyQuestNpc(npcs.Npc21957.alias, 20263)
    this:TransmitPlayerByData(arg1, 4, datas.TransmitData1, nil, nil, nil)
end

function Quest75230:OnSubStart7523022(arg1)
    print("OnSubStart7523022")
    this:NpcCreateWithNpcTrigger(npcs.Npc21956.id, 0, 25, 7523022)
end

function Quest75230:OnSubFinish7523022(arg1)
    print("OnSubFinish7523022")
    this:SafeDestroyQuestNpc(npcs.Npc21956.alias, 3)
end

function Quest75230:OnSubStart7523024(arg1)
    print("OnSubStart7523024")
end

function Quest75230:OnSubFinish7523024(arg1)
    print("OnSubFinish7523024")
end

function Quest75230:OnSubStart7523008(arg1)
    print("OnSubStart7523008")
end

function Quest75230:OnSubFinish7523008(arg1)
    print("OnSubFinish7523008")
end

function Quest75230:OnSubStart7523010(arg1)
    print("OnSubStart7523010")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523010, 0, 30, 1, npcs.Npc21956.id)
end

function Quest75230:OnSubFinish7523010(arg1)
    print("OnSubFinish7523010")
    this:SafeDestroyQuestNpc(npcs.Npc21956.alias, 3)
end

function Quest75230:OnSubStart7523025(arg1)
    print("OnSubStart7523025")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7523025, 0, 30, 1, npcs.Npc21952.id)
end

function Quest75230:OnSubFinish7523025(arg1)
    print("OnSubFinish7523025")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData1, nil, nil, nil)
end

function Quest75230:OnSubStart7523023(arg1)
    print("OnSubStart7523023")
end

function Quest75230:OnSubFinish7523023(arg1)
    print("OnSubFinish7523023")
end

function Quest75230:OnSubStart7523017(arg1)
    print("OnSubStart7523017")
end

function Quest75230:OnSubFinish7523017(arg1)
    print("OnSubFinish7523017")
    this:SafeDestroyQuestNpc(npcs.Npc21956.alias, 3)
end

return Quest75230
