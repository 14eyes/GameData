require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23006 = class("Quest23006", QuestActorProxy)
Quest23006.defaultAlias = "Quest23006"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23006:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23006:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2300601"] = self.OnSubStart2300601,
        ["2300602"] = self.OnSubStart2300602,
        ["2300603"] = self.OnSubStart2300603
    }
end

function Quest23006:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2300601"] = self.OnSubFinish2300601,
        ["2300602"] = self.OnSubFinish2300602,
        ["2300603"] = self.OnSubFinish2300603
    }
end

function Quest23006:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23006:Start()
    print("Start")
end

function Quest23006:OnDestroy()
    print("OnDestroy")
end

function Quest23006:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23006:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23006:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4072Data.alias, 3)
end

function Quest23006:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23006:OnSubStart2300601(arg1)
    print("OnSubStart2300601")
    self:CreateQuestNpc(arg1, npcs.Npc4072Data.id, 1)
end

function Quest23006:OnSubFinish2300601(arg1)
    print("OnSubFinish2300601")
end

function Quest23006:OnSubStart2300602(arg1)
    print("OnSubStart2300602")
end

function Quest23006:OnSubFinish2300602(arg1)
    print("OnSubFinish2300602")
end

function Quest23006:OnSubStart2300603(arg1)
    print("OnSubStart2300603")
end

function Quest23006:OnSubFinish2300603(arg1)
    print("OnSubFinish2300603")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4072Data.alias)
end

return Quest23006
