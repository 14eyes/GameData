require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5029 = class("Quest5029", QuestActorProxy)
Quest5029.defaultAlias = "Quest5029"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5029:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5029:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["502901"] = self.OnSubStart502901,
        ["502902"] = self.OnSubStart502902,
        ["502903"] = self.OnSubStart502903,
        ["502908"] = self.OnSubStart502908,
        ["502904"] = self.OnSubStart502904,
        ["502905"] = self.OnSubStart502905,
        ["502906"] = self.OnSubStart502906,
        ["502907"] = self.OnSubStart502907,
        ["502909"] = self.OnSubStart502909,
        ["502910"] = self.OnSubStart502910,
        ["502911"] = self.OnSubStart502911,
        ["502912"] = self.OnSubStart502912,
        ["502913"] = self.OnSubStart502913,
        ["502920"] = self.OnSubStart502920,
        ["502914"] = self.OnSubStart502914,
        ["502921"] = self.OnSubStart502921,
        ["502940"] = self.OnSubStart502940
    }
end

function Quest5029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["502901"] = self.OnSubFinish502901,
        ["502902"] = self.OnSubFinish502902,
        ["502903"] = self.OnSubFinish502903,
        ["502908"] = self.OnSubFinish502908,
        ["502904"] = self.OnSubFinish502904,
        ["502905"] = self.OnSubFinish502905,
        ["502906"] = self.OnSubFinish502906,
        ["502907"] = self.OnSubFinish502907,
        ["502909"] = self.OnSubFinish502909,
        ["502910"] = self.OnSubFinish502910,
        ["502911"] = self.OnSubFinish502911,
        ["502912"] = self.OnSubFinish502912,
        ["502913"] = self.OnSubFinish502913,
        ["502920"] = self.OnSubFinish502920,
        ["502914"] = self.OnSubFinish502914,
        ["502921"] = self.OnSubFinish502921,
        ["502940"] = self.OnSubFinish502940
    }
end

function Quest5029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5029:Start()
    print("Start")
end

function Quest5029:OnDestroy()
    print("OnDestroy")
end

function Quest5029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5029:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest5029:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest5029:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5029:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5029:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest5029:OnSubStart502901(arg1)
    print("OnSubStart502901")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 502901, 30, true)
end

function Quest5029:OnSubFinish502901(arg1)
    print("OnSubFinish502901")
end

function Quest5029:OnSubStart502902(arg1)
    print("OnSubStart502902")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 502902, 30, true)
    actorMgr:CreateActorWithPos("Q502902Trigger", "Actor/Gadget/Q502902Trigger", 70900002, 0, points._Q502902TriggerPoint_.pos, points._Q502902TriggerPoint_.rot, true, false, 20243)
end

function Quest5029:OnSubFinish502902(arg1)
    print("OnSubFinish502902")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20243)
    this:ActorDestroy("Q502902Trigger")
end

function Quest5029:OnSubStart502903(arg1)
    print("OnSubStart502903")
    this:NpcCreateWithNpcTriggerAndBlackscreen(502903, 0, 5, 0, npcs.Npc1092.id)
    this:DeployStoryByQuest(110502901)
end

function Quest5029:OnSubFinish502903(arg1)
    print("OnSubFinish502903")
    this:CancelStoryByQuest(110502901)
    globalActor:SpawnAttachInFixedAreaEx("502908", "NPC_Item_NTHeaddress_Boy", 10000005, nil, nil, nil, datas.HandWriteTable, true)
    globalActor:SpawnAttachInFixedAreaEx("502908", "NPC_Item_NTHeaddress_Girl", 10000007, nil, nil, nil, datas.HandWriteTable, true)
end

function Quest5029:OnSubStart502908(arg1)
    print("OnSubStart502908")
    this:NpcCreateWithNpcTrigger(npcs.Npc6028.id, 0, 15, 502908)
    this:GetQuestNpcActor(npcs.Npc1092.alias, 5029):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110502902)
        this:DeployStoryByQuest(110502903)
    end)
end

function Quest5029:OnSubFinish502908(arg1)
    print("OnSubFinish502908")
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 20243)
    this:CancelStoryByQuest(110502902)
    this:CancelStoryByQuest(110502903)
