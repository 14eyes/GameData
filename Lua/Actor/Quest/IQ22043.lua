require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22043 = class("Quest22043", QuestActorProxy)
Quest22043.defaultAlias = "Quest22043"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22043:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22043:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2204301"] = self.OnSubStart2204301,
        ["2204302"] = self.OnSubStart2204302,
        ["2204303"] = self.OnSubStart2204303
    }
end

function Quest22043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2204301"] = self.OnSubFinish2204301,
        ["2204302"] = self.OnSubFinish2204302,
        ["2204303"] = self.OnSubFinish2204303
    }
end

function Quest22043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2204301"] = self.OnSubFailed2204301,
        ["2204302"] = self.OnSubFailed2204302,
        ["2204303"] = self.OnSubFailed2204303
    }
end

function Quest22043:Start()
    print("Start")
end

function Quest22043:OnDestroy()
    print("OnDestroy")
end

function Quest22043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22043:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20388Data.alias, 3)
end

function Quest22043:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22043:OnSubStart2204301(arg1)
    print("OnSubStart2204301")
    self:CreateQuestNpc(arg1, npcs.Npc20388Data.id, 1)
end

function Quest22043:OnSubFinish2204301(arg1)
    print("OnSubFinish2204301")
end

function Quest22043:OnSubFailed2204301(arg1)
    print("OnSubFailed2204301")
end

function Quest22043:OnSubStart2204302(arg1)
    print("OnSubStart2204302")
end

function Quest22043:OnSubFinish2204302(arg1)
    print("OnSubFinish2204302")
end

function Quest22043:OnSubFailed2204302(arg1)
    print("OnSubFailed2204302")
end

function Quest22043:OnSubStart2204303(arg1)
    print("OnSubStart2204303")
end

function Quest22043:OnSubFinish2204303(arg1)
    print("OnSubFinish2204303")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20388Data.alias)
end

function Quest22043:OnSubFailed2204303(arg1)
    print("OnSubFailed2204303")
end

return Quest22043
