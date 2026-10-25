require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76110 = class("Quest76110", QuestActorProxy)
Quest76110.defaultAlias = "Quest76110"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76110:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76110:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7611001"] = self.OnSubStart7611001,
        ["7611002"] = self.OnSubStart7611002,
        ["7611003"] = self.OnSubStart7611003,
        ["7611005"] = self.OnSubStart7611005,
        ["7611006"] = self.OnSubStart7611006,
        ["7611007"] = self.OnSubStart7611007,
        ["7611040"] = self.OnSubStart7611040,
        ["7611008"] = self.OnSubStart7611008,
        ["7611016"] = self.OnSubStart7611016,
        ["7611017"] = self.OnSubStart7611017,
        ["7611018"] = self.OnSubStart7611018,
        ["7611039"] = self.OnSubStart7611039,
        ["7611009"] = self.OnSubStart7611009,
        ["7611010"] = self.OnSubStart7611010,
        ["7611011"] = self.OnSubStart7611011,
        ["7611025"] = self.OnSubStart7611025,
        ["7611026"] = self.OnSubStart7611026,
        ["7611027"] = self.OnSubStart7611027,
        ["7611012"] = self.OnSubStart7611012,
        ["7611013"] = self.OnSubStart7611013,
        ["7611020"] = self.OnSubStart7611020,
        ["7611036"] = self.OnSubStart7611036,
        ["7611028"] = self.OnSubStart7611028,
        ["7611015"] = self.OnSubStart7611015,
        ["7611041"] = self.OnSubStart7611041,
        ["7611032"] = self.OnSubStart7611032,
        ["7611038"] = self.OnSubStart7611038,
        ["7611034"] = self.OnSubStart7611034,
        ["7611035"] = self.OnSubStart7611035,
        ["7611014"] = self.OnSubStart7611014,
        ["7611037"] = self.OnSubStart7611037,
        ["7611021"] = self.OnSubStart7611021,
        ["7611019"] = self.OnSubStart7611019,
        ["7611022"] = self.OnSubStart7611022,
        ["7611023"] = self.OnSubStart7611023,
        ["7611024"] = self.OnSubStart7611024,
        ["7611029"] = self.OnSubStart7611029,
        ["7611030"] = self.OnSubStart7611030,
        ["7611031"] = self.OnSubStart7611031,
        ["7611033"] = self.OnSubStart7611033,
        ["7611004"] = self.OnSubStart7611004
    }
end

function Quest76110:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7611001"] = self.OnSubFinish7611001,
        ["7611002"] = self.OnSubFinish7611002,
        ["7611003"] = self.OnSubFinish7611003,
        ["7611005"] = self.OnSubFinish7611005,
        ["7611006"] = self.OnSubFinish7611006,
        ["7611007"] = self.OnSubFinish7611007,
        ["7611040"] = self.OnSubFinish7611040,
        ["7611008"] = self.OnSubFinish7611008,
        ["7611016"] = self.OnSubFinish7611016,
        ["7611017"] = self.OnSubFinish7611017,
        ["7611018"] = self.OnSubFinish7611018,
        ["7611039"] = self.OnSubFinish7611039,
        ["7611009"] = self.OnSubFinish7611009,
        ["7611010"] = self.OnSubFinish7611010,
        ["7611011"] = self.OnSubFinish7611011,
        ["7611025"] = self.OnSubFinish7611025,
        ["7611026"] = self.OnSubFinish7611026,
        ["7611027"] = self.OnSubFinish7611027,
        ["7611012"] = self.OnSubFinish7611012,
        ["7611013"] = self.OnSubFinish7611013,
        ["7611020"] = self.OnSubFinish7611020,
        ["7611036"] = self.OnSubFinish7611036,
        ["7611028"] = self.OnSubFinish7611028,
        ["7611015"] = self.OnSubFinish7611015,
        ["7611041"] = self.OnSubFinish7611041,
        ["7611032"] = self.OnSubFinish7611032,
        ["7611038"] = self.OnSubFinish7611038,
        ["7611034"] = self.OnSubFinish7611034,
        ["7611035"] = self.OnSubFinish7611035,
        ["7611014"] = self.OnSubFinish7611014,
        ["7611037"] = self.OnSubFinish7611037,
        ["7611021"] = self.OnSubFinish7611021,
        ["7611019"] = self.OnSubFinish7611019,
        ["7611022"] = self.OnSubFinish7611022,
        ["7611023"] = self.OnSubFinish7611023,
        ["7611024"] = self.OnSubFinish7611024,
        ["7611029"] = self.OnSubFinish7611029,
        ["7611030"] = self.OnSubFinish7611030,
        ["7611031"] = self.OnSubFinish7611031,
        ["7611033"] = self.OnSubFinish7611033,
        ["7611004"] = self.OnSubFinish7611004
    }
end

function Quest76110:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76110:Start()
    print("Start")
end

function Quest76110:OnDestroy()
    print("OnDestroy")
end

function Quest76110:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76110:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76110:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76110:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7611040Trigger")
end

