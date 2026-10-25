require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest25021 = class("Quest25021", QuestActorProxy)
Quest25021.defaultAlias = "Quest25021"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest25021:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest25021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2502101"] = self.OnSubStart2502101,
        ["2502102"] = self.OnSubStart2502102,
        ["2502103"] = self.OnSubStart2502103
    }
end

function Quest25021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2502101"] = self.OnSubFinish2502101,
        ["2502102"] = self.OnSubFinish2502102,
        ["2502103"] = self.OnSubFinish2502103
    }
end

function Quest25021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest25021:Start()
    print("Start")
end

function Quest25021:OnDestroy()
    print("OnDestroy")
end

function Quest25021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest25021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest25021:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc14267.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc14268.alias, 3)
end

function Quest25021:OnSubStart2502101(arg1)
    print("OnSubStart2502101")
    this:CreateQuestNpc(arg1, npcs.Npc14267.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25021):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14268.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25021):DisableInteeHeadCtrl(true)
end

function Quest25021:OnSubFinish2502101(arg1)
    print("OnSubFinish2502101")
end

function Quest25021:OnSubStart2502102(arg1)
    print("OnSubStart2502102")
    this:CreateQuestNpc(arg1, npcs.Npc14267.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14268.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14267.alias, 25021):DisableInteeHeadCtrl(false)
end

function Quest25021:OnSubFinish2502102(arg1)
    print("OnSubFinish2502102")
    this:ShowBlackScreenWithDialogText(0.5, 1.5, 0.5, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc14267.alias, 3)
        this:SafeDestroyQuestNpc(npcs.Npc14268.alias, 3)
    end, nil, nil, 0, false, true)
end

function Quest25021:OnSubStart2502103(arg1)
    print("OnSubStart2502103")
end

function Quest25021:OnSubFinish2502103(arg1)
    print("OnSubFinish2502103")
end

return Quest25021
