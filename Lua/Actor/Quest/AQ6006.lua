require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6006 = class("Quest6006", QuestActorProxy)
Quest6006.defaultAlias = "Quest6006"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6006:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["600601"] = self.OnSubStart600601,
        ["600602"] = self.OnSubStart600602,
        ["600603"] = self.OnSubStart600603,
        ["600626"] = self.OnSubStart600626,
        ["600604"] = self.OnSubStart600604,
        ["600605"] = self.OnSubStart600605,
        ["600606"] = self.OnSubStart600606,
        ["600625"] = self.OnSubStart600625,
        ["600607"] = self.OnSubStart600607,
        ["600608"] = self.OnSubStart600608,
        ["600609"] = self.OnSubStart600609,
        ["600615"] = self.OnSubStart600615,
        ["600610"] = self.OnSubStart600610,
        ["600611"] = self.OnSubStart600611,
        ["600612"] = self.OnSubStart600612,
        ["600613"] = self.OnSubStart600613,
        ["600614"] = self.OnSubStart600614,
        ["600616"] = self.OnSubStart600616,
        ["600617"] = self.OnSubStart600617,
        ["600618"] = self.OnSubStart600618,
        ["600619"] = self.OnSubStart600619,
        ["600620"] = self.OnSubStart600620,
        ["600621"] = self.OnSubStart600621,
        ["600622"] = self.OnSubStart600622,
        ["600623"] = self.OnSubStart600623,
        ["600627"] = self.OnSubStart600627,
        ["600624"] = self.OnSubStart600624
    }
end

function Quest6006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["600601"] = self.OnSubFinish600601,
        ["600602"] = self.OnSubFinish600602,
        ["600603"] = self.OnSubFinish600603,
        ["600626"] = self.OnSubFinish600626,
        ["600604"] = self.OnSubFinish600604,
        ["600605"] = self.OnSubFinish600605,
        ["600606"] = self.OnSubFinish600606,
        ["600625"] = self.OnSubFinish600625,
        ["600607"] = self.OnSubFinish600607,
        ["600608"] = self.OnSubFinish600608,
        ["600609"] = self.OnSubFinish600609,
        ["600615"] = self.OnSubFinish600615,
        ["600610"] = self.OnSubFinish600610,
        ["600611"] = self.OnSubFinish600611,
        ["600612"] = self.OnSubFinish600612,
        ["600613"] = self.OnSubFinish600613,
        ["600614"] = self.OnSubFinish600614,
        ["600616"] = self.OnSubFinish600616,
        ["600617"] = self.OnSubFinish600617,
        ["600618"] = self.OnSubFinish600618,
        ["600619"] = self.OnSubFinish600619,
        ["600620"] = self.OnSubFinish600620,
        ["600621"] = self.OnSubFinish600621,
        ["600622"] = self.OnSubFinish600622,
        ["600623"] = self.OnSubFinish600623,
        ["600627"] = self.OnSubFinish600627,
        ["600624"] = self.OnSubFinish600624
    }
end

function Quest6006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["600614"] = self.OnSubFailed600614, ["600624"] = self.OnSubFailed600624}
end

function Quest6006:Start()
    print("Start")
end

function Quest6006:OnDestroy()
    print("OnDestroy")
end

function Quest6006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6006:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("\228\184\142\228\188\138\230\182\133\232\138\153\229\175\185\232\175\157")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15356.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15365.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15366.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15367.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15355.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15346.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15364.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15368.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15422.alias, 20274)
    this:ActorDestroy("Q600614trigger")
    this:ActorDestroy("Q600611trigger")
    this:ActorDestroy("Q600601Trigger")
    this:ActorDestroy("Q600627Trigger")
    this:ActorDestroy("Q60062702Trigger")
    this:ActorDestroy("Q600624Trigger")
    this:ActorDestroy("Q600617Trigger")
    this:ActorDestroy("Q600610Trigger")
    this:DestroyNpcTrigger("Q600604N15345Trigger")
    this:DestroyNpcTrigger("Q600607N15345Trigger")
    this:DestroyNpcTrigger("Q600609N15345Trigger")
    this:DestroyNpcTrigger("Q600610N15345Trigger")
    this:DestroyNpcTrigger("Q600612N15345Trigger")
    this:DestroyNpcTrigger("Q600616N15355Trigger")
    this:DestroyNpcTrigger("Q600618N15346Trigger")
    this:DestroyNpcTrigger("Q600620N15346Trigger")
    this:DestroyNpcTrigger("Q600622N1312Trigger")
    this:DestroyNpcTrigger("Q600623N1089Trigger")
    this:DestroyNpcTrigger("Q600624N1312Trigger")
    this:DestroyNpcTrigger("Q600603N15345Trigger")
    this:DestroyNpcTrigger("Q600613N15345Trigger")
    this:CancelStoryByQuest(110600600)
