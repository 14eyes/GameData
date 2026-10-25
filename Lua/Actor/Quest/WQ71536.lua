require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71536 = class("Quest71536", QuestActorProxy)
Quest71536.defaultAlias = "Quest71536"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest71536:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71536:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7153601"] = self.OnSubStart7153601,
        ["7153602"] = self.OnSubStart7153602,
        ["7153603"] = self.OnSubStart7153603,
        ["7153604"] = self.OnSubStart7153604
    }
end

function Quest71536:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7153601"] = self.OnSubFinish7153601,
        ["7153602"] = self.OnSubFinish7153602,
        ["7153603"] = self.OnSubFinish7153603,
        ["7153604"] = self.OnSubFinish7153604
    }
end

function Quest71536:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71536:Start()
    print("Start")
end

function Quest71536:OnDestroy()
    print("OnDestroy")
end

function Quest71536:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71536:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71536:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30682.alias, 3)
    this:ActorDestroy("Q71536trigger")
end

function Quest71536:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest71536:OnSubStart7153601(arg1)
    print("OnSubStart7153601")
end

function Quest71536:OnSubFinish7153601(arg1)
    print("OnSubFinish7153601")
end

function Quest71536:OnSubStart7153602(arg1)
    print("OnSubStart7153602")
    this:CreateQuestNpc(arg1, npcs.Npc30682.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30682.alias, 71536):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30682.alias, 71536):DisableInteeHeadCtrl(true)
end

function Quest71536:OnSubFinish7153602(arg1)
    print("OnSubFinish7153602")
end

function Quest71536:OnSubStart7153603(arg1)
    print("OnSubStart7153603")
    this:GetQuestNpcActor(npcs.Npc30682.alias, 71536):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30682.alias, 71536):DisableInteeHeadCtrl(false)
end

function Quest71536:OnSubFinish7153603(arg1)
    print("OnSubFinish7153603")
end

function Quest71536:OnSubStart7153604(arg1)
    print("OnSubStart7153604")
    this:GetQuestNpcActor(npcs.Npc30682.alias, 71536):DoFreeStyle(1230, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q71536trigger", "Actor/Gadget/Q71536trigger", 70900002, 0, points._Q71536triggerPoint_.pos, points._Q71536triggerPoint_.rot, true, false, 3)
end

function Quest71536:OnSubFinish7153604(arg1)
    print("OnSubFinish7153604")
    this:SafeDestroyQuestNpc(npcs.Npc30682.alias, 3)
end

return Quest71536
