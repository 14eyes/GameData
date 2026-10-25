require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71118 = class("Quest71118", QuestActorProxy)
Quest71118.defaultAlias = "Quest71118"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest71118:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest71118:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7111801"] = self.OnSubStart7111801}
end

function Quest71118:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7111801"] = self.OnSubFinish7111801}
end

function Quest71118:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7111801"] = self.OnSubFailed7111801}
end

function Quest71118:Start()
    print("Start")
end

function Quest71118:OnDestroy()
    print("OnDestroy")
end

function Quest71118:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71118:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71118:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc13489.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13490.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13491.alias, 3)
end

function Quest71118:OnSubStart7111801(arg1)
    print("OnSubStart7111801")
    this:CreateQuestNpc(arg1, npcs.Npc13489.id, 0)
    this:GetQuestNpcActor(npcs.Npc13489.alias, 71118):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13490.id, 0)
    this:GetQuestNpcActor(npcs.Npc13490.alias, 71118):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc13491.id, 0)
    this:GetQuestNpcActor(npcs.Npc13491.alias, 71118):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc13489.alias, 71118):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13490.alias, 71118):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13491.alias, 71118):DisableInteeHeadCtrl(true)
end

function Quest71118:OnSubFinish7111801(arg1)
    print("OnSubFinish7111801")
    this:SafeDestroyQuestNpc(npcs.Npc13489.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13490.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13491.alias, 3)
end

function Quest71118:OnSubFailed7111801(arg1)
    print("OnSubFailed7111801")
end

return Quest71118