end

function Quest6006:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q600614trigger")
    this:ActorDestroy("Q600611trigger")
    this:ActorDestroy("Q600601Trigger")
    this:ActorDestroy("Q600627Trigger")
    this:ActorDestroy("Q60062702Trigger")
    this:ActorDestroy("Q600624Trigger")
    this:ActorDestroy("Q600617Trigger")
    this:ActorDestroy("Q600610Trigger")
end

function Quest6006:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 60060301 then
        actorUtils.FinishQuestID(false, 600626)
    elseif arg1 == 60060901 then
        actorUtils.FinishQuestID(false, 600615)
    end
end

function Quest6006:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6006:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6006:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6006:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6006:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6006:OnSubStart600601(arg1)
    print("OnSubStart600601")
    actorMgr:CreateActorWithPos("Q600601Trigger", "Actor/Gadget/Q600601Trigger", 70900002, 0, points._Q600601TriggerPoint_.pos, points._Q600601TriggerPoint_.rot, true, false, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15356.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15365.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15366.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15367.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15368.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15422.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15355.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15346.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15364.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20274)
    this:ActorDestroy("Q600614trigger")
    this:ActorDestroy("Q600611trigger")
    this:ActorDestroy("Q600627Trigger")
    this:ActorDestroy("Q60062702Trigger")
    this:ActorDestroy("Q600624Trigger")
    this:ActorDestroy("Q600617Trigger")
    this:ActorDestroy("Q600610Trigger")
    this:DestroyNpcTrigger("Q600604N15345Trigger")
    this:DestroyNpcTrigger("Q600607N15345Trigger")
    this:DestroyNpcTrigger("Q600609N15345Trigger")
    this:DestroyNpcTrigger("Q600610N15345Trigger")
    this:DestroyNpcTrigger("Q600612N15345Trigger")
    this:DestroyNpcTrigger("Q600616N15355Trigger")
    this:DestroyNpcTrigger("Q600618N15346Trigger")
    this:DestroyNpcTrigger("Q600620N15346Trigger")
    this:DestroyNpcTrigger("Q600622N1312Trigger")
    this:DestroyNpcTrigger("Q600603N15345Trigger")
    this:DestroyNpcTrigger("Q600613N15345Trigger")
    this:CancelStoryByQuest(110600600)
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest02")
    this:EnablePlayerInputByQuest(true)
    this:GetQuestNpcActor(npcs.Npc15355.alias, 6006):ResetForceAvatarWalk()
    actorUtils.BanUIByQuest(16, false, 6006)
    actorUtils.BanUIByQuest(27, false, 6006)
end

function Quest6006:OnSubFinish600601(arg1)
    print("OnSubFinish600601")
end

function Quest6006:OnSubStart600602(arg1)
    print("OnSubStart600602")
    this:CreateQuestNpc(arg1, npcs.Npc15345.id, 0, false, 0)
    this:DisableMainPageWithConfigByQuest(true, "DisableIneffaQuest02")
    this:EnablePlayerInputByQuest(false)
end

function Quest6006:OnSubFinish600602(arg1)
    print("OnSubFinish600602")
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest02")
    this:EnablePlayerInputByQuest(true)
end

function Quest6006:OnSubStart600603(arg1)
    print("OnSubStart600603")
    this:NpcCreateWithNpcTrigger(npcs.Npc15345.id, 0, 5, 600603)
end

function Quest6006:OnSubFinish600603(arg1)
    print("OnSubFinish600603")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 20274)
end

function Quest6006:OnSubStart600626(arg1)
    print("OnSubStart600626")
end

function Quest6006:OnSubFinish600626(arg1)
    print("OnSubFinish600626")
end

function Quest6006:OnSubStart600604(arg1)
    print("OnSubStart600604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600604, 0, 26, 0, npcs.Npc15345.id)
    actorUtils.BanUIByQuest(16, true, 6006)
    actorUtils.BanUIByQuest(27, true, 6006)
end

function Quest6006:OnSubFinish600604(arg1)
    print("OnSubFinish600604")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 20274)
end

function Quest6006:OnSubStart600605(arg1)
    print("OnSubStart600605")
    this:CreateQuestNpc(arg1, npcs.Npc15364.id, 0, false, 0)
    actorUtils.BanUIByQuest(16, true, 6006)
    actorUtils.BanUIByQuest(27, true, 6006)