end

function Quest5029:OnSubStart502904(arg1)
    print("OnSubStart502904")
    this:NpcCreateWithNpcTrigger(npcs.Npc14772.id, 0, 6, 502904)
    this:GetQuestNpcActor(npcs.Npc14772.alias, 5029):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14778.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14778.alias, 5029):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:DeployStoryByQuest(110502904)
    this:DeployStoryByQuest(110502905)
end

function Quest5029:OnSubFinish502904(arg1)
    print("OnSubFinish502904")
    this:SafeDestroyQuestNpc(npcs.Npc6028.alias, 20243)
    this:CancelStoryByQuest(110502905)
end

function Quest5029:OnSubStart502905(arg1)
    print("OnSubStart502905")
    this:NpcCreateWithNpcTrigger(npcs.Npc14778.id, 0, 6, 502905)
    this:GetQuestNpcActor(npcs.Npc14778.alias, 5029):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14772.alias, 5029):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 5029):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
    this:DeployStoryByQuest(110502904)
    this:DeployStoryByQuest(110502906)
end

function Quest5029:OnSubFinish502905(arg1)
    print("OnSubFinish502905")
    this:CancelStoryByQuest(110502906)
end

function Quest5029:OnSubStart502906(arg1)
    print("OnSubStart502906")
    this:NpcCreateWithNpcTrigger(npcs.Npc14803.id, 0, 10, 502906)
    this:GetQuestNpcActor(npcs.Npc14772.alias, 5029):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14778.alias, 5029):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14804.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 5029):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:DeployStoryByQuest(110502904)
end

function Quest5029:OnSubFinish502906(arg1)
    print("OnSubFinish502906")
    this:SafeDestroyQuestNpc(npcs.Npc14803.alias, 20243)
    this:SafeDestroyQuestNpc(npcs.Npc14772.alias, 20243)
    this:SafeDestroyQuestNpc(npcs.Npc14778.alias, 20243)
    this:SafeDestroyQuestNpc(npcs.Npc14804.alias, 20243)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 20243)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 20243)
    this:CancelStoryByQuest(110502904)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Narrator502920, nil)
    end)
end

function Quest5029:OnSubStart502907(arg1)
    print("OnSubStart502907")
    this:NpcCreateWithNpcTrigger(npcs.Npc6028.id, 0, 5, 502907)
    this:CreateQuestNpc(arg1, npcs.Npc14784.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14784.alias, 5029):DoFreeStyle(4452, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14785.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14785.alias, 5029):DoFreeStyle(4452, true, nil, true, true, false, false)
    this:DeployStoryByQuest(110502907)
    this:GetQuestNpcActor(npcs.Npc14784.alias, 5029):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14785.alias, 5029):DisableInteeHeadCtrl(true)
end

function Quest5029:OnSubFinish502907(arg1)
    print("OnSubFinish502907")
    this:NpcDestroyImmediately(20243, npcs.Npc6028.alias)
    this:NpcDestroyImmediately(20243, npcs.Npc14784.alias)
    this:NpcDestroyImmediately(20243, npcs.Npc14785.alias)
    this:CancelStoryByQuest(110502907)
    this:PlayerEnterDungeonWithData(1, 1232, 502907, 2, datas.PlayerEnterDungeonData, nil, nil)
    this:GetQuestNpcActor(npcs.Npc14784.alias, 5029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14785.alias, 5029):DisableInteeHeadCtrl(false)
    this:ClearNarratorTask()
end

function Quest5029:OnSubStart502909(arg1)
    print("OnSubStart502909")
    if this:GetQuestVar(502909, 3) == 0 then
        this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc14762.id, 0, 502909, 30, true)
    end
end

function Quest5029:OnSubFinish502909(arg1)
    print("OnSubFinish502909")
    this:ClearNarratorTask()
end

function Quest5029:OnSubStart502910(arg1)
    print("OnSubStart502910")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1089.id, 0, 502910, 30, true)
end

function Quest5029:OnSubFinish502910(arg1)
    print("OnSubFinish502910")
    this:NpcDestroyImmediately(20250, npcs.Npc1089.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, datas.TransmitDatablack)
