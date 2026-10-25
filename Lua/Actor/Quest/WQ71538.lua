require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71538 = class("Quest71538", QuestActorProxy)
Quest71538.defaultAlias = "Quest71538"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest71538:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71538:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7153801"] = self.OnSubStart7153801,
        ["7153802"] = self.OnSubStart7153802,
        ["7153803"] = self.OnSubStart7153803,
        ["7153804"] = self.OnSubStart7153804
    }
end

function Quest71538:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7153801"] = self.OnSubFinish7153801,
        ["7153802"] = self.OnSubFinish7153802,
        ["7153803"] = self.OnSubFinish7153803,
        ["7153804"] = self.OnSubFinish7153804
    }
end

function Quest71538:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71538:Start()
    print("Start")
end

function Quest71538:OnDestroy()
    print("OnDestroy")
end

function Quest71538:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71538:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71538:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30684.alias, 3)
    this:ActorDestroy("Q71538trigger")
end

function Quest71538:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest71538:OnSubStart7153801(arg1)
    print("OnSubStart7153801")
end

function Quest71538:OnSubFinish7153801(arg1)
    print("OnSubFinish7153801")
end

function Quest71538:OnSubStart7153802(arg1)
    print("OnSubStart7153802")
    this:CreateQuestNpc(arg1, npcs.Npc30684.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30684.alias, 71538):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest71538:OnSubFinish7153802(arg1)
    print("OnSubFinish7153802")
end

function Quest71538:OnSubStart7153803(arg1)
    print("OnSubStart7153803")
    this:GetQuestNpcActor(npcs.Npc30684.alias, 71538):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30684.alias, 71538):DisableInteeHeadCtrl(false)
end

function Quest71538:OnSubFinish7153803(arg1)
    print("OnSubFinish7153803")
end

function Quest71538:OnSubStart7153804(arg1)
    print("OnSubStart7153804")
    this:GetQuestNpcActor(npcs.Npc30684.alias, 71538):DoFreeStyle(1230, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q71538trigger", "Actor/Gadget/Q71538trigger", 70900002, 0, points._Q71538triggerPoint_.pos, points._Q71538triggerPoint_.rot, true, false, 3)
end

function Quest71538:OnSubFinish7153804(arg1)
    print("OnSubFinish7153804")
    this:SafeDestroyQuestNpc(npcs.Npc30684.alias, 3)
end

return Quest71538
