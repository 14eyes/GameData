require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73297 = class("Quest73297", QuestActorProxy)
Quest73297.defaultAlias = "Quest73297"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73297:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73297:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7329701"] = self.OnSubStart7329701,
        ["7329702"] = self.OnSubStart7329702,
        ["7329703"] = self.OnSubStart7329703
    }
end

function Quest73297:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7329701"] = self.OnSubFinish7329701,
        ["7329702"] = self.OnSubFinish7329702,
        ["7329703"] = self.OnSubFinish7329703
    }
end

function Quest73297:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73297:Start()
    print("Start")
end

function Quest73297:OnDestroy()
    print("OnDestroy")
end

function Quest73297:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73297:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73297:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73297:OnSubStart7329701(arg1)
    print("OnSubStart7329701")
    this:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73297:OnSubFinish7329701(arg1)
    print("OnSubFinish7329701")
    this:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73297:OnSubStart7329702(arg1)
    print("OnSubStart7329702")
    this:CreateQuestNpc(arg1, npcs.Npc20994Data.id, 1)
end

function Quest73297:OnSubFinish7329702(arg1)
    print("OnSubFinish7329702")
    this:SafeDestroyQuestNpc(npcs.Npc20994Data.alias, 3)
end

function Quest73297:OnSubStart7329703(arg1)
    print("OnSubStart7329703")
    this:CreateQuestNpc(arg1, npcs.Npc20993Data.id, 1)
end

function Quest73297:OnSubFinish7329703(arg1)
    print("OnSubFinish7329703")
    this:SafeDestroyQuestNpc(npcs.Npc20993Data.alias, 3)
end

return Quest73297
