require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72804 = class("Quest72804", QuestActorProxy)
Quest72804.defaultAlias = "Quest72804"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72804:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72804:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7280401"] = self.OnSubStart7280401,
        ["7280403"] = self.OnSubStart7280403,
        ["7280404"] = self.OnSubStart7280404,
        ["7280408"] = self.OnSubStart7280408,
        ["7280405"] = self.OnSubStart7280405,
        ["7280406"] = self.OnSubStart7280406,
        ["7280407"] = self.OnSubStart7280407
    }
end

function Quest72804:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7280401"] = self.OnSubFinish7280401,
        ["7280403"] = self.OnSubFinish7280403,
        ["7280404"] = self.OnSubFinish7280404,
        ["7280408"] = self.OnSubFinish7280408,
        ["7280405"] = self.OnSubFinish7280405,
        ["7280406"] = self.OnSubFinish7280406,
        ["7280407"] = self.OnSubFinish7280407
    }
end

function Quest72804:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7280401"] = self.OnSubFailed7280401,
        ["7280403"] = self.OnSubFailed7280403,
        ["7280404"] = self.OnSubFailed7280404,
        ["7280408"] = self.OnSubFailed7280408,
        ["7280405"] = self.OnSubFailed7280405,
        ["7280406"] = self.OnSubFailed7280406,
        ["7280407"] = self.OnSubFailed7280407
    }
end

function Quest72804:Start()
    print("Start")
end

function Quest72804:OnDestroy()
    print("OnDestroy")
end

function Quest72804:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72804:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72804:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:LightNotifyTo(npcs.Npc3060Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc20332Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc3060Data.alias, 3)
end

function Quest72804:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72804:NpcCreate(arg1, arg2, arg3)
    this:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72804:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest72804:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest72804:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72804:OnSubStart7280401(arg1)
    print("OnSubStart7280401")
end

function Quest72804:OnSubFinish7280401(arg1)
    print("OnSubFinish7280401")
    this:NpcDestroyWithBlackscreen(0, npcs.Npc3060Data.alias)
end

function Quest72804:OnSubFailed7280401(arg1)
    print("OnSubFailed7280401")
end

function Quest72804:OnSubStart7280403(arg1)
    print("OnSubStart7280403")
    this:NotifyTo(npcs.Npc3060Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q72804Trigger", "Actor/Gadget/Q72804Trigger", 70900002, 0, {x = -2150.51, y = 200.125, z = -4287.73}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q72804Trigger1", "Actor/Gadget/Q72804Trigger1", 70900002, 0, {x = -2152.184, y = 200.08, z = -4288.487}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest72804:OnSubFinish7280403(arg1)
    print("OnSubFinish7280403")
    this:ActorDestroy("Q72804Trigger")
    this:ActorDestroy("Q72804Trigger1")
    this:TryPauseCurAutoNarrator()
end

function Quest72804:OnSubFailed7280403(arg1)
    print("OnSubFailed7280403")
end

function Quest72804:OnSubStart7280404(arg1)
    print("OnSubStart7280404")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc3060Data.id, 1)
    this:CallDelay(0.5, function(arg1)
        this:RequestInteraction(npcs.Npc3060Data.alias)
    end)
end

function Quest72804:OnSubFinish7280404(arg1)
    print("OnSubFinish7280404")
end

function Quest72804:OnSubFailed7280404(arg1)
    print("OnSubFailed7280404")
end

function Quest72804:OnSubStart7280408(arg1)
    print("OnSubStart7280408")
    this:NpcCreate(arg1, npcs.Npc20332Data.id, 2)
    this:CallDelay(4, function(arg1)
        this:NotifyTo(npcs.Npc3060Data.alias, 1, true)
    end)
end

function Quest72804:OnSubFinish7280408(arg1)
    print("OnSubFinish7280408")
end

function Quest72804:OnSubFailed7280408(arg1)
    print("OnSubFailed7280408")
end

function Quest72804:OnSubStart7280405(arg1)
    print("OnSubStart7280405")
    this:RequestInteraction(npcs.Npc20332Data.alias)
end

function Quest72804:OnSubFinish7280405(arg1)
    print("OnSubFinish7280405")
    this:NpcDestroyWithBlackscreen(0, npcs.Npc3060Data.alias)
    this:NpcDestroy(npcs.Npc20332Data.alias, 3)
    this:CallDelay(4, function(arg1)
        this:NotifyTo(npcs.Npc3060Data.alias, 1, true)
    end)
end

function Quest72804:OnSubFailed7280405(arg1)
    print("OnSubFailed7280405")
end

function Quest72804:OnSubStart7280406(arg1)
    print("OnSubStart7280406")
    this:NotifyTo(npcs.Npc3060Data.alias, 1, true)
    this:CallDelay(4, function(arg1)
        this:NarratorOnlyTaskByData(datas.kaiche_fight_02, nil, 72804)
    end)
end

function Quest72804:OnSubFinish7280406(arg1)
    print("OnSubFinish7280406")
end

function Quest72804:OnSubFailed7280406(arg1)
    print("OnSubFailed7280406")
end

function Quest72804:OnSubStart7280407(arg1)
    print("OnSubStart7280407")
    this:NpcCreate(arg1, npcs.Npc3060Data.id, 1)
    actorMgr:CreateActorWithPos("Q72804Trigger2", "Actor/Gadget/Q72804Trigger2", 70900002, 0, {x = -1853.644, y = 200.272, z = -4166.531}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest72804:OnSubFinish7280407(arg1)
    print("OnSubFinish7280407")
    this:NpcDestroyWithBlackscreen(0, npcs.Npc3060Data.alias)
    this:ActorDestroy("Q72804Trigger2")
    this:ClearNarratorTask()
end

function Quest72804:OnSubFailed7280407(arg1)
    print("OnSubFailed7280407")
end

return Quest72804