end

function Quest6006:OnSubFinish600605(arg1)
    print("OnSubFinish600605")
    this:SafeDestroyQuestNpc(npcs.Npc15364.alias, 20274)
end

function Quest6006:OnSubStart600606(arg1)
    print("OnSubStart600606")
    actorUtils.BanUIByQuest(16, true, 6006)
    actorUtils.BanUIByQuest(27, true, 6006)
end

function Quest6006:OnSubFinish600606(arg1)
    print("OnSubFinish600606")
end

function Quest6006:OnSubStart600625(arg1)
    print("OnSubStart600625")
    actorUtils.BanUIByQuest(16, true, 6006)
    actorUtils.BanUIByQuest(27, true, 6006)
end

function Quest6006:OnSubFinish600625(arg1)
    print("OnSubFinish600625")
end

function Quest6006:OnSubStart600607(arg1)
    print("OnSubStart600607")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600607, 0, 80, 0, npcs.Npc15345.id)
    actorUtils.BanUIByQuest(16, true, 6006)
    actorUtils.BanUIByQuest(27, true, 6006)
end

function Quest6006:OnSubFinish600607(arg1)
    print("OnSubFinish600607")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 20274)
end

function Quest6006:OnSubStart600608(arg1)
    print("OnSubStart600608")
    this:CreateQuestNpc(arg1, npcs.Npc15368.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15422.id, 0, false, 0)
    actorUtils.BanUIByQuest(16, true, 6006)
    actorUtils.BanUIByQuest(27, true, 6006)
end

function Quest6006:OnSubFinish600608(arg1)
    print("OnSubFinish600608")
    this:SafeDestroyQuestNpc(npcs.Npc15368.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15422.alias, 20274)
end

function Quest6006:OnSubStart600609(arg1)
    print("OnSubStart600609")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600609, 0, 40, 0, npcs.Npc15345.id)
    this:CreateQuestNpc(arg1, npcs.Npc15356.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15365.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15366.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15367.id, 0, false, 0)
    actorUtils.BanUIByQuest(16, true, 6006)
    actorUtils.BanUIByQuest(27, true, 6006)
end

function Quest6006:OnSubFinish600609(arg1)
    print("OnSubFinish600609")
    this:NpcDestroyImmediately(20274, npcs.Npc15345.alias)
    this:NpcDestroyImmediately(20274, npcs.Npc15356.alias)
    this:NpcDestroyImmediately(20274, npcs.Npc15365.alias)
    this:NpcDestroyImmediately(20274, npcs.Npc15366.alias)
    this:NpcDestroyImmediately(20274, npcs.Npc15367.alias)
end

function Quest6006:OnSubStart600615(arg1)
    print("OnSubStart600615")
end

function Quest6006:OnSubFinish600615(arg1)
    print("OnSubFinish600615")
end

function Quest6006:OnSubStart600610(arg1)
    print("OnSubStart600610")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600610, 0, 20, 0, npcs.Npc15345.id)
    actorUtils.BanUIByQuest(16, true, 6006)
    actorUtils.BanUIByQuest(27, true, 6006)
    actorMgr:CreateActorWithPos("Q600610Trigger", "Actor/Gadget/Q600610Trigger", 70900002, 0, points._Q600610TriggerPoint_.pos, points._Q600610TriggerPoint_.rot, true, false, 20274)
end

function Quest6006:OnSubFinish600610(arg1)
    print("OnSubFinish600610")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 20274)
end

function Quest6006:OnSubStart600611(arg1)
    print("OnSubStart600611")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15356.id, 0, false, 0)
        actorMgr:CreateActorWithPos("Q600611trigger", "Actor/Gadget/Q600611trigger", 70900002, 0, points._Q600611triggerPoint_.pos, points._Q600611triggerPoint_.rot, true, false, 20274)
        this:DeployStoryByQuest(110600600)
        actorUtils.BanUIByQuest(16, true, 6006)
        actorUtils.BanUIByQuest(27, true, 6006)
    end)
end

function Quest6006:OnSubFinish600611(arg1)
    print("OnSubFinish600611")
    this:SafeDestroyQuestNpc(npcs.Npc15356.alias, 20274)
end

function Quest6006:OnSubStart600612(arg1)
    print("OnSubStart600612")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600612, 0, 30, 1, npcs.Npc15345.id)
    actorUtils.BanUIByQuest(16, true, 6006)
    actorUtils.BanUIByQuest(27, true, 6006)
end

function Quest6006:OnSubFinish600612(arg1)
    print("OnSubFinish600612")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 20274)
end

