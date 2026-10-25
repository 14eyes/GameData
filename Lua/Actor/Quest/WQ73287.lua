require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73287 = class("Quest73287", QuestActorProxy)
Quest73287.defaultAlias = "Quest73287"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73287:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73287:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7328719"] = self.OnSubStart7328719,
        ["7328720"] = self.OnSubStart7328720,
        ["7328721"] = self.OnSubStart7328721,
        ["7328722"] = self.OnSubStart7328722,
        ["7328701"] = self.OnSubStart7328701,
        ["7328702"] = self.OnSubStart7328702,
        ["7328703"] = self.OnSubStart7328703,
        ["7328704"] = self.OnSubStart7328704,
        ["7328705"] = self.OnSubStart7328705,
        ["7328717"] = self.OnSubStart7328717,
        ["7328718"] = self.OnSubStart7328718,
        ["7328706"] = self.OnSubStart7328706,
        ["7328707"] = self.OnSubStart7328707,
        ["7328708"] = self.OnSubStart7328708,
        ["7328709"] = self.OnSubStart7328709,
        ["7328710"] = self.OnSubStart7328710,
        ["7328711"] = self.OnSubStart7328711,
        ["7328712"] = self.OnSubStart7328712,
        ["7328713"] = self.OnSubStart7328713,
        ["7328714"] = self.OnSubStart7328714,
        ["7328715"] = self.OnSubStart7328715,
        ["7328716"] = self.OnSubStart7328716
    }
end

function Quest73287:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7328719"] = self.OnSubFinish7328719,
        ["7328720"] = self.OnSubFinish7328720,
        ["7328721"] = self.OnSubFinish7328721,
        ["7328722"] = self.OnSubFinish7328722,
        ["7328701"] = self.OnSubFinish7328701,
        ["7328702"] = self.OnSubFinish7328702,
        ["7328703"] = self.OnSubFinish7328703,
        ["7328704"] = self.OnSubFinish7328704,
        ["7328705"] = self.OnSubFinish7328705,
        ["7328717"] = self.OnSubFinish7328717,
        ["7328718"] = self.OnSubFinish7328718,
        ["7328706"] = self.OnSubFinish7328706,
        ["7328707"] = self.OnSubFinish7328707,
        ["7328708"] = self.OnSubFinish7328708,
        ["7328709"] = self.OnSubFinish7328709,
        ["7328710"] = self.OnSubFinish7328710,
        ["7328711"] = self.OnSubFinish7328711,
        ["7328712"] = self.OnSubFinish7328712,
        ["7328713"] = self.OnSubFinish7328713,
        ["7328714"] = self.OnSubFinish7328714,
        ["7328715"] = self.OnSubFinish7328715,
        ["7328716"] = self.OnSubFinish7328716
    }
end

function Quest73287:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73287:Start()
    print("Start")
end

function Quest73287:OnDestroy()
    print("OnDestroy")
end

function Quest73287:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73287:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73287:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73287:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73287:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73287:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73287:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73287:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7328716)
    elseif arg1 == 2 then
        this:SetQuestVarByMainId(1, 1)
    end
end

function Quest73287:OnSubStart7328719(arg1)
    print("OnSubStart7328719")
end

function Quest73287:OnSubFinish7328719(arg1)
    print("OnSubFinish7328719")
end

function Quest73287:OnSubStart7328720(arg1)
    print("OnSubStart7328720")
end

function Quest73287:OnSubFinish7328720(arg1)
    print("OnSubFinish7328720")
end

function Quest73287:OnSubStart7328721(arg1)
    print("OnSubStart7328721")
end

function Quest73287:OnSubFinish7328721(arg1)
    print("OnSubFinish7328721")
end

function Quest73287:OnSubStart7328722(arg1)
    print("OnSubStart7328722")
end

function Quest73287:OnSubFinish7328722(arg1)
    print("OnSubFinish7328722")
end

function Quest73287:OnSubStart7328701(arg1)
    print("OnSubStart7328701")
end

function Quest73287:OnSubFinish7328701(arg1)
    print("OnSubFinish7328701")
end

