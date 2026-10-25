require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14015 = class("Quest14015", QuestActorProxy)
Quest14015.defaultAlias = "Quest14015"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest14015:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest14015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1401501"] = self.OnSubStart1401501,
        ["1401502"] = self.OnSubStart1401502,
        ["1401503"] = self.OnSubStart1401503,
        ["1401509"] = self.OnSubStart1401509,
        ["1401510"] = self.OnSubStart1401510,
        ["1401512"] = self.OnSubStart1401512,
        ["1401504"] = self.OnSubStart1401504,
        ["1401505"] = self.OnSubStart1401505,
        ["1401511"] = self.OnSubStart1401511,
        ["1401506"] = self.OnSubStart1401506,
        ["1401507"] = self.OnSubStart1401507,
        ["1401508"] = self.OnSubStart1401508,
        ["1401513"] = self.OnSubStart1401513
    }
end

function Quest14015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1401501"] = self.OnSubFinish1401501,
        ["1401502"] = self.OnSubFinish1401502,
        ["1401503"] = self.OnSubFinish1401503,
        ["1401509"] = self.OnSubFinish1401509,
        ["1401510"] = self.OnSubFinish1401510,
        ["1401512"] = self.OnSubFinish1401512,
        ["1401504"] = self.OnSubFinish1401504,
        ["1401505"] = self.OnSubFinish1401505,
        ["1401511"] = self.OnSubFinish1401511,
        ["1401506"] = self.OnSubFinish1401506,
        ["1401507"] = self.OnSubFinish1401507,
        ["1401508"] = self.OnSubFinish1401508,
        ["1401513"] = self.OnSubFinish1401513
    }
end

function Quest14015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14015:Start()
    print("Start")
end

function Quest14015:OnDestroy()
    print("OnDestroy")
end

function Quest14015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14015:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14015:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest14015:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14015:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14015:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14015:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest14015:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:ActionSafeCall(function(arg1)
            this:TransmitPlayerWithQuestIdByData(1401501, 1, datas.TransmitData_1401501)
        end)

        this:SetQuestVarByMainId(0, 1)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 1401509)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 1401513)
    elseif arg1 == 4 then
        this:SetQuestVarByMainId(0, 0)
    end
end

function Quest14015:OnSubStart1401501(arg1)
    print("OnSubStart1401501")
    this:DailyNpcSafeHideSelf(npcs.Npc5015Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc5016Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1401501_Trigger", "Actor/Gadget/Q1401501_Trigger", 70900002, 0, points.TPos_Q1401501_Trigger.pos, points.TPos_Q1401501_Trigger.rot, true, false, 3)
end

function Quest14015:OnSubFinish1401501(arg1)
    print("OnSubFinish1401501")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5015Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5016Data.alias, 0, true)
end

