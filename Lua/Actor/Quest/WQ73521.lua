require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73521 = class("Quest73521", QuestActorProxy)
Quest73521.defaultAlias = "Quest73521"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest73521:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73521:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7352101"] = self.OnSubStart7352101,
        ["7352102"] = self.OnSubStart7352102,
        ["7352103"] = self.OnSubStart7352103,
        ["7352104"] = self.OnSubStart7352104,
        ["7352105"] = self.OnSubStart7352105
    }
end

function Quest73521:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7352101"] = self.OnSubFinish7352101,
        ["7352102"] = self.OnSubFinish7352102,
        ["7352103"] = self.OnSubFinish7352103,
        ["7352104"] = self.OnSubFinish7352104,
        ["7352105"] = self.OnSubFinish7352105
    }
end

function Quest73521:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73521:Start()
    print("Start")
end

function Quest73521:OnDestroy()
    print("OnDestroy")
end

function Quest73521:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73521:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73521:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30354Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30355Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13152Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13225Data.alias, 3)
end

function Quest73521:OnSubStart7352101(arg1)
    print("OnSubStart7352101")
    this:CreateQuestNpc(arg1, npcs.Npc1055Data.id, 1)
end

function Quest73521:OnSubFinish7352101(arg1)
    print("OnSubFinish7352101")
end

function Quest73521:OnSubStart7352102(arg1)
    print("OnSubStart7352102")
    this:CreateQuestNpc(arg1, npcs.Npc30354Data.id, 1)
end

function Quest73521:OnSubFinish7352102(arg1)
    print("OnSubFinish7352102")
    this:SafeDestroyQuestNpc(npcs.Npc1055Data.alias, 3)
end

function Quest73521:OnSubStart7352103(arg1)
    print("OnSubStart7352103")
    this:CreateQuestNpc(arg1, npcs.Npc30355Data.id, 1)
end

function Quest73521:OnSubFinish7352103(arg1)
    print("OnSubFinish7352103")
end

function Quest73521:OnSubStart7352104(arg1)
    print("OnSubStart7352104")
    this:CreateQuestNpc(arg1, npcs.Npc13152Data.id, 1)
end

function Quest73521:OnSubFinish7352104(arg1)
    print("OnSubFinish7352104")
    this:SafeDestroyQuestNpc(npcs.Npc30354Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc30355Data.alias, 3)
end

function Quest73521:OnSubStart7352105(arg1)
    print("OnSubStart7352105")
    this:CreateQuestNpc(arg1, npcs.Npc13225Data.id, 1)
end

function Quest73521:OnSubFinish7352105(arg1)
    print("OnSubFinish7352105")
    this:SafeDestroyQuestNpc(npcs.Npc13152Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13225Data.alias, 3)
end

return Quest73521