function Quest73287:OnSubStart7328702(arg1)
    print("OnSubStart7328702")
    actorMgr:CreateActorWithPos("Q7328702Trigger", "Actor/Gadget/Q7328702Trigger", 70900002, 0, {x = -1533.268, y = 58.823, z = 5078.636}, {x = 0.0, y = 352.956, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7328702sTrigger", "Actor/Gadget/Q7328702sTrigger", 70900002, 0, {x = -1545.753, y = 53.404, z = 5099.188}, {x = 0.0, y = 343.363, z = 0.0}, true, false, 3)
end

function Quest73287:OnSubFinish7328702(arg1)
    print("OnSubFinish7328702")
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId, 1, nil, nil)
    this:ActorDestroy("Q7328702sTrigger")
end

function Quest73287:OnSubStart7328703(arg1)
    print("OnSubStart7328703")
    actorMgr:CreateActorWithPos("Q7328703Trigger", "Actor/Gadget/Q7328703Trigger", 70900002, 0, {x = -1536.138, y = 51.014, z = 5085.53}, {x = 0.0, y = 346.829, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7328702sTrigger", "Actor/Gadget/Q7328702sTrigger", 70900002, 0, {x = -1545.753, y = 53.404, z = 5099.188}, {x = 0.0, y = 343.363, z = 0.0}, true, false, 3)
end

function Quest73287:OnSubFinish7328703(arg1)
    print("OnSubFinish7328703")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
    this:ActorDestroy("Q7328702sTrigger")
end

function Quest73287:OnSubStart7328704(arg1)
    print("OnSubStart7328704")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4298Data.id, 1)
        this:NpcCreate(arg1, npcs.Npc4299Data.id, 2)
        actorMgr:CreateActorWithPos("Q7328704Trigger", "Actor/Gadget/Q7328704Trigger", 70900002, 0, {x = -1520.539, y = 59.88, z = 4988.896}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest73287:OnSubFinish7328704(arg1)
    print("OnSubFinish7328704")
end

function Quest73287:OnSubStart7328705(arg1)
    print("OnSubStart7328705")
end

function Quest73287:OnSubFinish7328705(arg1)
    print("OnSubFinish7328705")
end

function Quest73287:OnSubStart7328717(arg1)
    print("OnSubStart7328717")
end

function Quest73287:OnSubFinish7328717(arg1)
    print("OnSubFinish7328717")
end

function Quest73287:OnSubStart7328718(arg1)
    print("OnSubStart7328718")
end

function Quest73287:OnSubFinish7328718(arg1)
    print("OnSubFinish7328718")
end

function Quest73287:OnSubStart7328706(arg1)
    print("OnSubStart7328706")
    this:CreateQuestNpc(arg1, npcs.Npc4291Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20922Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc20923Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc20921Data.id, 4)
    actorMgr:CreateActorWithPos("Q7328706Trigger", "Actor/Gadget/Q7328706Trigger", 70900002, 0, {x = -1555.118, y = 33.852, z = 5102.93}, {x = 0.494, y = 2.72, z = 3.22}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7328706sTrigger", "Actor/Gadget/Q7328706sTrigger", 70900002, 0, {x = -1557.656, y = 36.112, z = 5103.644}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73287:OnSubFinish7328706(arg1)
    print("OnSubFinish7328706")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73287:OnSubStart7328707(arg1)
    print("OnSubStart7328707")
    this:NpcCreate(arg1, npcs.Npc4291Data.id, 1)
    this:RequestInteraction(npcs.Npc4291Data.alias)
    this:ClearNarratorTask()
end

function Quest73287:OnSubFinish7328707(arg1)
    print("OnSubFinish7328707")
    this:SafeDestroyQuestNpc(npcs.Npc4291Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20922Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20923Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20921Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73287:OnSubStart7328708(arg1)
    print("OnSubStart7328708")
end

function Quest73287:OnSubFinish7328708(arg1)
    print("OnSubFinish7328708")
    this:NpcCreateWithActionSafeCall(arg1, 7328707, 0)
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7328707)
    end)
end

function Quest73287:OnSubStart7328709(arg1)
    print("OnSubStart7328709")
    actorMgr:CreateActorWithPos("Q7328709Trigger", "Actor/Gadget/Q7328709Trigger", 70900002, 0, {x = -1553.177, y = 13.992, z = 5040.774}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73287:OnSubFinish7328709(arg1)
    print("OnSubFinish7328709")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73287:OnSubStart7328710(arg1)
    print("OnSubStart7328710")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:RequestInteraction(npcs.Npc4296Data.alias)
    end)
end

function Quest73287:OnSubFinish7328710(arg1)
    print("OnSubFinish7328710")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7328708, function(arg1) end)
    end)
end

function Quest73287:OnSubStart7328711(arg1)
    print("OnSubStart7328711")
    actorMgr:CreateActorWithPos("Q7328711Trigger", "Actor/Gadget/Q7328711Trigger", 70900002, 0, {x = -1571.312, y = 12.665, z = 5132.655}, {x = 0.0, y = 12.115, z = 0.0}, true, false, 3)
end

function Quest73287:OnSubFinish7328711(arg1)
    print("OnSubFinish7328711")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest73287:OnSubStart7328712(arg1)
    print("OnSubStart7328712")
    this:CallDelay(0.5, function(arg1_2)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
        this:RequestInteraction(npcs.Npc4296Data.alias)
    end)
end

function Quest73287:OnSubFinish7328712(arg1)
    print("OnSubFinish7328712")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
end

function Quest73287:OnSubStart7328713(arg1)
    print("OnSubStart7328713")
end

function Quest73287:OnSubFinish7328713(arg1)
    print("OnSubFinish7328713")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7328709)
    end)
end

function Quest73287:OnSubStart7328714(arg1)
    print("OnSubStart7328714")
end

function Quest73287:OnSubFinish7328714(arg1)
    print("OnSubFinish7328714")
    this:CallDelay(2, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_7328710)
    end)
end

function Quest73287:OnSubStart7328715(arg1)
    print("OnSubStart7328715")
    actorMgr:CreateActorWithPos("Q7328715Trigger", "Actor/Gadget/Q7328715Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328715_guide").pos, sceneData:GetDummyPoint(3, "Q7328715_guide").rot, true, false, 3)
end

function Quest73287:OnSubFinish7328715(arg1)
    print("OnSubFinish7328715")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:CallDelay(1, function(arg1_2)
        this:TransmitPlayerById(arg1, 3)
        actorMgr:CreateActorWithPos("Q7328715sTrigger", "Actor/Gadget/Q7328715sTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7328715_guide").pos, sceneData:GetDummyPoint(3, "Q7328715_guide").rot, true, false, 3)
        this:NpcCreate(arg1, npcs.Npc4296Data.id, 1)
    end)
end

function Quest73287:OnSubStart7328716(arg1)
    print("OnSubStart7328716")
end

function Quest73287:OnSubFinish7328716(arg1)
    print("OnSubFinish7328716")
    this:ActionSafeCall(function(arg1)
        this:NpcDestroyWithBlackscreen(3, npcs.Npc4296Data.alias)
        this:NarratorOnlyTaskByData(datas.Narrator_7328712)
    end)
end

return Quest73287
