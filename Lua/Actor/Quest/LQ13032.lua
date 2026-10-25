require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13032 = class("Quest13032", QuestActorProxy)
Quest13032.defaultAlias = "Quest13032"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13032:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13032:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1303201"] = self.OnSubStart1303201,
        ["1303215"] = self.OnSubStart1303215,
        ["1303202"] = self.OnSubStart1303202,
        ["1303216"] = self.OnSubStart1303216,
        ["1303217"] = self.OnSubStart1303217,
        ["1303203"] = self.OnSubStart1303203,
        ["1303204"] = self.OnSubStart1303204,
        ["1303213"] = self.OnSubStart1303213,
        ["1303205"] = self.OnSubStart1303205,
        ["1303214"] = self.OnSubStart1303214,
        ["1303206"] = self.OnSubStart1303206,
        ["1303207"] = self.OnSubStart1303207,
        ["1303208"] = self.OnSubStart1303208,
        ["1303212"] = self.OnSubStart1303212,
        ["1303209"] = self.OnSubStart1303209,
        ["1303211"] = self.OnSubStart1303211,
        ["1303210"] = self.OnSubStart1303210
    }
end

function Quest13032:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1303201"] = self.OnSubFinish1303201,
        ["1303215"] = self.OnSubFinish1303215,
        ["1303202"] = self.OnSubFinish1303202,
        ["1303216"] = self.OnSubFinish1303216,
        ["1303217"] = self.OnSubFinish1303217,
        ["1303203"] = self.OnSubFinish1303203,
        ["1303204"] = self.OnSubFinish1303204,
        ["1303213"] = self.OnSubFinish1303213,
        ["1303205"] = self.OnSubFinish1303205,
        ["1303214"] = self.OnSubFinish1303214,
        ["1303206"] = self.OnSubFinish1303206,
        ["1303207"] = self.OnSubFinish1303207,
        ["1303208"] = self.OnSubFinish1303208,
        ["1303212"] = self.OnSubFinish1303212,
        ["1303209"] = self.OnSubFinish1303209,
        ["1303211"] = self.OnSubFinish1303211,
        ["1303210"] = self.OnSubFinish1303210
    }
end

function Quest13032:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1303202"] = self.OnSubFailed1303202,
        ["1303203"] = self.OnSubFailed1303203,
        ["1303204"] = self.OnSubFailed1303204,
        ["1303205"] = self.OnSubFailed1303205
    }
end

function Quest13032:Start()
    print("Start")
end

function Quest13032:OnDestroy()
    print("OnDestroy")
end

function Quest13032:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13032:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13032:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13261Data.alias, 3)
    actorMgr:DestroyEntityActor("Q13032Trigger", 3, false)
end

function Quest13032:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13032:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5)
end

function Quest13032:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest13032:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13032:CheckDistTransmit03()
    if sceneData.currSceneID == 3 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = sceneData:GetDummyPoint(3, "Q13032_region").pos
        local dist = M.Dist(pos, avatarPos)
        print("AvatarX: " .. avatarPos.x .. "  AvatarY: " .. avatarPos.y .. "AvatarZ: " .. avatarPos.z)
        print("DummyX: " .. pos.x .. "  DummyY: " .. pos.y .. "DummyZ: " .. pos.z)
        print("StartCheckdis: " .. dist)
        if dist < 275 then
            print("CheckTransmit dis")
            this:TransmitPlayerWithDialogTextByQuestId(1303203, 1, datas.DialogsIdOUT, 0)
        end
    end
end

function Quest13032:CheckDistTransmit04()
    if sceneData.currSceneID == 3 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = sceneData:GetDummyPoint(3, "Q13032_region").pos
        local dist = M.Dist(pos, avatarPos)
        print("AvatarX: " .. avatarPos.x .. "  AvatarY: " .. avatarPos.y .. "AvatarZ: " .. avatarPos.z)
        print("DummyX: " .. pos.x .. "  DummyY: " .. pos.y .. "DummyZ: " .. pos.z)
        print("StartCheckdis: " .. dist)
        if dist < 275 then
            print("CheckTransmit dis")
            this:TransmitPlayerWithDialogTextByQuestId(1303204, 1, datas.DialogsIdOUT, 0)
        end
    end