function Quest6006:OnSubStart600613(arg1)
    print("OnSubStart600613")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600613, 0, 70, 0, npcs.Npc15345.id)
    this:CreateQuestNpc(arg1, npcs.Npc15355.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15355.alias, 6006):DoFreeStyle(1, true, nil, true, true, false, true)
    actorUtils.BanUIByQuest(16, true, 6006)
    actorUtils.BanUIByQuest(27, true, 6006)
end

function Quest6006:OnSubFinish600613(arg1)
    print("OnSubFinish600613")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 20274)
    actorUtils.BanUIByQuest(16, false, 6006)
    actorUtils.BanUIByQuest(27, false, 6006)
end

function Quest6006:OnSubStart600614(arg1)
    print("OnSubStart600614")
    this:LevelReadySafeCall(function(arg1_2)
        this:ActionSafeCall(function(arg1_2)
            if sceneData.currSceneID == 20274 then
                this:TransmitPlayerByData(arg1, 1, datas.TransmitDataBlack, nil, nil, nil)
                this:CreateQuestNpc(arg1, npcs.Npc15355.id, 0, false, 0)
                this:CreateQuestNpc(arg1, npcs.Paimon.id, 0, false, 0)
                actorMgr:CreateActorWithPos("Q600614trigger", "Actor/Gadget/Q600614trigger", 70900002, 0, points._Q600614triggerPoint_.pos, points._Q600614triggerPoint_.rot, true, false, 20274)
                this:DisableMainPageWithConfigByQuest(true, "DisableIneffaQuest02")
                actorUtils.BanUIByQuest(16, true, 6006)
                actorUtils.BanUIByQuest(27, true, 6006)
                this:GetQuestNpcActor(npcs.Npc15355.alias, 6006):ForceAvatarWalkByDist(100, 100)
                if actorUtils.IsMalePlayer() then
                    this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
                    this:GetQuestNpcActor(npcs.Npc1025.alias, 6006):SetPlayerNpcEnergy()
                else
                    this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
                    this:GetQuestNpcActor(npcs.Npc1026.alias, 6006):SetPlayerNpcEnergy()
                end
            end
        end)
    end)
end

function Quest6006:OnSubFinish600614(arg1)
    print("OnSubFinish600614")
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 20274)
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest02")
    this:GetQuestNpcActor(npcs.Npc15355.alias, 6006):ResetForceAvatarWalk()
    actorUtils.BanUIByQuest(16, false, 6006)
    actorUtils.BanUIByQuest(27, false, 6006)
end

function Quest6006:OnSubFailed600614(arg1)
    print("OnSubFailed600614")
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest02")
    this:GetQuestNpcActor(npcs.Npc15355.alias, 6006):ResetForceAvatarWalk()
    this:ExitSceneLookCamera()
    actorUtils.BanUIByQuest(16, false, 6006)
    actorUtils.BanUIByQuest(27, false, 6006)
end

function Quest6006:OnSubStart600616(arg1)
    print("OnSubStart600616")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTrigger(npcs.Npc15355.id, 0, 50, 600616)
    end)
end

function Quest6006:OnSubFinish600616(arg1)
    print("OnSubFinish600616")
end

function Quest6006:OnSubStart600617(arg1)
    print("OnSubStart600617")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15355.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc15365.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15365.alias, 6006):DoFreeStyle(4121, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15366.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15366.alias, 6006):DoFreeStyle(2, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15367.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15367.alias, 6006):DoFreeStyle(1000, true, nil, true, true, false, true)
        actorMgr:CreateActorWithPos("Q600617Trigger", "Actor/Gadget/Q600617Trigger", 70900002, 0, points._Q600617TriggerPoint_.pos, points._Q600617TriggerPoint_.rot, true, false, 20274)
        this:GetQuestNpcActor(npcs.Npc15365.alias, 6006):DisableInteeHeadCtrl(true)
    end)
end

function Quest6006:OnSubFinish600617(arg1)
    print("OnSubFinish600617")
    this:SafeDestroyQuestNpc(npcs.Npc15345.alias, 20274)
end

