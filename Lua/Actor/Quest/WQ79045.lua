require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79045 = class("Quest79045", QuestActorProxy)
Quest79045.defaultAlias = "Quest79045"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest79045:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest79045:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7904501"] = self.OnSubStart7904501,
        ["7904502"] = self.OnSubStart7904502,
        ["7904503"] = self.OnSubStart7904503,
        ["7904504"] = self.OnSubStart7904504,
        ["7904505"] = self.OnSubStart7904505,
        ["7904506"] = self.OnSubStart7904506,
        ["7904507"] = self.OnSubStart7904507,
        ["7904508"] = self.OnSubStart7904508,
        ["7904509"] = self.OnSubStart7904509,
        ["7904511"] = self.OnSubStart7904511,
        ["7904510"] = self.OnSubStart7904510
    }
end

function Quest79045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7904501"] = self.OnSubFinish7904501,
        ["7904502"] = self.OnSubFinish7904502,
        ["7904503"] = self.OnSubFinish7904503,
        ["7904504"] = self.OnSubFinish7904504,
        ["7904505"] = self.OnSubFinish7904505,
        ["7904506"] = self.OnSubFinish7904506,
        ["7904507"] = self.OnSubFinish7904507,
        ["7904508"] = self.OnSubFinish7904508,
        ["7904509"] = self.OnSubFinish7904509,
        ["7904511"] = self.OnSubFinish7904511,
        ["7904510"] = self.OnSubFinish7904510
    }
end

function Quest79045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79045:Start()
    print("Start")
end

function Quest79045:OnDestroy()
    print("OnDestroy")
end

function Quest79045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79045:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79045:OnSubStart7904501(arg1)
    print("OnSubStart7904501")
    this:CreateQuestNpcWithTriggerBlack("79045Trigger1", 7904501, npcs.Npc20976Data.id, 0, 8, 1)
end

function Quest79045:OnSubFinish7904501(arg1)
    print("OnSubFinish7904501")
end

function Quest79045:OnSubStart7904502(arg1)
    print("OnSubStart7904502")
end

function Quest79045:OnSubFinish7904502(arg1)
    print("OnSubFinish7904502")
end

function Quest79045:OnSubStart7904503(arg1)
    print("OnSubStart7904503")
end

function Quest79045:OnSubFinish7904503(arg1)
    print("OnSubFinish7904503")
end

function Quest79045:OnSubStart7904504(arg1)
    print("OnSubStart7904504")
end

function Quest79045:OnSubFinish7904504(arg1)
    print("OnSubFinish7904504")
end

function Quest79045:OnSubStart7904505(arg1)
    print("OnSubStart7904505")
end

function Quest79045:OnSubFinish7904505(arg1)
    print("OnSubFinish7904505")
end

function Quest79045:OnSubStart7904506(arg1)
    print("OnSubStart7904506")
end

function Quest79045:OnSubFinish7904506(arg1)
    print("OnSubFinish7904506")
end

function Quest79045:OnSubStart7904507(arg1)
    print("OnSubStart7904507")
end

function Quest79045:OnSubFinish7904507(arg1)
    print("OnSubFinish7904507")
    this:SafeDestroyQuestNpc(npcs.Npc20976Data.alias, 10)
end

function Quest79045:OnSubStart7904508(arg1)
    print("OnSubStart7904508")
    this:CreateQuestNpcWithTriggerBlack("79045Trigger", 7904508, npcs.Npc20976Data.id, 0, 10, 1)
end

function Quest79045:OnSubFinish7904508(arg1)
    print("OnSubFinish7904508")
end

function Quest79045:OnSubStart7904509(arg1)
    print("OnSubStart7904509")
end

function Quest79045:OnSubFinish7904509(arg1)
    print("OnSubFinish7904509")
    this:SafeDestroyQuestNpc(npcs.Npc20976Data.alias, 10)
end

function Quest79045:OnSubStart7904511(arg1)
    print("OnSubStart7904511")
    this:CreateQuestNpcWithTriggerBlack("Q79045Trigger2", 7904511, npcs.Npc20976Data.id, 0, 10, 1)
end

function Quest79045:OnSubFinish7904511(arg1)
    print("OnSubFinish7904511")
    this:SafeDestroyQuestNpc(npcs.Npc20976Data.alias, 10)
end

function Quest79045:OnSubStart7904510(arg1)
    print("OnSubStart7904510")
end

function Quest79045:OnSubFinish7904510(arg1)
    print("OnSubFinish7904510")
end

return Quest79045
