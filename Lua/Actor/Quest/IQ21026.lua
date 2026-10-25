require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21026 = class("Quest21026", QuestActorProxy)
Quest21026.defaultAlias = "Quest21026"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest21026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest21026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2102601"] = self.OnSubStart2102601,
        ["2102602"] = self.OnSubStart2102602,
        ["2102603"] = self.OnSubStart2102603
    }
end

function Quest21026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2102601"] = self.OnSubFinish2102601,
        ["2102602"] = self.OnSubFinish2102602,
        ["2102603"] = self.OnSubFinish2102603
    }
end

function Quest21026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest21026:Start()
    print("Start")
end

function Quest21026:OnDestroy()
    print("OnDestroy")
end

function Quest21026:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc2411Data.alias, 3)
end

function Quest21026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest21026:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc2411Data.alias, 3)
end

function Quest21026:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest21026:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest21026:OnSubStart2102601(arg1)
    print("OnSubStart2102601")
    self:NpcCreate(arg1, npcs.Npc2411Data.id, 1)
end

function Quest21026:OnSubFinish2102601(arg1)
    print("OnSubFinish2102601")
end

function Quest21026:OnSubStart2102602(arg1)
    print("OnSubStart2102602")
end

function Quest21026:OnSubFinish2102602(arg1)
    print("OnSubFinish2102602")
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "QUEST_Message_Q2102603", false, true)
end

function Quest21026:OnSubStart2102603(arg1)
    print("OnSubStart2102603")
end

function Quest21026:OnSubFinish2102603(arg1)
    print("OnSubFinish2102603")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc2411Data.alias)
end

return Quest21026
