require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73678 = class("Quest73678", QuestActorProxy)
Quest73678.defaultAlias = "Quest73678"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73678:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73678:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7367801"] = self.OnSubStart7367801, ["7367802"] = self.OnSubStart7367802}
end

function Quest73678:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7367801"] = self.OnSubFinish7367801, ["7367802"] = self.OnSubFinish7367802}
end

function Quest73678:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73678:Start()
    print("Start")
end

function Quest73678:OnDestroy()
    print("OnDestroy")
end

function Quest73678:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73678:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73678:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30246Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30247Data.alias, 3)
end

function Quest73678:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73678:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest73678:OnSubStart7367801(arg1)
    print("OnSubStart7367801")
    self:NpcCreate(arg1, npcs.Npc30246Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc30246Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    self:NpcCreate(arg1, npcs.Npc30247Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc30247Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    self:CallDelay(0.5, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc30246Data.alias):DisableInteeHeadCtrl(true)
        arg1:GetQuestNpcActor(npcs.Npc30247Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest73678:OnSubFinish7367801(arg1)
    print("OnSubFinish7367801")
    self:NpcDestroy(npcs.Npc30246Data.alias, 3)
    self:NpcDestroy(npcs.Npc30247Data.alias, 3)
    self:GetQuestNpcActor(npcs.Npc30246Data.alias):DisableInteeHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc30247Data.alias):DisableInteeHeadCtrl(false)
end

function Quest73678:OnSubStart7367802(arg1)
    print("OnSubStart7367802")
end

function Quest73678:OnSubFinish7367802(arg1)
    print("OnSubFinish7367802")
end

return Quest73678
