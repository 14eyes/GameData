require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70537 = class("Quest70537", QuestActorProxy)
Quest70537.defaultAlias = "Quest70537"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest70537:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70537:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7053701"] = self.OnSubStart7053701}
end

function Quest70537:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7053701"] = self.OnSubFinish7053701}
end

function Quest70537:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7053701"] = self.OnSubFailed7053701}
end

function Quest70537:Start()
    print("Start")
end

function Quest70537:OnDestroy()
    print("OnDestroy")
end

function Quest70537:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70537:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70537:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30415Data.alias, 3)
    this:RemoveLocalGadget(71700493, "7053701")
end

function Quest70537:OnSubStart7053701(arg1)
    print("OnSubStart7053701")
    this:CreateQuestNpc(arg1, npcs.Npc30415Data.id, 0)
    this:CreateLocalGadget(71700493, "7053701", {x = 2342.881, y = 203.046, z = -962.172}, {x = 2.134, y = 213.531, z = 15.735}, 3, nil, nil, false)
end

function Quest70537:OnSubFinish7053701(arg1)
    print("OnSubFinish7053701")
    this:SafeDestroyQuestNpc(npcs.Npc30415Data.alias, 3)
    this:RemoveLocalGadget(71700493, "7053701")
end

function Quest70537:OnSubFailed7053701(arg1)
    print("OnSubFailed7053701")
    this:SafeDestroyQuestNpc(npcs.Npc30415Data.alias, 3)
    this:RemoveLocalGadget(71700493, "7053701")
end

return Quest70537