end

function Quest13032:CheckDistTransmit05()
    if sceneData.currSceneID == 3 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = sceneData:GetDummyPoint(3, "Q13032_region").pos
        local dist = M.Dist(pos, avatarPos)
        print("AvatarX: " .. avatarPos.x .. "  AvatarY: " .. avatarPos.y .. "AvatarZ: " .. avatarPos.z)
        print("DummyX: " .. pos.x .. "  DummyY: " .. pos.y .. "DummyZ: " .. pos.z)
        print("StartCheckdis: " .. dist)
        if dist < 275 then
            print("CheckTransmit dis")
            this:TransmitPlayerWithDialogTextByQuestId(1303205, 1, datas.DialogsIdOUT, 0)
        end
    end
end

function Quest13032:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("InvokeLuaAccept")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 1303215)
    elseif arg1 == 2 then
        actor:FinishQuestID(false, 1303207)
    elseif arg1 == 3 then
        actor:FinishQuestID(false, 1303214)
    elseif arg1 == 4 then
        actor:FinishQuestID(false, 1303216)
    elseif arg1 == 5 then
        actor:FinishQuestID(false, 1303217)
    end
end

function Quest13032:OnSubStart1303201(arg1)
    print("OnSubStart1303201")
    this:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc13261Data.alias, 3)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303201, 1, 20, 1)
    this:ActorDestroy("Q13032Trigger1")
    this:ClearNarratorTask()
end

function Quest13032:OnSubFinish1303201(arg1)
    print("OnSubFinish1303201")
end

function Quest13032:OnSubStart1303215(arg1)
    print("OnSubStart1303215")
end

function Quest13032:OnSubFinish1303215(arg1)
    print("OnSubFinish1303215")
end

function Quest13032:OnSubStart1303202(arg1)
    print("OnSubStart1303202")
    this:ActorDestroy("Q13032RunTrigger")
    this:ActorDestroy("Q13032SaveTrigger")
    this:ActorDestroy("Q13032FinishTrigger")
    this:ActorDestroy("Q13032StoneCreateTrigger")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1035Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc13261Data.id, 0)
    actorMgr:CreateActorWithPos("Q13032Trigger1", "Actor/Gadget/Q13032Trigger1", 70900002, 0, {x = 89.942, y = 296.556, z = 2250.188}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:GetQuestNpcActor(npcs.Npc1035Data.alias):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13261Data.alias):DoFreeStyle(5010, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q13032OutTriggerLeft", "Actor/Gadget/Q13032OutTriggerLeft", 70900002, 0, {x = 180.578, y = 170.977, z = 2499.998}, {x = 0.0, y = 349.984, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q13032OutTriggerBoss", "Actor/Gadget/Q13032OutTriggerBoss", 70900002, 0, {x = 42.873, y = 215.157, z = 2154.861}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q13032OutTriggerHole", "Actor/Gadget/Q13032OutTriggerHole", 70900002, 0, {x = 407.735, y = 164.746, z = 2359.347}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q13032OutTriggerBossTop", "Actor/Gadget/Q13032OutTriggerBossTop", 70900002, 0, {x = 164.903, y = 284.173, z = 2076.103}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:NotifyTo(npcs.Npc4258Data.alias, 1, true)
    this:ClearNarratorTask()
    this:CallDelay(1, function(arg1)
        local actor = actorMgr:GetActor("73043")
        if actor == actorMgr.dummyActor then
        else
            if this:GetSubQuestState(7304301) == 2 then
                actor:SafeDestroyQuestNpc(npcs.Npc20744Data.alias, 3)
            end
        end

        local dummyActor = actorMgr:GetActor("73056")
        print("233")
        if dummyActor == actorMgr.dummyActor then
        else
            if this:GetSubQuestState(7305601) == 2 then
                print("555")
                dummyActor:SafeDestroyQuestNpc(npcs.Npc20744Data.alias, 3)
                print("666")
            end
        end
    end)
end

function Quest13032:OnSubFinish1303202(arg1)
    print("OnSubFinish1303202")
    this:ActorDestroy("Q13032Trigger1")
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13261Data.alias, 3)
end

