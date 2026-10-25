require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71533 = class("Quest71533", QuestActorProxy)
Quest71533.defaultAlias = "Quest71533"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest71533:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71533:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7153301"] = self.OnSubStart7153301,
        ["7153302"] = self.OnSubStart7153302,
        ["7153303"] = self.OnSubStart7153303
    }
end

function Quest71533:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7153301"] = self.OnSubFinish7153301,
        ["7153302"] = self.OnSubFinish7153302,
        ["7153303"] = self.OnSubFinish7153303
    }
end

function Quest71533:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71533:Start()
    print("Start")
end

function Quest71533:OnDestroy()
    print("OnDestroy")
end

function Quest71533:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71533:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71533:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30679.alias, 3)
    this:ActorDestroy("Q71533trigger")
end

function Quest71533:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest71533:OnSubStart7153301(arg1)
    print("OnSubStart7153301")
    this:CreateQuestNpc(arg1, npcs.Npc30679.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30679.alias, 71533):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30679.alias, 71533):DisableInteeHeadCtrl(true)
end

function Quest71533:OnSubFinish7153301(arg1)
    print("OnSubFinish7153301")
end

function Quest71533:OnSubStart7153302(arg1)
    print("OnSubStart7153302")
    this:GetQuestNpcActor(npcs.Npc30679.alias, 71533):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30679.alias, 71533):DisableInteeHeadCtrl(false)
end

function Quest71533:OnSubFinish7153302(arg1)
    print("OnSubFinish7153302")
end

function Quest71533:OnSubStart7153303(arg1)
    print("OnSubStart7153303")
    this:GetQuestNpcActor(npcs.Npc30679.alias, 71533):DoFreeStyle(1230, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q71533trigger", "Actor/Gadget/Q71533trigger", 70900002, 0, points._Q71533triggerPoint_.pos, points._Q71533triggerPoint_.rot, true, false, 3)
end

function Quest71533:OnSubFinish7153303(arg1)
    print("OnSubFinish7153303")
    this:SafeDestroyQuestNpc(npcs.Npc30679.alias, 3)
end

return Quest71533
