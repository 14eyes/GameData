require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71534 = class("Quest71534", QuestActorProxy)
Quest71534.defaultAlias = "Quest71534"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest71534:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest71534:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7153401"] = self.OnSubStart7153401,
        ["7153402"] = self.OnSubStart7153402,
        ["7153403"] = self.OnSubStart7153403,
        ["7153404"] = self.OnSubStart7153404
    }
end

function Quest71534:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7153401"] = self.OnSubFinish7153401,
        ["7153402"] = self.OnSubFinish7153402,
        ["7153403"] = self.OnSubFinish7153403,
        ["7153404"] = self.OnSubFinish7153404
    }
end

function Quest71534:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71534:Start()
    print("Start")
end

function Quest71534:OnDestroy()
    print("OnDestroy")
end

function Quest71534:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71534:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71534:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30680.alias, 3)
    this:ActorDestroy("Q71534trigger")
end

function Quest71534:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest71534:OnSubStart7153401(arg1)
    print("OnSubStart7153401")
end

function Quest71534:OnSubFinish7153401(arg1)
    print("OnSubFinish7153401")
end

function Quest71534:OnSubStart7153402(arg1)
    print("OnSubStart7153402")
    this:CreateQuestNpc(arg1, npcs.Npc30680.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc30680.alias, 71534):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30680.alias, 71534):DisableInteeHeadCtrl(true)
end

function Quest71534:OnSubFinish7153402(arg1)
    print("OnSubFinish7153402")
end

function Quest71534:OnSubStart7153403(arg1)
    print("OnSubStart7153403")
    this:GetQuestNpcActor(npcs.Npc30680.alias, 71534):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc30680.alias, 71534):DisableInteeHeadCtrl(false)
end

function Quest71534:OnSubFinish7153403(arg1)
    print("OnSubFinish7153403")
end

function Quest71534:OnSubStart7153404(arg1)
    print("OnSubStart7153404")
    this:GetQuestNpcActor(npcs.Npc30680.alias, 71534):DoFreeStyle(1120, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q71534trigger", "Actor/Gadget/Q71534trigger", 70900002, 0, points._Q71534triggerPoint_.pos, points._Q71534triggerPoint_.rot, true, false, 3)
end

function Quest71534:OnSubFinish7153404(arg1)
    print("OnSubFinish7153404")
    this:SafeDestroyQuestNpc(npcs.Npc30680.alias, 3)
end

return Quest71534
