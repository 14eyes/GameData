require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71125 = class("Quest71125", QuestActorProxy)
Quest71125.defaultAlias = "Quest71125"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest71125:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71125:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7112501"] = self.OnSubStart7112501}
end

function Quest71125:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7112501"] = self.OnSubFinish7112501}
end

function Quest71125:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7112501"] = self.OnSubFailed7112501}
end

function Quest71125:Start()
    print("Start")
end

function Quest71125:OnDestroy()
    print("OnDestroy")
end

function Quest71125:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71125:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71125:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30152.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30322.alias, 3)
    this:ActorDestroy("tigger7112501")
end

function Quest71125:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71125:OnSubStart7112501(arg1)
    print("OnSubStart7112501")
    this:CreateQuestNpc(arg1, npcs.Npc30152.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30322.id, 0)
    actorMgr:CreateActorWithPos("tigger7112501", "Actor/Gadget/tigger7112501", 70900002, 0, points.Point7112501.pos, points.Point7112501.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc30152.alias, 71125):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc30322.alias, 71125):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30152.alias, 71125):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc30322.alias, 71125):DisableInteeHeadCtrl(true)
end

function Quest71125:OnSubFinish7112501(arg1)
    print("OnSubFinish7112501")
    this:SafeDestroyQuestNpc(npcs.Npc30152.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30322.alias, 3)
end

function Quest71125:OnSubFailed7112501(arg1)
    print("OnSubFailed7112501")
end

return Quest71125