function Quest13032:OnSubFailed1303202(arg1)
    print("OnSubFailed1303202")
    this:LightNotifyTo(npcs.Npc4258Data.alias, 0, true)
    this:ActorDestroy("Q13032OutTriggerBoss")
    this:ActorDestroy("Q13032OutTriggerHole")
    this:ActorDestroy("Q13032OutTriggerLeft")
    this:ActorDestroy("Q13032OutTriggerBossTop")
    this:CallDelay(1, function(arg1)
        local actor = actorMgr:GetActor("73043")
        if actor == actorMgr.dummyActor then
        else
            if this:GetSubQuestState(7304301) == 2 then
                actor:CreateQuestNpcById(7304301, 20744, 0)
            end
        end

        local dummyActor = actorMgr:GetActor("73056")
        if dummyActor == actorMgr.dummyActor then
        else
            if this:GetSubQuestState(7305601) == 2 then
                dummyActor:CreateQuestNpcById(7305601, 20744, 0)
            end
        end
    end)
end

function Quest13032:OnSubStart1303216(arg1)
    print("OnSubStart1303216")
end

function Quest13032:OnSubFinish1303216(arg1)
    print("OnSubFinish1303216")
end

function Quest13032:OnSubStart1303217(arg1)
    print("OnSubStart1303217")
end

function Quest13032:OnSubFinish1303217(arg1)
    print("OnSubFinish1303217")
end

function Quest13032:OnSubStart1303203(arg1)
    print("OnSubStart1303203")
    actorMgr:CreateActorWithPos("Q13032RunTrigger", "Actor/Gadget/Q13032RunTrigger", 70900002, 0, {x = 221.366, y = 212.534, z = 2268.619}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q13032SaveTrigger", "Actor/Gadget/Q13032SaveTrigger", 70900002, 0, {x = 359.119, y = 241.531, z = 2315.022}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    this:SetNavigationByMainId(13032, true)
    this:NotifyTo(npcs.Npc4258Data.alias, 1, true)
end

function Quest13032:OnSubFinish1303203(arg1)
    print("OnSubFinish1303203")
    this:ActorDestroy("Q13032RunTrigger")
    this:ActorDestroy("Q13032SaveTrigger")
end

function Quest13032:OnSubFailed1303203(arg1)
    print("OnSubFailed1303203")
    this:CheckDistTransmit03()
end

function Quest13032:OnSubStart1303204(arg1)
    print("OnSubStart1303204")
    actorMgr:CreateActorWithPos("Q13032FinishTrigger", "Actor/Gadget/Q13032FinishTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1303205").pos, sceneData:GetDummyPoint(3, "Q1303205").rot, true, false, 3)
    this:SetNavigationByMainId(13032, true)
    this:NotifyTo(npcs.Npc4258Data.alias, 1, true)
end

function Quest13032:OnSubFinish1303204(arg1)
    print("OnSubFinish1303204")
    this:ActorDestroy("Q13032FinishTrigger")
    this:ActorDestroy("Q13032MushroomTrigger")
end

function Quest13032:OnSubFailed1303204(arg1)
    print("OnSubFailed1303204")
    this:CheckDistTransmit04()
end

