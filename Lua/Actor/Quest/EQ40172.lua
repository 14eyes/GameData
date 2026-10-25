require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40172 = class("Quest40172", QuestActorProxy)
Quest40172.defaultAlias = "Quest40172"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest40172:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40172:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4017201"] = self.OnSubStart4017201,
        ["4017202"] = self.OnSubStart4017202,
        ["4017205"] = self.OnSubStart4017205,
        ["4017203"] = self.OnSubStart4017203,
        ["4017204"] = self.OnSubStart4017204
    }
end

function Quest40172:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4017201"] = self.OnSubFinish4017201,
        ["4017202"] = self.OnSubFinish4017202,
        ["4017205"] = self.OnSubFinish4017205,
        ["4017203"] = self.OnSubFinish4017203,
        ["4017204"] = self.OnSubFinish4017204
    }
end

function Quest40172:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40172:Start()
    print("Start")
end

function Quest40172:OnDestroy()
    print("OnDestroy")
end

function Quest40172:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40172:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40172:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q40172Trigger1")
    this:ActorDestroy("Q40172Trigger2")
    this:SafeDestroyQuestNpc(npcs.Npc1096.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1094.alias, 3)
    this:RemoveLocalGadget(74011001, "1")
    this:RemoveLocalGadget(74011002, "1")
end

function Quest40172:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40172:OnSubStart4017201(arg1)
    print("OnSubStart4017201")
end

function Quest40172:OnSubFinish4017201(arg1)
    print("OnSubFinish4017201")
end

function Quest40172:OnSubStart4017202(arg1)
    print("OnSubStart4017202")
    this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1094.alias, 40172):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest40172:OnSubFinish4017202(arg1)
    print("OnSubFinish4017202")
end

function Quest40172:OnSubStart4017205(arg1)
    print("OnSubStart4017205")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q40172Trigger2", "Actor/Gadget/Q40172Trigger2", 70900002, 0, points._Q40172Trigger2Point_.pos, points._Q40172Trigger2Point_.rot, true, false, 3)
        this:CreateLocalGadget(74011002, "1", {x = -1885.341, y = 55.39, z = 9646.788}, {x = 0, y = 349.529, z = 0}, 3, nil, nil, false, 0, true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40172):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40172):DoFreeStyle(1120, true, nil, true, true, false, true)
    end)
end

function Quest40172:OnSubFinish4017205(arg1)
    print("OnSubFinish4017205")
end

function Quest40172:OnSubStart4017203(arg1)
    print("OnSubStart4017203")
    this:ActionSafeCall(function(arg1)
        this:CreateLocalGadget(74011002, "1", {x = -1885.341, y = 55.39, z = 9646.788}, {x = 0, y = 349.529, z = 0}, 3, nil, nil, false, 0, true)
        this:GetQuestNpcActor(npcs.Npc1094.alias, 40172):DoFreeStyle(1220, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1096.alias, 40172):DoFreeStyle(1120, true, nil, true, true, false, true)
    end)
end

function Quest40172:OnSubFinish4017203(arg1)
    print("OnSubFinish4017203")
end

function Quest40172:OnSubStart4017204(arg1)
    print("OnSubStart4017204")
    actorMgr:CreateActorWithPos("Q40172Trigger1", "Actor/Gadget/Q40172Trigger1", 70900002, 0, points._Q40172Trigger1Point_.pos, points._Q40172Trigger1Point_.rot, true, false, 3)
    this:CreateLocalGadget(74011001, "1", {x = -1885.057, y = 55.368, z = 9646.275}, {x = 0, y = 49.385, z = 0}, 3, nil, nil, false, 0, true)
    this:CreateLocalGadget(74011002, "1", {x = -1885.341, y = 55.39, z = 9646.788}, {x = 0, y = 349.529, z = 0}, 3, nil, nil, false, 0, true)
end

function Quest40172:OnSubFinish4017204(arg1)
    print("OnSubFinish4017204")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1096.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
        this:RemoveLocalGadget(74011001, "1")
        this:RemoveLocalGadget(74011002, "1")
    end)
end

return Quest40172
