require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15028 = class("Quest15028", QuestActorProxy)
Quest15028.defaultAlias = "Quest15028"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15028:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1502801"] = self.OnSubStart1502801,
        ["1502812"] = self.OnSubStart1502812,
        ["1502802"] = self.OnSubStart1502802,
        ["1502803"] = self.OnSubStart1502803,
        ["1502804"] = self.OnSubStart1502804,
        ["1502805"] = self.OnSubStart1502805,
        ["1502817"] = self.OnSubStart1502817,
        ["1502806"] = self.OnSubStart1502806,
        ["1502807"] = self.OnSubStart1502807,
        ["1502818"] = self.OnSubStart1502818,
        ["1502813"] = self.OnSubStart1502813,
        ["1502808"] = self.OnSubStart1502808,
        ["1502809"] = self.OnSubStart1502809,
        ["1502814"] = self.OnSubStart1502814,
        ["1502815"] = self.OnSubStart1502815,
        ["1502810"] = self.OnSubStart1502810,
        ["1502811"] = self.OnSubStart1502811,
        ["1502816"] = self.OnSubStart1502816
    }
end

function Quest15028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1502801"] = self.OnSubFinish1502801,
        ["1502812"] = self.OnSubFinish1502812,
        ["1502802"] = self.OnSubFinish1502802,
        ["1502803"] = self.OnSubFinish1502803,
        ["1502804"] = self.OnSubFinish1502804,
        ["1502805"] = self.OnSubFinish1502805,
        ["1502817"] = self.OnSubFinish1502817,
        ["1502806"] = self.OnSubFinish1502806,
        ["1502807"] = self.OnSubFinish1502807,
        ["1502818"] = self.OnSubFinish1502818,
        ["1502813"] = self.OnSubFinish1502813,
        ["1502808"] = self.OnSubFinish1502808,
        ["1502809"] = self.OnSubFinish1502809,
        ["1502814"] = self.OnSubFinish1502814,
        ["1502815"] = self.OnSubFinish1502815,
        ["1502810"] = self.OnSubFinish1502810,
        ["1502811"] = self.OnSubFinish1502811,
        ["1502816"] = self.OnSubFinish1502816
    }
end

function Quest15028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1502804"] = self.OnSubFailed1502804,
        ["1502805"] = self.OnSubFailed1502805,
        ["1502817"] = self.OnSubFailed1502817,
        ["1502806"] = self.OnSubFailed1502806,
        ["1502807"] = self.OnSubFailed1502807,
        ["1502813"] = self.OnSubFailed1502813,
        ["1502808"] = self.OnSubFailed1502808,
        ["1502809"] = self.OnSubFailed1502809,
        ["1502814"] = self.OnSubFailed1502814,
        ["1502815"] = self.OnSubFailed1502815
    }
end

function Quest15028:Start()
    print("Start")
end

function Quest15028:OnDestroy()
    print("OnDestroy")
end

function Quest15028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15028:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14647.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 20242)
    this:SafeDestroyQuestNpc(npcs.Npc14647.alias, 20242)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14648.alias, 20242)
    this:SafeDestroyQuestNpc(npcs.Npc14648.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6249.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15090.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15092.alias, 3)
    this:ActorDestroy("Q1502817Trigger")
    this:DestroyNpcTrigger("Q1502802N14647Trigger")
    this:DestroyNpcTrigger("Q1502804N1096Trigger")
    this:DestroyNpcTrigger("Q1502805N14647Trigger")
    this:DestroyNpcTrigger("Q1502806N1096Trigger")
    this:DestroyNpcTrigger("Q1502807N1096Trigger")
    this:DestroyNpcTrigger("Q1502809N1096Trigger")
    this:DestroyNpcTrigger("Q1502811N14648Trigger")
    this:DestroyNpcTrigger("Q1502812N1096Trigger")
    this:DestroyNpcTrigger("Q1502813N14647Trigger")
    this:DestroyNpcTrigger("Q1502814N1005Trigger")
    this:DestroyNpcTrigger("Q1502815N1096Trigger")
    this:DestroyNpcTrigger("Q1502816N14647Trigger")
end

function Quest15028:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1502818 then
        actorUtils.FinishQuestID(false, 1502818)
    end
end

function Quest15028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15028:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15028:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest15028:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15028:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15028:OnSubStart1502801(arg1)
    print("OnSubStart1502801")
end

function Quest15028:OnSubFinish1502801(arg1)
    print("OnSubFinish1502801")
end

function Quest15028:OnSubStart1502812(arg1)
    print("OnSubStart1502812")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502812, 0, 20, 1, npcs.Npc1096.id)
end

function Quest15028:OnSubFinish1502812(arg1)
    print("OnSubFinish1502812")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
end

