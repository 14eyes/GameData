require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25022 = class("Quest25022", QuestActorProxy)
Quest25022.defaultAlias = "Quest25022"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest25022:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest25022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2502201"] = self.OnSubStart2502201,
        ["2502202"] = self.OnSubStart2502202,
        ["2502203"] = self.OnSubStart2502203,
        ["2502204"] = self.OnSubStart2502204,
        ["2502205"] = self.OnSubStart2502205
    }
end

function Quest25022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2502201"] = self.OnSubFinish2502201,
        ["2502202"] = self.OnSubFinish2502202,
        ["2502203"] = self.OnSubFinish2502203,
        ["2502204"] = self.OnSubFinish2502204,
        ["2502205"] = self.OnSubFinish2502205
    }
end

function Quest25022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25022:Start()
    print("Start")
end

function Quest25022:OnDestroy()
    print("OnDestroy")
end

function Quest25022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25022:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14267.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14268.alias, 3)
    this:ActorDestroy("Q2502203Trigger")
    this:DestroyNpcTrigger("Q2502201N14267Trigger")
end

function Quest25022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest25022:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest25022:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest25022:OnSubStart2502201(arg1)
    print("OnSubStart2502201")
    this:NpcCreateWithNpcTrigger(npcs.Npc14267.id, 0, 5, 2502201)
    this:CreateQuestNpc(arg1, npcs.Npc14268.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25022):DisableInteeHeadCtrl(true)
end

function Quest25022:OnSubFinish2502201(arg1)
    print("OnSubFinish2502201")
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25022):DisableInteeHeadCtrl(false)
end

function Quest25022:OnSubStart2502202(arg1)
    print("OnSubStart2502202")
    this:CreateQuestNpc(arg1, npcs.Npc14267.id, 0, false, 0)
end

function Quest25022:OnSubFinish2502202(arg1)
    print("OnSubFinish2502202")
end

function Quest25022:OnSubStart2502203(arg1)
    print("OnSubStart2502203")
    actorMgr:CreateActorWithPos("Q2502203Trigger", "Actor/Gadget/Q2502203Trigger", 70900002, 0, points._Q2502203TriggerPoint_.pos, points._Q2502203TriggerPoint_.rot, true, false, 3)
end

function Quest25022:OnSubFinish2502203(arg1)
    print("OnSubFinish2502203")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14267.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14268.alias)
end

function Quest25022:OnSubStart2502204(arg1)
    print("OnSubStart2502204")
    actorMgr:CreateActorWithPos("Q2502203Trigger", "Actor/Gadget/Q2502203Trigger", 70900002, 0, points._Q2502203TriggerPoint_.pos, points._Q2502203TriggerPoint_.rot, true, false, 3)
end

function Quest25022:OnSubFinish2502204(arg1)
    print("OnSubFinish2502204")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14267.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14268.alias)
end

function Quest25022:OnSubStart2502205(arg1)
    print("OnSubStart2502205")
    actorMgr:CreateActorWithPos("Q2502203Trigger", "Actor/Gadget/Q2502203Trigger", 70900002, 0, points._Q2502203TriggerPoint_.pos, points._Q2502203TriggerPoint_.rot, true, false, 3)
end

function Quest25022:OnSubFinish2502205(arg1)
    print("OnSubFinish2502205")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14267.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14268.alias)
end

return Quest25022
