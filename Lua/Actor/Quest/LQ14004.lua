require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14004 = class("Quest14004", QuestActorProxy)
Quest14004.defaultAlias = "Quest14004"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest14004:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest14004:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1400401"] = self.OnSubStart1400401,
        ["1400402"] = self.OnSubStart1400402,
        ["1400403"] = self.OnSubStart1400403,
        ["1400404"] = self.OnSubStart1400404,
        ["1400405"] = self.OnSubStart1400405,
        ["1400407"] = self.OnSubStart1400407,
        ["1400408"] = self.OnSubStart1400408,
        ["1400409"] = self.OnSubStart1400409
    }
end

function Quest14004:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1400401"] = self.OnSubFinish1400401,
        ["1400402"] = self.OnSubFinish1400402,
        ["1400403"] = self.OnSubFinish1400403,
        ["1400404"] = self.OnSubFinish1400404,
        ["1400405"] = self.OnSubFinish1400405,
        ["1400407"] = self.OnSubFinish1400407,
        ["1400408"] = self.OnSubFinish1400408,
        ["1400409"] = self.OnSubFinish1400409
    }
end

function Quest14004:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest14004:Start()
    print("Start")
end

function Quest14004:OnDestroy()
    print("OnDestroy")
end

function Quest14004:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest14004:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest14004:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest14004:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest14004:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest14004:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest14004:OnSubStart1400401(arg1)
    print("OnSubStart1400401")
    actorMgr:CreateActorWithPos("Q1400401Trigger", "Actor/Gadget/Q1400401Trigger", 70900002, 0, {x = 4403.532, y = 154.908, z = 4622.784}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc5214Data.alias, 1, true)
end

function Quest14004:OnSubFinish1400401(arg1)
    print("OnSubFinish1400401")
end

function Quest14004:OnSubStart1400402(arg1)
    print("OnSubStart1400402")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13478Data.id, 1400402, 0, 15, 1)
    this:DailyNpcSafeHideSelf(npcs.Npc5214Data.alias, 1, true)
end

function Quest14004:OnSubFinish1400402(arg1)
    print("OnSubFinish1400402")
    this:SafeDestroyQuestNpc(npcs.Npc13478Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5214Data.alias, 0, true)
end

function Quest14004:OnSubStart1400403(arg1)
    print("OnSubStart1400403")
    this:CreateQuestNpc(arg1, npcs.Npc13527Data.id, 0)
    actorMgr:CreateActorWithPos("Q1400403Trigger", "Actor/Gadget/Q1400403Trigger", 70900002, 0, {x = 4380.648, y = 121.831, z = 4616.867}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest14004:OnSubFinish1400403(arg1)
    print("OnSubFinish1400403")
    this:NarratorOnlyTaskByData(datas.Narrator_1400401)
end

function Quest14004:OnSubStart1400404(arg1)
    print("OnSubStart1400404")
end

function Quest14004:OnSubFinish1400404(arg1)
    print("OnSubFinish1400404")
    this:NarratorOnlyTaskByData(datas.Narrator_1400402)
end

function Quest14004:OnSubStart1400405(arg1)
    print("OnSubStart1400405")
    this:CreateQuestNpc(arg1, npcs.Npc13528Data.id, 0)
end

function Quest14004:OnSubFinish1400405(arg1)
    print("OnSubFinish1400405")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13528Data.alias, 3)
end

function Quest14004:OnSubStart1400407(arg1)
    print("OnSubStart1400407")
    this:NpcCreateWithNpcTrigger(npcs.Npc13521Data.id, 1400407, 0, 8)
    this:DailyNpcSafeHideSelf(npcs.Npc5205Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13521Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14004:OnSubFinish1400407(arg1)
    print("OnSubFinish1400407")
    this:CallDelayByQuest("Narrator1400403", 0.5, function(arg1)
        this:NarratorOnlyTaskByData(datas.Narrator_1400403)
    end)
end

function Quest14004:OnSubStart1400408(arg1)
    print("OnSubStart1400408")
    this:CreateQuestNpc(arg1, npcs.Npc13521Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5205Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc13521Data.alias):DoFreeStyle(1230, true, nil, true, true, true, true)
end

function Quest14004:OnSubFinish1400408(arg1)
    print("OnSubFinish1400408")
    this:LightNotifyTo(npcs.Npc5205Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc13521Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13527Data.alias, 3)
end

function Quest14004:OnSubStart1400409(arg1)
    print("OnSubStart1400409")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc1078Data.id, 1400409, 0, 15, 1)
    this:CreateQuestNpc(arg1, npcs.Npc5206Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5206Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest14004:OnSubFinish1400409(arg1)
    print("OnSubFinish1400409")
    this:SafeDestroyQuestNpc(npcs.Npc1078Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5206Data.alias, 3)
end

return Quest14004
