require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75098 = class("Quest75098", QuestActorProxy)
Quest75098.defaultAlias = "Quest75098"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75098:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75098:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7509801"] = self.OnSubStart7509801,
        ["7509802"] = self.OnSubStart7509802,
        ["7509803"] = self.OnSubStart7509803,
        ["7509804"] = self.OnSubStart7509804
    }
end

function Quest75098:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7509801"] = self.OnSubFinish7509801,
        ["7509802"] = self.OnSubFinish7509802,
        ["7509803"] = self.OnSubFinish7509803,
        ["7509804"] = self.OnSubFinish7509804
    }
end

function Quest75098:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75098:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest75098:OnSubStart7509801(arg1)
    print("OnSubStart7509801")
    this:CreateQuestNpc(arg1, npcs.Npc21788.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21788.alias, 75098):DoFreeStyle(1050, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7509801Trigger", "Actor/Gadget/Q7509801Trigger", 70900002, 0, points._Q7509801TriggerPoint_.pos, points._Q7509801TriggerPoint_.rot, true, false, 3)
end

function Quest75098:OnSubFinish7509801(arg1)
    print("OnSubFinish7509801")
end

function Quest75098:OnSubStart7509802(arg1)
    print("OnSubStart7509802")
    this:CreateQuestNpc(arg1, npcs.Npc21788.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21788.alias, 75098):DoFreeStyle(1050, true, nil, true, true, false, false)
    this:CreateSpeechBubbleTask(21788, 750980301, 3, true, 1, 2, false, false)
end

function Quest75098:OnSubFinish7509802(arg1)
    print("OnSubFinish7509802")
    this:ClearSpeechBubbleTask()
    this:CreateSpeechBubbleTask(21788, 750980302, 3, true, 1, 2, false, false)
end

function Quest75098:OnSubStart7509803(arg1)
    print("OnSubStart7509803")
    this:CreateQuestNpc(arg1, npcs.Npc21788.id, 0, false, 0)
    this:CreateSpeechBubbleTask(21788, 750980302, 3, true, 1, 2, false, false)
end

function Quest75098:OnSubFinish7509803(arg1)
    print("OnSubFinish7509803")
    this:NpcDestroyWithDither(3, npcs.Npc21788.alias)
    this:ClearSpeechBubbleTask()
end

function Quest75098:OnSubStart7509804(arg1)
    print("OnSubStart7509804")
end

function Quest75098:OnSubFinish7509804(arg1)
    print("OnSubFinish7509804")
    this:SafeDestroyQuestNpc(npcs.Npc21788.alias, 3)
end

return Quest75098