end

function Quest5029:OnSubStart502911(arg1)
    print("OnSubStart502911")
    this:NpcCreateWithNpcTrigger(npcs.Npc1089.id, 0, 30, 502911)
end

function Quest5029:OnSubFinish502911(arg1)
    print("OnSubFinish502911")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDatablack, nil, nil, nil)
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 1095)
end

function Quest5029:OnSubStart502912(arg1)
    print("OnSubStart502912")
    actorUtils.FinishQuestID(false, 502912)
end

function Quest5029:OnSubFinish502912(arg1)
    print("OnSubFinish502912")
end

function Quest5029:OnSubStart502913(arg1)
    print("OnSubStart502913")
    actorUtils.FinishQuestID(false, 502913)
end

function Quest5029:OnSubFinish502913(arg1)
    print("OnSubFinish502913")
end

function Quest5029:OnSubStart502920(arg1)
    print("OnSubStart502920")
    this:NpcCreateWithNpcTriggerAndBlackscreen(502920, 0, 49, 1, npcs.Npc1089.id)
    actorMgr:CreateActorWithPos("Q502920Trigger", "Actor/Gadget/Q502920Trigger", 70900002, 0, points._Q502920TriggerPoint_.pos, points._Q502920TriggerPoint_.rot, true, false, 3)
end

function Quest5029:OnSubFinish502920(arg1)
    print("OnSubFinish502920")
    this:ActorDestroy("Q502920Trigger")
end

function Quest5029:OnSubStart502914(arg1)
    print("OnSubStart502914")
end

function Quest5029:OnSubFinish502914(arg1)
    print("OnSubFinish502914")
end

function Quest5029:OnSubStart502921(arg1)
    print("OnSubStart502921")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1086.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5029):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1088.alias, 5029):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1089.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1091.alias, 5029):DoFreeStyle(1120, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1092.alias, 5029):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 5029):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1095.alias, 5029):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1096.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 5029):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14398.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14398.alias, 5029):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14797.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14797.alias, 5029):DoFreeStyle(4000, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14798.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14798.alias, 5029):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14947.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14998.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1086.alias, 5029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1087.alias, 5029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1088.alias, 5029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14221.alias, 5029):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1089.alias, 5029):DoFreeStyle(1220, true, nil, true, true, false, true)
        if this:GetQuestVar(502921, 2) == 0 then
            actorMgr:CreateActorWithPos("Q502921Trigger", "Actor/Gadget/Q502921Trigger", 70900002, 0, points._Q502921TriggerPoint_.pos, points._Q502921TriggerPoint_.rot, true, false, 3)
        end
    end)
end

function Quest5029:OnSubFinish502921(arg1)
    print("OnSubFinish502921")
    this:SafeDestroyQuestNpc(npcs.Npc1086.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1087.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1091.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1092.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14398.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14797.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14798.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14947.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14998.alias, 3)
    this:GetQuestNpcActor(npcs.Npc1086.alias, 5029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1087.alias, 5029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1088.alias, 5029):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14221.alias, 5029):DisableInteeHeadCtrl(false)
    this:ActorDestroy("Q502921Trigger")
end

function Quest5029:OnSubStart502940(arg1)
    print("OnSubStart502940")
    this:NpcCreateWithNpcTriggerAndBlackscreen(502940, 0, 19, 1, npcs.Npc14804.id)
    if actorUtils.IsMalePlayer() then
        this:CreateLocalGadget(74008006, "playerboy", {x = -1946.818, y = 151.321, z = 9479.704}, {x = 0, y = 357.787, z = 242.951}, 3, nil, nil, false, 0, true)
    else
        this:CreateLocalGadget(74008007, "playergirl", {x = -1946.818, y = 151.316, z = 9479.704}, {x = 0, y = 357.787, z = 242.951}, 3, nil, nil, false, 0, true)
    end
end

function Quest5029:OnSubFinish502940(arg1)
    print("OnSubFinish502940")
    this:SafeDestroyQuestNpc(npcs.Npc14804.alias, 3)
    this:RemoveLocalGadget(74008006, "playerboy")
    this:RemoveLocalGadget(74008007, "playergirl")
end

return Quest5029
