require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20703 = class("Quest20703", QuestActorProxy)
Quest20703.defaultAlias = "Quest20703"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20703:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20703:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2070301"] = self.OnSubStart2070301,
        ["2070304"] = self.OnSubStart2070304,
        ["2070305"] = self.OnSubStart2070305,
        ["2070302"] = self.OnSubStart2070302,
        ["2070306"] = self.OnSubStart2070306,
        ["2070307"] = self.OnSubStart2070307,
        ["2070303"] = self.OnSubStart2070303
    }
end

function Quest20703:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2070301"] = self.OnSubFinish2070301,
        ["2070304"] = self.OnSubFinish2070304,
        ["2070305"] = self.OnSubFinish2070305,
        ["2070302"] = self.OnSubFinish2070302,
        ["2070306"] = self.OnSubFinish2070306,
        ["2070307"] = self.OnSubFinish2070307,
        ["2070303"] = self.OnSubFinish2070303
    }
end

function Quest20703:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2070301"] = self.OnSubFailed2070301,
        ["2070304"] = self.OnSubFailed2070304,
        ["2070305"] = self.OnSubFailed2070305,
        ["2070302"] = self.OnSubFailed2070302,
        ["2070306"] = self.OnSubFailed2070306,
        ["2070307"] = self.OnSubFailed2070307,
        ["2070303"] = self.OnSubFailed2070303
    }
end

function Quest20703:Start()
    print("Start")
end

function Quest20703:OnDestroy()
    print("OnDestroy")
end

function Quest20703:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 1, 0.5, self.NewFunction, nil, nil, "")
end

function Quest20703:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20703:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DestroyQuestNpcActor(npcs.Npc1555Data.alias, 3)
end

function Quest20703:NewFunction()
    print("NewFunction")
    self:DestroyQuestNpcActor(npcs.Npc1555Data.alias, 3)
end

function Quest20703:OnSubStart2070301(arg1)
    print("OnSubStart2070301")
    self:CreateQuestNpc(arg1, npcs.Npc1555Data.id, 0)
end

function Quest20703:OnSubFinish2070301(arg1)
    print("OnSubFinish2070301")
end

function Quest20703:OnSubFailed2070301(arg1)
    print("OnSubFailed2070301")
end

function Quest20703:OnSubStart2070304(arg1)
    print("OnSubStart2070304")
end

function Quest20703:OnSubFinish2070304(arg1)
    print("OnSubFinish2070304")
end

function Quest20703:OnSubFailed2070304(arg1)
    print("OnSubFailed2070304")
end

function Quest20703:OnSubStart2070305(arg1)
    print("OnSubStart2070305")
end

function Quest20703:OnSubFinish2070305(arg1)
    print("OnSubFinish2070305")
end

function Quest20703:OnSubFailed2070305(arg1)
    print("OnSubFailed2070305")
end

function Quest20703:OnSubStart2070302(arg1)
    print("OnSubStart2070302")
end

function Quest20703:OnSubFinish2070302(arg1)
    print("OnSubFinish2070302")
end

function Quest20703:OnSubFailed2070302(arg1)
    print("OnSubFailed2070302")
end

function Quest20703:OnSubStart2070306(arg1)
    print("OnSubStart2070306")
end

function Quest20703:OnSubFinish2070306(arg1)
    print("OnSubFinish2070306")
end

function Quest20703:OnSubFailed2070306(arg1)
    print("OnSubFailed2070306")
end

function Quest20703:OnSubStart2070307(arg1)
    print("OnSubStart2070307")
end

function Quest20703:OnSubFinish2070307(arg1)
    print("OnSubFinish2070307")
end

function Quest20703:OnSubFailed2070307(arg1)
    print("OnSubFailed2070307")
end

function Quest20703:OnSubStart2070303(arg1)
    print("OnSubStart2070303")
end

function Quest20703:OnSubFinish2070303(arg1)
    print("OnSubFinish2070303")
end

function Quest20703:OnSubFailed2070303(arg1)
    print("OnSubFailed2070303")
end

return Quest20703
