require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24010 = class("Quest24010", QuestActorProxy)
Quest24010.defaultAlias = "Quest24010"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest24010:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest24010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401001"] = self.OnSubStart2401001,
        ["2401002"] = self.OnSubStart2401002,
        ["2401004"] = self.OnSubStart2401004,
        ["2401005"] = self.OnSubStart2401005,
        ["2401006"] = self.OnSubStart2401006,
        ["2401007"] = self.OnSubStart2401007
    }
end

function Quest24010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401001"] = self.OnSubFinish2401001,
        ["2401002"] = self.OnSubFinish2401002,
        ["2401004"] = self.OnSubFinish2401004,
        ["2401005"] = self.OnSubFinish2401005,
        ["2401006"] = self.OnSubFinish2401006,
        ["2401007"] = self.OnSubFinish2401007
    }
end

function Quest24010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["2401002"] = self.OnSubFailed2401002}
end

function Quest24010:Start()
    print("Start")
end

function Quest24010:OnDestroy()
    print("OnDestroy")
end

function Quest24010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24010:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5140Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5026Data.alias, 3)
end

function Quest24010:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24010:OnSubStart2401001(arg1)
    print("OnSubStart2401001")
    this:CreateQuestNpc(arg1, npcs.Npc5140Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc5140Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24010:OnSubFinish2401001(arg1)
    print("OnSubFinish2401001")
    this:GetQuestNpcActor(npcs.Npc5140Data.alias):DoFreeStyle(0, true, nil, true, true, false, false)
end

function Quest24010:OnSubStart2401002(arg1)
    print("OnSubStart2401002")
    this:CreateQuestNpc(arg1, npcs.Npc5026Data.id, 1)
end

function Quest24010:OnSubFinish2401002(arg1)
    print("OnSubFinish2401002")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5026Data.alias)
end

function Quest24010:OnSubFailed2401002(arg1)
    print("OnSubFailed2401002")
    this:DestroyQuestNpcActor(npcs.Npc5026Data.alias, 3)
end

function Quest24010:OnSubStart2401004(arg1)
    print("OnSubStart2401004")
end

function Quest24010:OnSubFinish2401004(arg1)
    print("OnSubFinish2401004")
end

function Quest24010:OnSubStart2401005(arg1)
    print("OnSubStart2401005")
end

function Quest24010:OnSubFinish2401005(arg1)
    print("OnSubFinish2401005")
    this:ShowBlackScreen(0.1, 1, 0.5, function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5140Data.alias, 3)
    end, nil, nil, "")
end

function Quest24010:OnSubStart2401006(arg1)
    print("OnSubStart2401006")
end

function Quest24010:OnSubFinish2401006(arg1)
    print("OnSubFinish2401006")
end

function Quest24010:OnSubStart2401007(arg1)
    print("OnSubStart2401007")
end

function Quest24010:OnSubFinish2401007(arg1)
    print("OnSubFinish2401007")
end

return Quest24010
