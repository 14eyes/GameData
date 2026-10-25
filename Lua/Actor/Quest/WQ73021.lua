require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73021 = class("Quest73021", QuestActorProxy)
Quest73021.defaultAlias = "Quest73021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7302101"] = self.OnSubStart7302101,
        ["7302102"] = self.OnSubStart7302102,
        ["7302104"] = self.OnSubStart7302104,
        ["7302105"] = self.OnSubStart7302105,
        ["7302103"] = self.OnSubStart7302103
    }
end

function Quest73021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7302101"] = self.OnSubFinish7302101,
        ["7302102"] = self.OnSubFinish7302102,
        ["7302104"] = self.OnSubFinish7302104,
        ["7302105"] = self.OnSubFinish7302105,
        ["7302103"] = self.OnSubFinish7302103
    }
end

function Quest73021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73021:Start()
    print("Start")
end

function Quest73021:OnDestroy()
    print("OnDestroy")
end

function Quest73021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73021:OnSubStart7302101(arg1)
    print("OnSubStart7302101")
    self:CreateQuestNpc(arg1, npcs.Npc20726Data.id, 1)
    actorMgr:CreateActorWithPos("Q73021Trigger_7302101", "Actor/Gadget/Q73021Trigger_7302101", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302102_guide").pos, sceneData:GetDummyPoint(3, "Q7302102_guide").rot, true, false, 3)
end

function Quest73021:OnSubFinish7302101(arg1)
    print("OnSubFinish7302101")
end

function Quest73021:OnSubStart7302102(arg1)
    print("OnSubStart7302102")
end

function Quest73021:OnSubFinish7302102(arg1)
    print("OnSubFinish7302102")
    self:SafeDestroyQuestNpc(npcs.Npc20726Data.alias, 3)
end

function Quest73021:OnSubStart7302104(arg1)
    print("OnSubStart7302104")
    actorMgr:CreateActorWithPos("Q73021Trigger_7302104", "Actor/Gadget/Q73021Trigger_7302104", 70900002, 0, sceneData:GetDummyPoint(3, "Q7302103_guide").pos, sceneData:GetDummyPoint(3, "Q7302103_guide").rot, true, false, 3)
end

function Quest73021:OnSubFinish7302104(arg1)
    print("OnSubFinish7302104")
    self:NarratorOnlyTask(datas.Reminder_7302105, nil, "")
end

function Quest73021:OnSubStart7302105(arg1)
    print("OnSubStart7302105")
end

function Quest73021:OnSubFinish7302105(arg1)
    print("OnSubFinish7302105")
end

function Quest73021:OnSubStart7302103(arg1)
    print("OnSubStart7302103")
    self:RequestInteraction(npcs.Npc20652Data.alias)
end

function Quest73021:OnSubFinish7302103(arg1)
    print("OnSubFinish7302103")
end

return Quest73021