function Quest15028:OnSubStart1502802(arg1)
    print("OnSubStart1502802")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502802, 0, 15, 1, npcs.Npc14647.id)
    this:CreateLocalGadget(73026002, "1", {x = -1866.438, y = 24.204, z = 9350.605}, {x = 1.018, y = 348.938, z = 359.612}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(73026005, "1", {x = -1866.438, y = 24.21, z = 9350.605}, {x = 1.018, y = 348.938, z = 359.612}, 3, nil, nil, false, 0, true)
end

function Quest15028:OnSubFinish1502802(arg1)
    print("OnSubFinish1502802")
    this:SafeDestroyQuestNpc(npcs.Npc14647.alias, 3)
    this:RemoveLocalGadget(73026002, "1")
    this:RemoveLocalGadget(73026005, "1")
end

function Quest15028:OnSubStart1502803(arg1)
    print("OnSubStart1502803")
end

function Quest15028:OnSubFinish1502803(arg1)
    print("OnSubFinish1502803")
end

function Quest15028:OnSubStart1502804(arg1)
    print("OnSubStart1502804")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1096.id, 0, 1502804, 20, true)
end

function Quest15028:OnSubFinish1502804(arg1)
    print("OnSubFinish1502804")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 20242)
end

function Quest15028:OnSubFailed1502804(arg1)
    print("OnSubFailed1502804")
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20242)
    this:ClearNpcTriggerByQuestId(1502804)
end

function Quest15028:OnSubStart1502805(arg1)
    print("OnSubStart1502805")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502805, 0, 15, 1, npcs.Npc14647.id)
end

function Quest15028:OnSubFinish1502805(arg1)
    print("OnSubFinish1502805")
    this:SafeDestroyQuestNpc(npcs.Npc14647.alias, 20242)
end

function Quest15028:OnSubFailed1502805(arg1)
    print("OnSubFailed1502805")
    this:DestroyQuestNpcActor(npcs.Npc14647.alias, 20242)
    this:ClearNpcTriggerByQuestId(1502805)
end

function Quest15028:OnSubStart1502817(arg1)
    print("OnSubStart1502817")
    actorMgr:CreateActorWithPos("Q1502817Trigger", "Actor/Gadget/Q1502817Trigger", 70900002, 0, points._Q1502817TriggerPoint_.pos, points._Q1502817TriggerPoint_.rot, true, false, 20242)
end

function Quest15028:OnSubFinish1502817(arg1)
    print("OnSubFinish1502817")
end

function Quest15028:OnSubFailed1502817(arg1)
    print("OnSubFailed1502817")
    this:ActorDestroy("Q1502817Trigger")
end

function Quest15028:OnSubStart1502806(arg1)
    print("OnSubStart1502806")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502806, 0, 20, 1, npcs.Npc1096.id)
end

function Quest15028:OnSubFinish1502806(arg1)
    print("OnSubFinish1502806")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 20242)
end

function Quest15028:OnSubFailed1502806(arg1)
    print("OnSubFailed1502806")
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20242)
    this:ClearNpcTriggerByQuestId(1502806)
end

function Quest15028:OnSubStart1502807(arg1)
    print("OnSubStart1502807")
    this:CreateNpcWithCameraLookTrigger("Q1502807N1096Trigger", 1502807, npcs.Npc1096.id, 0, 20, 1502807, true)
end

function Quest15028:OnSubFinish1502807(arg1)
    print("OnSubFinish1502807")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 20242)
end

function Quest15028:OnSubFailed1502807(arg1)
    print("OnSubFailed1502807")
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20242)
    this:ClearNpcTriggerByQuestId(1502807)
end

function Quest15028:OnSubStart1502818(arg1)
    print("OnSubStart1502818")
end

function Quest15028:OnSubFinish1502818(arg1)
    print("OnSubFinish1502818")
end

function Quest15028:OnSubStart1502813(arg1)
    print("OnSubStart1502813")
    this:CreateNpcWithCameraLookTrigger("Q1502813N14647Trigger", 1502813, npcs.Npc14647.id, 1, 15, 1502813, true)
end

function Quest15028:OnSubFinish1502813(arg1)
    print("OnSubFinish1502813")
    this:SafeDestroyQuestNpc(npcs.Npc14647.alias, 20242)
end

function Quest15028:OnSubFailed1502813(arg1)
    print("OnSubFailed1502813")
    this:DestroyQuestNpcActor(npcs.Npc14647.alias, 20242)
    this:ClearNpcTriggerByQuestId(1502813)
end

function Quest15028:OnSubStart1502808(arg1)
    print("OnSubStart1502808")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14647.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14647.alias, 15028):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14648.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14648.alias, 15028):DoFreeStyle(1283, true, nil, true, true, false, true)
    end)
end

function Quest15028:OnSubFinish1502808(arg1)
    print("OnSubFinish1502808")
end

function Quest15028:OnSubFailed1502808(arg1)
    print("OnSubFailed1502808")
    this:DestroyQuestNpcActor(npcs.Npc14647.alias, 20242)
    this:DestroyQuestNpcActor(npcs.Npc14648.alias, 20242)
    this:ClearNpcTriggerByQuestId(1502808)
end