function Quest13032:OnSubStart1303213(arg1)
    print("OnSubStart1303213")
    actorMgr:CreateActorWithPos("Q13032StoneCreateTrigger", "Actor/Gadget/Q13032StoneCreateTrigger", 70900002, 0, {x = 263.864, y = 242.102, z = 2342.981}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest13032:OnSubFinish1303213(arg1)
    print("OnSubFinish1303213")
    this:ActorDestroy("Q13032StoneCreateTrigger")
end

function Quest13032:OnSubStart1303205(arg1)
    print("OnSubStart1303205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13261Data.id, 1303205, 2, 50, 1)
    this:NotifyTo(npcs.Npc4258Data.alias, 1, true)
end

function Quest13032:OnSubFinish1303205(arg1)
    print("OnSubFinish1303205")
    this:DestroyQuestNpcActor(npcs.Npc13261Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4258Data.alias, 0, true)
    this:ActorDestroy("Q13032OutTriggerBoss")
    this:ActorDestroy("Q13032OutTriggerLeft")
    this:ActorDestroy("Q13032OutTriggerHole")
    this:ActorDestroy("Q13032OutTriggerBossTop")
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsIdWake, 3, nil, nil)
    local actor = actorMgr:GetActor("73043")
    if actor == actorMgr.dummyActor then
    else
        if this:GetSubQuestState(7304301) == 2 then
            actor:CreateQuestNpcById(7304301, 20744, 0)
        end
    end

    local dummyActor = actorMgr:GetActor("73056")
    if dummyActor == actorMgr.dummyActor then
    else
        if this:GetSubQuestState(7305601) == 2 then
            dummyActor:CreateQuestNpcById(7305601, 20744, 0)
        end
    end
end

function Quest13032:OnSubFailed1303205(arg1)
    print("OnSubFailed1303205")
    this:CheckDistTransmit05()
end

function Quest13032:OnSubStart1303214(arg1)
    print("OnSubStart1303214")
end

function Quest13032:OnSubFinish1303214(arg1)
    print("OnSubFinish1303214")
end

function Quest13032:OnSubStart1303206(arg1)
    print("OnSubStart1303206")
    this:ActorDestroy("Q13032Trigger")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303206, 1, 10, 1)
end

function Quest13032:OnSubFinish1303206(arg1)
    print("OnSubFinish1303206")
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
end

function Quest13032:OnSubStart1303207(arg1)
    print("OnSubStart1303207")
end

function Quest13032:OnSubFinish1303207(arg1)
    print("OnSubFinish1303207")
end

function Quest13032:OnSubStart1303208(arg1)
    print("OnSubStart1303208")
    actorMgr:CreateActorWithPos("Q13032Trigger", "Actor/Gadget/Q13032Trigger", 70900002, 0, {x = 198.914, y = 329.945, z = 2379.693}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest13032:OnSubFinish1303208(arg1)
    print("OnSubFinish1303208")
    this:ActorDestroy("Q13032Trigger")
end

function Quest13032:OnSubStart1303212(arg1)
    print("OnSubStart1303212")
    this:PlayCutsceneIndex(1303208, function(arg1)
        actorUtils.FinishQuestID(false, 1303212)
    end, nil, nil, false)
end

function Quest13032:OnSubFinish1303212(arg1)
    print("OnSubFinish1303212")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsIdNone3, 0, nil, nil)
end

function Quest13032:OnSubStart1303209(arg1)
    print("OnSubStart1303209")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303209, 1, 5, 1)
end

function Quest13032:OnSubFinish1303209(arg1)
    print("OnSubFinish1303209")
    this:DestroyQuestNpcActor(npcs.Npc1035Data.alias, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 3, datas.DialogsId, 0, nil, nil)
end

function Quest13032:OnSubStart1303211(arg1)
    print("OnSubStart1303211")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1035Data.id, 1303211, 1, 10, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc4116Data.alias, 1, true)
end

function Quest13032:OnSubFinish1303211(arg1)
    print("OnSubFinish1303211")
    this:LightNotifyTo(npcs.Npc4116Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1035Data.alias, 3)
end

function Quest13032:OnSubStart1303210(arg1)
    print("OnSubStart1303210")
end

function Quest13032:OnSubFinish1303210(arg1)
    print("OnSubFinish1303210")
end

return Quest13032