function Quest14015:OnSubStart1401502(arg1)
    print("OnSubStart1401502")
    this:CreateQuestNpc(arg1, npcs.Npc13839Data.id, 0)
    local questVar = this:GetQuestVar(1401502, 0)
    if questVar == 0 then
        this:ActionSafeCall(function(arg1)
            this:CreateQuestNpcById(1401502, npcs.Npc1075Data.id, 0)
            this:GetQuestNpcActor(npcs.Npc1075Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        end)
    elseif questVar == 1 then
        actorMgr:CreateActorWithPos("Q1401502_Trigger", "Actor/Gadget/Q1401502_Trigger", 70900002, 0, {x = 3242.777, y = 443.78, z = 4264.73}, {x = 0.0, y = 312.602, z = 0.0}, true, false, 3)
    end

    this:GetQuestNpcActor(npcs.Npc13839Data.alias):DoFreeStyle(1280, true, nil, true, true, false, false)
end

function Quest14015:OnSubFinish1401502(arg1)
    print("OnSubFinish1401502")
    this:SafeDestroyQuestNpc(npcs.Npc13839Data.alias, 3)
end

function Quest14015:OnSubStart1401503(arg1)
    print("OnSubStart1401503")
    local groupEntityCreateTask = curtainUtils.CreateGroupEntityCreateTask({{groupId = 133401433, configId = 433001}})
    this:ShowBlackScreen(1, 3, 0, nil, function(arg1)
        this:ShowBlackScreen(0, 2, 0, nil, nil, nil, "", false, true)
        this:NpcCreateWithNpcTriggerAndBlackscreen(1075, 1401503, 0, 14, 1)
    end, groupEntityCreateTask, "", false, true)
end

function Quest14015:OnSubFinish1401503(arg1)
    print("OnSubFinish1401503")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_1401501)
    this:ActorDestroy("Q1401510_Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest14015:OnSubStart1401509(arg1)
    print("OnSubStart1401509")
end

function Quest14015:OnSubFinish1401509(arg1)
    print("OnSubFinish1401509")
end

function Quest14015:OnSubStart1401510(arg1)
    print("OnSubStart1401510")
    actorMgr:CreateActorWithPos("Q1401510_Trigger", "Actor/Gadget/Q1401510_Trigger", 70900002, 0, {x = 2743.478, y = 440.0, z = 4361.068}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest14015:OnSubFinish1401510(arg1)
    print("OnSubFinish1401510")
end

function Quest14015:OnSubStart1401512(arg1)
    print("OnSubStart1401512")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 1401512, 0, 10, 1)
    this:CreateLocalGadget(70711362, "0", {x = 2720.844, y = 440.0, z = 4342.586}, {x = 0.0, y = 180.0, z = 0.0}, 3, nil, nil, false, 0)
end

function Quest14015:OnSubFinish1401512(arg1)
    print("OnSubFinish1401512")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest14015:OnSubStart1401504(arg1)
    print("OnSubStart1401504")
    this:NpcCreateWithNpcTrigger(npcs.Npc13323Data.id, 1401504, 0, 10)
    this:CreateLocalGadget(70711362, "0", {x = 2720.844, y = 440.0, z = 4342.586}, {x = 0.0, y = 180.0, z = 0.0}, 3, nil, nil, false, 0)
    this:GetQuestNpcActor(npcs.Npc13323Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest14015:OnSubFinish1401504(arg1)
    print("OnSubFinish1401504")
    this:RemoveLocalGadget(70711362, "0")
    this:SafeDestroyQuestNpc(npcs.Npc13323Data.alias, 3)
end

function Quest14015:OnSubStart1401505(arg1)
    print("OnSubStart1401505")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 1401505, 0, 8, 1)
end

function Quest14015:OnSubFinish1401505(arg1)
    print("OnSubFinish1401505")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
end

function Quest14015:OnSubStart1401511(arg1)
    print("OnSubStart1401511")
    actorMgr:CreateActorWithPos("Q1401511_Trigger", "Actor/Gadget/Q1401511_Trigger", 70900002, 0, {x = 2727.839, y = 440.065, z = 4277.091}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest14015:OnSubFinish1401511(arg1)
    print("OnSubFinish1401511")
    this:ActorDestroy("Q1401511_Trigger")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1401501)
    end)
end

function Quest14015:OnSubStart1401506(arg1)
    print("OnSubStart1401506")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1075Data.id, 1401506, 0, 7, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5141Data.alias, 1, true)
end

function Quest14015:OnSubFinish1401506(arg1)
    print("OnSubFinish1401506")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13709Data.alias, 3)
end

function Quest14015:OnSubStart1401507(arg1)
    print("OnSubStart1401507")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1075Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5141Data.alias, 1, true)
end

function Quest14015:OnSubFinish1401507(arg1)
    print("OnSubFinish1401507")
end

function Quest14015:OnSubStart1401508(arg1)
    print("OnSubStart1401508")
    this:DailyNpcSafeHideSelf(npcs.Npc5141Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1401508_Trigger", "Actor/Gadget/Q1401508_Trigger", 70900002, 0, points.TPos_Q1401508_Trigger.pos, points.TPos_Q1401508_Trigger.rot, true, false, 3)
end

function Quest14015:OnSubFinish1401508(arg1)
    print("OnSubFinish1401508")
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5141Data.alias, 0, true)
end

function Quest14015:OnSubStart1401513(arg1)
    print("OnSubStart1401513")
end

function Quest14015:OnSubFinish1401513(arg1)
    print("OnSubFinish1401513")
end

return Quest14015