function Quest76110:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76110:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76110:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76110:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76110:CreateRepeatableNpcShowDisappearTriggerCommon(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg4, arg1, arg6, arg2, arg5, arg3)
end

function Quest76110:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76110:OnSubStart7611001(arg1)
    print("OnSubStart7611001")
end

function Quest76110:OnSubFinish7611001(arg1)
    print("OnSubFinish7611001")
    this:QuestNarratorTask(datas.NarratorWithId_761109901, nil)
    if this:GetQuestGlobalVar(7609801) == 1 then
        this:SetNavigationByMainId(76110, true)
    end
end

function Quest76110:OnSubStart7611002(arg1)
    print("OnSubStart7611002")
    this:CreateQuestNpc(arg1, npcs.Npc22236.id, 0, false, 0)
end

function Quest76110:OnSubFinish7611002(arg1)
    print("OnSubFinish7611002")
    this:NpcDestroyWithDither(3, npcs.Npc22236.alias)
end

function Quest76110:OnSubStart7611003(arg1)
    print("OnSubStart7611003")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7611003, 0, 5, 1, npcs.Npc22236.id)
    this:GetQuestNpcActor(npcs.Npc22236.alias, 76110):DisableInteeHeadCtrl(false)
    this:CreateQuestNpc(arg1, npcs.Npc22237.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22237.alias, 76110):DisableInteeHeadCtrl(false)
end

function Quest76110:OnSubFinish7611003(arg1)
    print("OnSubFinish7611003")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22236.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22237.alias)
end

function Quest76110:OnSubStart7611005(arg1)
    print("OnSubStart7611005")
end

function Quest76110:OnSubFinish7611005(arg1)
    print("OnSubFinish7611005")
end

function Quest76110:OnSubStart7611006(arg1)
    print("OnSubStart7611006")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7611006, 0, 5, 1, npcs.Npc22236.id)
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7611006, 0, 10, "", 8, npcs.Npc22237.id)
end

function Quest76110:OnSubFinish7611006(arg1)
    print("OnSubFinish7611006")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc22236.alias)
end

function Quest76110:OnSubStart7611007(arg1)
    print("OnSubStart7611007")
    this:GetQuestNpcActor(npcs.Npc22237.alias, 76110):DisableInteeHeadCtrl(false)
end

function Quest76110:OnSubFinish7611007(arg1)
    print("OnSubFinish7611007")
    this:SafeDestroyQuestNpc(npcs.Npc22237.alias, 3)
end

function Quest76110:OnSubStart7611040(arg1)
    print("OnSubStart7611040")
    actorMgr:CreateActorWithPos("Q7611040Trigger", "Actor/Gadget/Q7611040Trigger", 70900002, 0, points._Q7611040TriggerPoint_.pos, points._Q7611040TriggerPoint_.rot, true, false, 3)
end

function Quest76110:OnSubFinish7611040(arg1)
    print("OnSubFinish7611040")
end

function Quest76110:OnSubStart7611008(arg1)
    print("OnSubStart7611008")
end

function Quest76110:OnSubFinish7611008(arg1)
    print("OnSubFinish7611008")
end

function Quest76110:OnSubStart7611016(arg1)
    print("OnSubStart7611016")
end

function Quest76110:OnSubFinish7611016(arg1)
    print("OnSubFinish7611016")
end

function Quest76110:OnSubStart7611017(arg1)
    print("OnSubStart7611017")
end

function Quest76110:OnSubFinish7611017(arg1)
    print("OnSubFinish7611017")
end

function Quest76110:OnSubStart7611018(arg1)
    print("OnSubStart7611018")
end

function Quest76110:OnSubFinish7611018(arg1)
    print("OnSubFinish7611018")
end

function Quest76110:OnSubStart7611039(arg1)
    print("OnSubStart7611039")
end

function Quest76110:OnSubFinish7611039(arg1)
    print("OnSubFinish7611039")
end

function Quest76110:OnSubStart7611009(arg1)
    print("OnSubStart7611009")
end

function Quest76110:OnSubFinish7611009(arg1)
    print("OnSubFinish7611009")
end

function Quest76110:OnSubStart7611010(arg1)
    print("OnSubStart7611010")
end

function Quest76110:OnSubFinish7611010(arg1)
    print("OnSubFinish7611010")
end

function Quest76110:OnSubStart7611011(arg1)
    print("OnSubStart7611011")
end

function Quest76110:OnSubFinish7611011(arg1)
    print("OnSubFinish7611011")
end

function Quest76110:OnSubStart7611025(arg1)
    print("OnSubStart7611025")
end

function Quest76110:OnSubFinish7611025(arg1)
    print("OnSubFinish7611025")
end

function Quest76110:OnSubStart7611026(arg1)
    print("OnSubStart7611026")
end

function Quest76110:OnSubFinish7611026(arg1)
    print("OnSubFinish7611026")
end

function Quest76110:OnSubStart7611027(arg1)
    print("OnSubStart7611027")
end

function Quest76110:OnSubFinish7611027(arg1)
    print("OnSubFinish7611027")
end

function Quest76110:OnSubStart7611012(arg1)
    print("OnSubStart7611012")
