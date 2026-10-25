require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25026 = class("Quest25026", QuestActorProxy)
Quest25026.defaultAlias = "Quest25026"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest25026:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest25026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2502601"] = self.OnSubStart2502601,
        ["2502606"] = self.OnSubStart2502606,
        ["2502607"] = self.OnSubStart2502607,
        ["2502602"] = self.OnSubStart2502602,
        ["2502603"] = self.OnSubStart2502603,
        ["2502604"] = self.OnSubStart2502604,
        ["2502605"] = self.OnSubStart2502605
    }
end

function Quest25026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2502601"] = self.OnSubFinish2502601,
        ["2502606"] = self.OnSubFinish2502606,
        ["2502607"] = self.OnSubFinish2502607,
        ["2502602"] = self.OnSubFinish2502602,
        ["2502603"] = self.OnSubFinish2502603,
        ["2502604"] = self.OnSubFinish2502604,
        ["2502605"] = self.OnSubFinish2502605
    }
end

function Quest25026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25026:Start()
    print("Start")
end

function Quest25026:OnDestroy()
    print("OnDestroy")
end

function Quest25026:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25026:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc14294.alias, 3)
    this:ActorDestroy("tigger2502604")
    this:DestroyNpcTrigger("Q2502605N14294Trigger")
end

function Quest25026:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest25026:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest25026:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest25026:OnSubStart2502601(arg1)
    print("OnSubStart2502601")
    this:CreateQuestNpc(arg1, npcs.Npc14294.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14294.alias, 25026):DoFreeStyle(1050, true, nil, true, true, false, false)
end

function Quest25026:OnSubFinish2502601(arg1)
    print("OnSubFinish2502601")
end

function Quest25026:OnSubStart2502606(arg1)
    print("OnSubStart2502606")
end

function Quest25026:OnSubFinish2502606(arg1)
    print("OnSubFinish2502606")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14294.alias)
end

function Quest25026:OnSubStart2502607(arg1)
    print("OnSubStart2502607")
end

function Quest25026:OnSubFinish2502607(arg1)
    print("OnSubFinish2502607")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14294.alias)
end

function Quest25026:OnSubStart2502602(arg1)
    print("OnSubStart2502602")
end

function Quest25026:OnSubFinish2502602(arg1)
    print("OnSubFinish2502602")
    this:QuestNarratorTask(datas.NarratorWithId2502602, nil)
end

function Quest25026:OnSubStart2502603(arg1)
    print("OnSubStart2502603")
    this:CreateQuestNpc(arg1, npcs.Npc14294.id, 0, false, 0)
end

function Quest25026:OnSubFinish2502603(arg1)
    print("OnSubFinish2502603")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc14294.alias)
    this:ClearNarratorTask()
end

function Quest25026:OnSubStart2502604(arg1)
    print("OnSubStart2502604")
    actorMgr:CreateActorWithPos("tigger2502604", "Actor/Gadget/tigger2502604", 70900002, 0, points._tigger2502604Point_.pos, points._tigger2502604Point_.rot, true, false, 3)
end

function Quest25026:OnSubFinish2502604(arg1)
    print("OnSubFinish2502604")
    this:ClearNarratorTask()
    this:ActorDestroy("tigger2502604")
end

function Quest25026:OnSubStart2502605(arg1)
    print("OnSubStart2502605")
    this:NpcCreateWithNpcTriggerAndBlackscreen(2502605, 0, 30, 2, npcs.Npc14294.id)
end

function Quest25026:OnSubFinish2502605(arg1)
    print("OnSubFinish2502605")
    this:SafeDestroyQuestNpc(npcs.Npc14294.alias, 3)
end

return Quest25026