function Quest6006:OnSubStart600618(arg1)
    print("OnSubStart600618")
    this:CreateQuestNpc(arg1, npcs.Npc15365.id, 0, false, 0)
    this:ActionSafeCall(function(arg1_2)
        this:GetQuestNpcActor(npcs.Npc15365.alias, 6006):DoFreeStyle(4121, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15366.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15366.alias, 6006):DoFreeStyle(2, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc15367.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc15367.alias, 6006):DoFreeStyle(1000, true, nil, true, true, false, true)
        this:ActionSafeCall(function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc15355.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc15355.alias, 6006):DoFreeStyle(7, true, nil, true, true, false, true)
            this:NpcCreateWithNpcTrigger(npcs.Npc15346.id, 0, 12, 600618)
            this:GetQuestNpcActor(npcs.Npc15346.alias, 6006):DoFreeStyle(1382, true, nil, true, true, false, true)
            this:GetQuestNpcActor(npcs.Npc15365.alias, 6006):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc15346.alias, 6006):DisableInteeHeadCtrl(true)
            this:GetQuestNpcActor(npcs.Npc15346.alias, 6006):PlayEmoSync("", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Normal01", "Cs_Emo_Avatar_Common/Cs_Emo_Avatar_Normal01", 0, false, true, true)
        end)
    end)
end

function Quest6006:OnSubFinish600618(arg1)
    print("OnSubFinish600618")
    this:SafeDestroyQuestNpc(npcs.Npc15365.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15366.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15367.alias, 20274)
    this:SafeDestroyQuestNpc(npcs.Npc15355.alias, 20274)
    this:GetQuestNpcActor(npcs.Npc15365.alias, 6006):DisableInteeHeadCtrl(false)
end

function Quest6006:OnSubStart600619(arg1)
    print("OnSubStart600619")
    this:GetQuestNpcActor(npcs.Npc15346.alias, 6006):DoFreeStyle(1382, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15346.alias, 6006):DisableInteeHeadCtrl(true)
end

function Quest6006:OnSubFinish600619(arg1)
    print("OnSubFinish600619")
    this:GetQuestNpcActor(npcs.Npc15346.alias, 6006):DisableInteeHeadCtrl(false)
end

function Quest6006:OnSubStart600620(arg1)
    print("OnSubStart600620")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600620, 0, 80, 0, npcs.Npc15346.id)
end

function Quest6006:OnSubFinish600620(arg1)
    print("OnSubFinish600620")
    this:SafeDestroyQuestNpc(npcs.Npc15346.alias, 20274)
end

function Quest6006:OnSubStart600621(arg1)
    print("OnSubStart600621")
end

function Quest6006:OnSubFinish600621(arg1)
    print("OnSubFinish600621")
end

function Quest6006:OnSubStart600622(arg1)
    print("OnSubStart600622")
    this:CallDelayByQuest("\228\184\142\228\188\138\230\182\133\232\138\153\229\175\185\232\175\157", 3, function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(600622, 0, 80, 0, npcs.Npc1312.id)
    end)
end

function Quest6006:OnSubFinish600622(arg1)
    print("OnSubFinish600622")
    this:NpcDestroyImmediately(20274, npcs.Npc1312.alias)
    this:TransmitPlayerByData(arg1, 3, datas.TransmitDataBlack, nil, nil, nil)
    this:CancelStoryByQuest(110600600)
end

function Quest6006:OnSubStart600623(arg1)
    print("OnSubStart600623")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1089.id, 0, 600623, 40, true)
end

function Quest6006:OnSubFinish600623(arg1)
    print("OnSubFinish600623")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
    this:TransmitPlayerByData(arg1, 4, datas.TransmitDataBlack, nil, nil, nil)
end

function Quest6006:OnSubStart600627(arg1)
    print("OnSubStart600627")
    actorMgr:CreateActorWithPos("Q600627Trigger", "Actor/Gadget/Q600627Trigger", 70900002, 0, points._Q600627TriggerPoint_.pos, points._Q600627TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q60062702Trigger", "Actor/Gadget/Q60062702Trigger", 70900002, 0, points._Q60062702TriggerPoint_.pos, points._Q60062702TriggerPoint_.rot, true, false, 3)
end

function Quest6006:OnSubFinish600627(arg1)
    print("OnSubFinish600627")
    this:ActorDestroy("Q600627Trigger")
end

function Quest6006:OnSubStart600624(arg1)
    print("OnSubStart600624")
    this:NpcCreateWithNpcTriggerAndBlackscreen(600624, 0, 9, 0, npcs.Npc1312.id)
end

function Quest6006:OnSubFinish600624(arg1)
    print("OnSubFinish600624")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1312.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList600624)
    actorMgr:CreateActorWithPos("Q600624Trigger", "Actor/Gadget/Q600624Trigger", 70900002, 0, points._Q600624TriggerPoint_.pos, points._Q600624TriggerPoint_.rot, true, false, 3)
end

function Quest6006:OnSubFailed600624(arg1)
    print("OnSubFailed600624")
    this:ClearNpcTriggerByQuestId(600624)
end

return Quest6006