end

function Quest76110:OnSubFinish7611012(arg1)
    print("OnSubFinish7611012")
end

function Quest76110:OnSubStart7611013(arg1)
    print("OnSubStart7611013")
end

function Quest76110:OnSubFinish7611013(arg1)
    print("OnSubFinish7611013")
end

function Quest76110:OnSubStart7611020(arg1)
    print("OnSubStart7611020")
end

function Quest76110:OnSubFinish7611020(arg1)
    print("OnSubFinish7611020")
end

function Quest76110:OnSubStart7611036(arg1)
    print("OnSubStart7611036")
end

function Quest76110:OnSubFinish7611036(arg1)
    print("OnSubFinish7611036")
end

function Quest76110:OnSubStart7611028(arg1)
    print("OnSubStart7611028")
end

function Quest76110:OnSubFinish7611028(arg1)
    print("OnSubFinish7611028")
end

function Quest76110:OnSubStart7611015(arg1)
    print("OnSubStart7611015")
end

function Quest76110:OnSubFinish7611015(arg1)
    print("OnSubFinish7611015")
end

function Quest76110:OnSubStart7611041(arg1)
    print("OnSubStart7611041")
end

function Quest76110:OnSubFinish7611041(arg1)
    print("OnSubFinish7611041")
end

function Quest76110:OnSubStart7611032(arg1)
    print("OnSubStart7611032")
end

function Quest76110:OnSubFinish7611032(arg1)
    print("OnSubFinish7611032")
end

function Quest76110:OnSubStart7611038(arg1)
    print("OnSubStart7611038")
    this:PlayCutsceneIndex(76110, function(arg1)
        actorUtils.FinishQuestID(false, 7611038)
    end, nil, nil, false)
end

function Quest76110:OnSubFinish7611038(arg1)
    print("OnSubFinish7611038")
end

function Quest76110:OnSubStart7611034(arg1)
    print("OnSubStart7611034")
    this:CreateQuestNpc(arg1, npcs.Npc22339.id, 0, false, 0)
end

function Quest76110:OnSubFinish7611034(arg1)
    print("OnSubFinish7611034")
end

function Quest76110:OnSubStart7611035(arg1)
    print("OnSubStart7611035")
end

function Quest76110:OnSubFinish7611035(arg1)
    print("OnSubFinish7611035")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest76110:OnSubStart7611014(arg1)
    print("OnSubStart7611014")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc22251.id, 0, 7611014, 5, true)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc22252.id, 0, 7611014, 5, true)
end

function Quest76110:OnSubFinish7611014(arg1)
    print("OnSubFinish7611014")
end

function Quest76110:OnSubStart7611037(arg1)
    print("OnSubStart7611037")
    this:CreateQuestNpc(arg1, npcs.Npc22251.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22252.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22339.id, 0, false, 0)
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
end

function Quest76110:OnSubFinish7611037(arg1)
    print("OnSubFinish7611037")
    this:SafeDestroyQuestNpc(npcs.Npc22251.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22252.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22339.alias, 3)
end

function Quest76110:OnSubStart7611021(arg1)
    print("OnSubStart7611021")
    this:CreateQuestNpc(arg1, npcs.Npc22236.id, 0, false, 0)
end

function Quest76110:OnSubFinish7611021(arg1)
    print("OnSubFinish7611021")
end

function Quest76110:OnSubStart7611019(arg1)
    print("OnSubStart7611019")
end

function Quest76110:OnSubFinish7611019(arg1)
    print("OnSubFinish7611019")
end

function Quest76110:OnSubStart7611022(arg1)
    print("OnSubStart7611022")
end

function Quest76110:OnSubFinish7611022(arg1)
    print("OnSubFinish7611022")
end

function Quest76110:OnSubStart7611023(arg1)
    print("OnSubStart7611023")
end

function Quest76110:OnSubFinish7611023(arg1)
    print("OnSubFinish7611023")
end

function Quest76110:OnSubStart7611024(arg1)
    print("OnSubStart7611024")
end

function Quest76110:OnSubFinish7611024(arg1)
    print("OnSubFinish7611024")
end

function Quest76110:OnSubStart7611029(arg1)
    print("OnSubStart7611029")
end

function Quest76110:OnSubFinish7611029(arg1)
    print("OnSubFinish7611029")
end

function Quest76110:OnSubStart7611030(arg1)
    print("OnSubStart7611030")
end

function Quest76110:OnSubFinish7611030(arg1)
    print("OnSubFinish7611030")
end

function Quest76110:OnSubStart7611031(arg1)
    print("OnSubStart7611031")
end

function Quest76110:OnSubFinish7611031(arg1)
    print("OnSubFinish7611031")
end

function Quest76110:OnSubStart7611033(arg1)
    print("OnSubStart7611033")
end

function Quest76110:OnSubFinish7611033(arg1)
    print("OnSubFinish7611033")
end

function Quest76110:OnSubStart7611004(arg1)
    print("OnSubStart7611004")
end

function Quest76110:OnSubFinish7611004(arg1)
    print("OnSubFinish7611004")
end

return Quest76110
