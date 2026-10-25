require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70684 = class("Quest70684", QuestActorProxy)
Quest70684.defaultAlias = "Quest70684"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest70684:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest70684:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7068401"] = self.OnSubStart7068401}
end

function Quest70684:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7068401"] = self.OnSubFinish7068401}
end

function Quest70684:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70684:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest70684:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest70684:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest70684:OnSubStart7068401(arg1)
    print("OnSubStart7068401")
    this:NpcCreateWithNpcTrigger(npcs.Npc1645.id, 0, 15, 7068401)
    this:CreateQuestNpc(arg1, npcs.Npc14966.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15084.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15083.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15083.alias, 70684):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15080.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15080.alias, 70684):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7068401Trigger", "Actor/Gadget/Q7068401Trigger", 70900002, 0, points._Q7068401TriggerPoint_.pos, points._Q7068401TriggerPoint_.rot, true, false, 3)
end

function Quest70684:OnSubFinish7068401(arg1)
    print("OnSubFinish7068401")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc1645.alias)
    this:SafeDestroyQuestNpc(npcs.Npc14966.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15084.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15083.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15080.alias, 3)
    this:ActorDestroy("Q7068401Trigger")
    this:ClearNarratorTask()
end

return Quest70684
