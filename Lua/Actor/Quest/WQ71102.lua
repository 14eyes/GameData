require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71102 = class("Quest71102", QuestActorProxy)
Quest71102.defaultAlias = "Quest71102"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71102:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71102:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7110201"] = self.OnSubStart7110201,
        ["7110202"] = self.OnSubStart7110202,
        ["7110205"] = self.OnSubStart7110205,
        ["7110203"] = self.OnSubStart7110203,
        ["7110204"] = self.OnSubStart7110204,
        ["7110207"] = self.OnSubStart7110207,
        ["7110208"] = self.OnSubStart7110208,
        ["7110212"] = self.OnSubStart7110212,
        ["7110214"] = self.OnSubStart7110214,
        ["7110213"] = self.OnSubStart7110213,
        ["7110215"] = self.OnSubStart7110215,
        ["7110216"] = self.OnSubStart7110216,
        ["7110217"] = self.OnSubStart7110217
    }
end

function Quest71102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7110201"] = self.OnSubFinish7110201,
        ["7110202"] = self.OnSubFinish7110202,
        ["7110205"] = self.OnSubFinish7110205,
        ["7110203"] = self.OnSubFinish7110203,
        ["7110204"] = self.OnSubFinish7110204,
        ["7110207"] = self.OnSubFinish7110207,
        ["7110208"] = self.OnSubFinish7110208,
        ["7110212"] = self.OnSubFinish7110212,
        ["7110214"] = self.OnSubFinish7110214,
        ["7110213"] = self.OnSubFinish7110213,
        ["7110215"] = self.OnSubFinish7110215,
        ["7110216"] = self.OnSubFinish7110216,
        ["7110217"] = self.OnSubFinish7110217
    }
end

function Quest71102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71102:Start()
    print("Start")
end

function Quest71102:OnDestroy()
    print("OnDestroy")
end

function Quest71102:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71102:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71102:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71102:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest71102:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71102:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest71102:OnSubStart7110201(arg1)
    print("OnSubStart7110201")
    this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2490Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7110201Trigger", "Actor/Gadget/Q7110201Trigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7110201Trigger01", "Actor/Gadget/Q7110201Trigger01", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q7110201Trigger02", "Actor/Gadget/Q7110201Trigger02", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest71102:OnSubFinish7110201(arg1)
    print("OnSubFinish7110201")
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 36)
    this:ActorDestroy("Q7110201Trigger")
    this:ActorDestroy("Q7110201Trigger01")
    this:ActorDestroy("Q7110201Trigger02")
    this:QuestNarratorTask(datas.Narrator_7110201)
end

function Quest71102:OnSubStart7110202(arg1)
    print("OnSubStart7110202")
    this:DailyNpcSafeHideSelf(npcs.Npc2490Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7110202Trigger", "Actor/Gadget/Q7110202Trigger", 70900002, 0, points.TPos_Q7110202Trigger.pos, points.TPos_Q7110202Trigger.rot, true, false, 3)
end

function Quest71102:OnSubFinish7110202(arg1)
    print("OnSubFinish7110202")
    this:SetNavigationByMainId(71102, true)
end

function Quest71102:OnSubStart7110205(arg1)
    print("OnSubStart7110205")
    this:DailyNpcSafeHideSelf(npcs.Npc2490Data.alias, 1, true)
end

function Quest71102:OnSubFinish7110205(arg1)
    print("OnSubFinish7110205")
    this:TransmitPlayerUseCustomizedTplById(arg1, 2, 36)
    this:QuestNarratorTask(datas.Narrator_7110202)
    local questGlobalVar = this:GetQuestGlobalVar(4013902)
    if questGlobalVar == 0 then
        this:SetNavigationByMainId(71102, true)
    elseif questGlobalVar == 1 then
        this:SetNavigationByMainId(40139, true)
    end

    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 3)
end

function Quest71102:OnSubStart7110203(arg1)
    print("OnSubStart7110203")
    this:CreateQuestNpc(arg1, npcs.Npc2493Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc2490Data.alias, 0, true)
    actorMgr:CreateActorWithPos("Q7110203Trigger", "Actor/Gadget/Q7110203Trigger", 70900002, 0, points.TPos_Q7110203Trigger.pos, points.TPos_Q7110203Trigger.rot, true, false, 3)
    if this:GetQuestGlobalVar(4013902) == 0 then
        actorMgr:CreateActorWithPos("Q7110203Trigger01", "Actor/Gadget/Q7110203Trigger01", 70900002, 0, points.TPos_Q7110203Trigger01.pos, points.TPos_Q7110203Trigger01.rot, true, false, 3)
    end