function Quest15028:OnSubStart1502809(arg1)
    print("OnSubStart1502809")
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15028):DoFreeStyle(1070, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14648.alias, 15028):DoFreeStyle(1283, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(1502809, 0, 20, 1, npcs.Npc1096.id)
    this:DisableMainPageWithConfigByQuest(true, "DisableAllExcludeCameraMoveIntee")
end

function Quest15028:OnSubFinish1502809(arg1)
    print("OnSubFinish1502809")
    this:NpcDestroyImmediately(20242, npcs.Npc14647.alias)
    this:NpcDestroyImmediately(20242, npcs.Npc14648.alias)
    this:NpcDestroyImmediately(20242, npcs.Npc1096.alias)
end

function Quest15028:OnSubFailed1502809(arg1)
    print("OnSubFailed1502809")
    this:DestroyQuestNpcActor(npcs.Npc14647.alias, 20242)
    this:DestroyQuestNpcActor(npcs.Npc14648.alias, 20242)
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20242)
    this:ClearNpcTriggerByQuestId(1502809)
    this:DisableMainPageWithConfigByQuest(false, "DisableAllExcludeCameraMoveIntee")
end

function Quest15028:OnSubStart1502814(arg1)
    print("OnSubStart1502814")
    this:CreateNpcWithCameraLookTrigger("Q1502814N1005Trigger", 1502814, npcs.Paimon.id, 0, 20, 1502814, false)
    this:DisableMainPageWithConfigByQuest(true, "DisableAllExcludeCameraMoveIntee")
end

function Quest15028:OnSubFinish1502814(arg1)
    print("OnSubFinish1502814")
    this:NpcDestroyImmediately(20242, npcs.Paimon.alias)
end

function Quest15028:OnSubFailed1502814(arg1)
    print("OnSubFailed1502814")
    this:DestroyQuestNpcActor(npcs.Paimon.alias, 20242)
    this:ClearNpcTriggerByQuestId(1502814)
    this:DisableMainPageWithConfigByQuest(false, "DisableAllExcludeCameraMoveIntee")
end

function Quest15028:OnSubStart1502815(arg1)
    print("OnSubStart1502815")
    this:CreateNpcWithCameraLookTrigger("Q1502815N1096Trigger", 1502815, npcs.Npc1096.id, 0, 20, 1502815, false)
    this:DisableMainPageWithConfigByQuest(true, "DisableAllExcludeCameraMoveIntee")
end

function Quest15028:OnSubFinish1502815(arg1)
    print("OnSubFinish1502815")
    this:NpcDestroyImmediately(20242, npcs.Npc1096.alias)
    this:DisableMainPageWithConfigByQuest(false, "DisableAllExcludeCameraMoveIntee")
end

function Quest15028:OnSubFailed1502815(arg1)
    print("OnSubFailed1502815")
    this:DestroyQuestNpcActor(npcs.Npc1096.alias, 20242)
    this:ClearNpcTriggerByQuestId(1502815)
    this:DisableMainPageWithConfigByQuest(false, "DisableAllExcludeCameraMoveIntee")
end

function Quest15028:OnSubStart1502810(arg1)
    print("OnSubStart1502810")
    if sceneData.currSceneID == 20242 then
        this:TransmitPlayerByData(arg1, 1, datas.TransmitDataGeneralBlack, nil, nil, nil)
    end

    actorMgr:CreateActorWithPos("Q1502810Trigger", "Actor/Gadget/Q1502810Trigger", 70900002, 0, points._Q1502810TriggerPoint_.pos, points._Q1502810TriggerPoint_.rot, true, false, 3)
end

function Quest15028:OnSubFinish1502810(arg1)
    print("OnSubFinish1502810")
end

function Quest15028:OnSubStart1502811(arg1)
    print("OnSubStart1502811")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc14648.id, 0, 1502811, 20, true)
end

function Quest15028:OnSubFinish1502811(arg1)
    print("OnSubFinish1502811")
    this:SafeDestroyQuestNpc(npcs.Npc14648.alias, 3)
end

function Quest15028:OnSubStart1502816(arg1)
    print("OnSubStart1502816")
    this:NpcCreateWithNpcTrigger(npcs.Npc14647.id, 0, 20, 1502816)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15028):DoFreeStyle(4190, true, nil, true, true, false, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc14648.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14648.alias, 15028):DoFreeStyle(1160, true, nil, true, true, false, true)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc6249.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6249.alias, 15028):DoFreeStyle(6, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15090.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15091.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15092.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14647.alias, 15028):DisableInteeHeadCtrl(true)
end

function Quest15028:OnSubFinish1502816(arg1)
    print("OnSubFinish1502816")
    this:NpcDestroyImmediately(3, npcs.Npc14647.alias)
    this:SafeDestroyQuestNpc(npcs.Npc14648.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6249.alias, 3)
    this:NpcDestroyImmediately(3, npcs.Npc15090.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15091.alias)
    this:NpcDestroyImmediately(3, npcs.Npc15092.alias)
end

return Quest15028
