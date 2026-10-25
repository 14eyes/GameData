require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40099 = class("Quest40099", QuestActorProxy)
Quest40099.defaultAlias = "Quest40099"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40099:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40099:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4009901"] = self.OnSubStart4009901,
        ["4009902"] = self.OnSubStart4009902,
        ["4009910"] = self.OnSubStart4009910,
        ["4009903"] = self.OnSubStart4009903,
        ["4009904"] = self.OnSubStart4009904,
        ["4009911"] = self.OnSubStart4009911,
        ["4009909"] = self.OnSubStart4009909,
        ["4009905"] = self.OnSubStart4009905,
        ["4009906"] = self.OnSubStart4009906,
        ["4009912"] = self.OnSubStart4009912,
        ["4009907"] = self.OnSubStart4009907,
        ["4009908"] = self.OnSubStart4009908
    }
end

function Quest40099:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4009901"] = self.OnSubFinish4009901,
        ["4009902"] = self.OnSubFinish4009902,
        ["4009910"] = self.OnSubFinish4009910,
        ["4009903"] = self.OnSubFinish4009903,
        ["4009904"] = self.OnSubFinish4009904,
        ["4009911"] = self.OnSubFinish4009911,
        ["4009909"] = self.OnSubFinish4009909,
        ["4009905"] = self.OnSubFinish4009905,
        ["4009906"] = self.OnSubFinish4009906,
        ["4009912"] = self.OnSubFinish4009912,
        ["4009907"] = self.OnSubFinish4009907,
        ["4009908"] = self.OnSubFinish4009908
    }
end

function Quest40099:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40099:Start()
    print("Start")
end

function Quest40099:OnDestroy()
    print("OnDestroy")
end

function Quest40099:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40099:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40099:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1019Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1587Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:LightNotifyTo(npcs.Npc1587Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q4009905Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009906Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009904N1587Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009905N1019Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009906N1019Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q4009907N1019Trigger", 3, false)
end

function Quest40099:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest40099:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest40099:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40099:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40099:OnSubStart4009901(arg1)
    print("OnSubStart4009901")
end

function Quest40099:OnSubFinish4009901(arg1)
    print("OnSubFinish4009901")
    this:NarratorOnlyTaskByData(datas.NarratorWithId01, nil, 40099)
end

function Quest40099:OnSubStart4009902(arg1)
    print("OnSubStart4009902")
    this:CreateQuestNpc(arg1, npcs.Npc1019Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest40099:OnSubFinish4009902(arg1)
    print("OnSubFinish4009902")
    this:ClearNarratorTask()
end

function Quest40099:OnSubStart4009910(arg1)
    print("OnSubStart4009910")
    this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
end

function Quest40099:OnSubFinish4009910(arg1)
    print("OnSubFinish4009910")
end

function Quest40099:OnSubStart4009903(arg1)
    print("OnSubStart4009903")
    this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
end

function Quest40099:OnSubFinish4009903(arg1)
    print("OnSubFinish4009903")
    this:NpcDestroy(npcs.Npc1051Data.alias, 3)
    this:NpcDestroy(npcs.Npc1019Data.alias, 3)
end

function Quest40099:OnSubStart4009904(arg1)
    print("OnSubStart4009904")
    this:NpcCreateWithTriggerBlack(npcs.Npc1587Data.id, 4009904, 0)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest40099:OnSubFinish4009904(arg1)
    print("OnSubFinish4009904")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1587Data.alias)
end

function Quest40099:OnSubStart4009911(arg1)
    print("OnSubStart4009911")
    actorMgr:CreateActorWithPos("Q4009905Trigger", "Actor/Gadget/Q4009905Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4009905").pos, sceneData:GetDummyPoint(3, "Q4009905").rot, true, false, 3)
end

function Quest40099:OnSubFinish4009911(arg1)
    print("OnSubFinish4009911")
    this:ActorDestroy("Q4009905Trigger")
end

function Quest40099:OnSubStart4009909(arg1)
    print("OnSubStart4009909")
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest40099:OnSubFinish4009909(arg1)
    print("OnSubFinish4009909")
end

function Quest40099:OnSubStart4009905(arg1)
    print("OnSubStart4009905")
    this:NpcCreateWithTriggerBlack(npcs.Npc1019Data.id, 4009905, 0)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest40099:OnSubFinish4009905(arg1)
    print("OnSubFinish4009905")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1019Data.alias)
    this:ClearNarratorTask()
end

function Quest40099:OnSubStart4009906(arg1)
    print("OnSubStart4009906")
    this:NpcCreateWithTriggerBlack(npcs.Npc1019Data.id, 4009906, 1)
    actorMgr:CreateActorWithPos("Q4009906Trigger", "Actor/Gadget/Q4009906Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q4009906").pos, sceneData:GetDummyPoint(3, "Q4009906").rot, true, false, 3)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest40099:OnSubFinish4009906(arg1)
    print("OnSubFinish4009906")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1019Data.alias)
    this:NarratorOnlyTaskByData(datas.NarratorWithId04, nil, 40099)
    this:ActorDestroy("Q4009906Trigger")
end

function Quest40099:OnSubStart4009912(arg1)
    print("OnSubStart4009912")
end

function Quest40099:OnSubFinish4009912(arg1)
    print("OnSubFinish4009912")
end

function Quest40099:OnSubStart4009907(arg1)
    print("OnSubStart4009907")
    this:NpcCreateWithTriggerBlack(npcs.Npc1019Data.id, 4009907, 0)
    this:ActionSafeCall(function(arg1)
        this:NotifyTo(npcs.Npc1587Data.alias, 1, true)
    end)
end

function Quest40099:OnSubFinish4009907(arg1)
    print("OnSubFinish4009907")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1019Data.alias)
    this:LightNotifyTo(npcs.Npc1587Data.alias, 0, true)
end

function Quest40099:OnSubStart4009908(arg1)
    print("OnSubStart4009908")
end

function Quest40099:OnSubFinish4009908(arg1)
    print("OnSubFinish4009908")
end

return Quest40099