end

function Quest71102:OnSubFinish7110203(arg1)
    print("OnSubFinish7110203")
end

function Quest71102:OnSubStart7110204(arg1)
    print("OnSubStart7110204")
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7110204Trigger", "Actor/Gadget/Q7110204Trigger", 70900002, 0, points.TPos_Q7110204Trigger.pos, points.TPos_Q7110204Trigger.rot, true, false, 3)
end

function Quest71102:OnSubFinish7110204(arg1)
    print("OnSubFinish7110204")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2493Data.alias, 3)
end

function Quest71102:OnSubStart7110207(arg1)
    print("OnSubStart7110207")
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2491Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2491Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2492Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc2492Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2507Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2508Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7110207Trigger", "Actor/Gadget/Q7110207Trigger", 70900002, 0, points.TPos_Q7110207Trigger.pos, points.TPos_Q7110207Trigger.rot, true, false, 3)
end

function Quest71102:OnSubFinish7110207(arg1)
    print("OnSubFinish7110207")
end

function Quest71102:OnSubStart7110208(arg1)
    print("OnSubStart7110208")
    this:DailyNpcSafeHideSelf(npcs.Npc2493Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2491Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2492Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2507Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2508Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7110208Trigger", "Actor/Gadget/Q7110208Trigger", 70900002, 0, points.TPos_Q7110208Trigger.pos, points.TPos_Q7110208Trigger.rot, true, false, 3)
end

function Quest71102:OnSubFinish7110208(arg1)
    print("OnSubFinish7110208")
    this:SafeDestroyQuestNpc(npcs.Npc2493Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2491Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2492Data.alias, 3)
end

function Quest71102:OnSubStart7110212(arg1)
    print("OnSubStart7110212")
    this:LightNotifyTo(npcs.Npc2493Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2491Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2492Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2507Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2508Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7110212Trigger", "Actor/Gadget/Q7110212Trigger", 70900002, 0, points.TPos_Q7110212Trigger.pos, points.TPos_Q7110212Trigger.rot, true, false, 3)
end

function Quest71102:OnSubFinish7110212(arg1)
    print("OnSubFinish7110212")
    this:NarratorOnlyTaskByData(datas.Narrator_7110205)
end

function Quest71102:OnSubStart7110214(arg1)
    print("OnSubStart7110214")
    this:LightNotifyTo(npcs.Npc2507Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2508Data.alias, 0, true)
    this:CallDelayByQuest("Test7110214", 2, function(arg1)
        actorUtils.FinishQuestID(false, 7110214)
    end)
end

function Quest71102:OnSubFinish7110214(arg1)
    print("OnSubFinish7110214")
end

function Quest71102:OnSubStart7110213(arg1)
    print("OnSubStart7110213")
end

function Quest71102:OnSubFinish7110213(arg1)
    print("OnSubFinish7110213")
end

function Quest71102:OnSubStart7110215(arg1)
    print("OnSubStart7110215")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21094Data.id, 1, npcs.Npc21094Data.alias)
end

function Quest71102:OnSubFinish7110215(arg1)
    print("OnSubFinish7110215")
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 3)
end

function Quest71102:OnSubStart7110216(arg1)
    print("OnSubStart7110216")
    this:CreateQuestNpc(arg1, npcs.Npc2498Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
    actorMgr:CreateActorWithPos("Q7110216Trigger", "Actor/Gadget/Q7110216Trigger", 70900002, 0, points.TPos_Q7110216Trigger.pos, points.TPos_Q7110216Trigger.rot, true, false, 3)
end

function Quest71102:OnSubFinish7110216(arg1)
    print("OnSubFinish7110216")
end

function Quest71102:OnSubStart7110217(arg1)
    print("OnSubStart7110217")
    actorMgr:CreateActorWithPos("Q7110217Trigger", "Actor/Gadget/Q7110217Trigger", 70900002, 0, points.TPos_Q7110217Trigger.pos, points.TPos_Q7110217Trigger.rot, true, false, 3)
end

function Quest71102:OnSubFinish7110217(arg1)
    print("OnSubFinish7110217")
    this:SafeDestroyQuestNpc(npcs.Npc2498Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2501Data.alias, 3)
end

return Quest71102
