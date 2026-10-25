require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21037 = class("Quest21037", QuestActorProxy)
Quest21037.defaultAlias = "Quest21037"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest21037:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest21037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2103701"] = self.OnSubStart2103701,
        ["2103703"] = self.OnSubStart2103703,
        ["2103704"] = self.OnSubStart2103704,
        ["2103705"] = self.OnSubStart2103705
    }
end

function Quest21037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2103701"] = self.OnSubFinish2103701,
        ["2103703"] = self.OnSubFinish2103703,
        ["2103704"] = self.OnSubFinish2103704,
        ["2103705"] = self.OnSubFinish2103705
    }
end

function Quest21037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21037:Start()
    print("Start")
end

function Quest21037:OnDestroy()
    print("OnDestroy")
end

function Quest21037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest21037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21037:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2400Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2418Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2079Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2040Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2040Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q21037Trigger", 3, false)
end

function Quest21037:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21037:OnSubStart2103701(arg1)
    print("OnSubStart2103701")
    this:CreateQuestNpc(arg1, npcs.Npc2400Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc2400Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest21037:OnSubFinish2103701(arg1)
    print("OnSubFinish2103701")
end

function Quest21037:OnSubStart2103703(arg1)
    print("OnSubStart2103703")
    this:CreateQuestNpc(arg1, npcs.Npc2418Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc2079Data.id, 2)
    actorMgr:CreateActorWithPos("Q21037Trigger", "Actor/Gadget/Q21037Trigger", 70900002, 0, {x = -736.442, y = 300.005, z = 570.176}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:NotifyTo(npcs.Npc2040Data.alias, 1, true)
end

function Quest21037:OnSubFinish2103703(arg1)
    print("OnSubFinish2103703")
end

function Quest21037:OnSubStart2103704(arg1)
    print("OnSubStart2103704")
    this:NotifyTo(npcs.Npc2040Data.alias, 1, true)
end

function Quest21037:OnSubFinish2103704(arg1)
    print("OnSubFinish2103704")
end

function Quest21037:OnSubStart2103705(arg1)
    print("OnSubStart2103705")
    this:NotifyTo(npcs.Npc2040Data.alias, 1, true)
end

function Quest21037:OnSubFinish2103705(arg1)
    print("OnSubFinish2103705")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2400Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc2418Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2079Data.alias, 3)
    this:LightNotifyTo(npcs.Npc2040Data.alias, 0, true)
end

return Quest21037
