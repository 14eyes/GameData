require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73081 = class("Quest73081", QuestActorProxy)
Quest73081.defaultAlias = "Quest73081"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73081:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73081:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7308102"] = self.OnSubStart7308102,
        ["7308103"] = self.OnSubStart7308103,
        ["7308104"] = self.OnSubStart7308104,
        ["7308107"] = self.OnSubStart7308107,
        ["7308106"] = self.OnSubStart7308106,
        ["7308105"] = self.OnSubStart7308105,
        ["7308110"] = self.OnSubStart7308110,
        ["7308101"] = self.OnSubStart7308101,
        ["7308108"] = self.OnSubStart7308108,
        ["7308109"] = self.OnSubStart7308109
    }
end

function Quest73081:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7308102"] = self.OnSubFinish7308102,
        ["7308103"] = self.OnSubFinish7308103,
        ["7308104"] = self.OnSubFinish7308104,
        ["7308107"] = self.OnSubFinish7308107,
        ["7308106"] = self.OnSubFinish7308106,
        ["7308105"] = self.OnSubFinish7308105,
        ["7308110"] = self.OnSubFinish7308110,
        ["7308101"] = self.OnSubFinish7308101,
        ["7308108"] = self.OnSubFinish7308108,
        ["7308109"] = self.OnSubFinish7308109
    }
end

function Quest73081:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73081:Start()
    print("Start")
end

function Quest73081:OnDestroy()
    print("OnDestroy")
end

function Quest73081:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73081:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73081:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73081:OnSubStart7308102(arg1)
    print("OnSubStart7308102")
    self:CreateQuestNpc(arg1, npcs.Npc20656Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20656Data.alias):ShowNpcWithLevelTagId(38, false)
end

function Quest73081:OnSubFinish7308102(arg1)
    print("OnSubFinish7308102")
end

function Quest73081:OnSubStart7308103(arg1)
    print("OnSubStart7308103")
end

function Quest73081:OnSubFinish7308103(arg1)
    print("OnSubFinish7308103")
end

function Quest73081:OnSubStart7308104(arg1)
    print("OnSubStart7308104")
end

function Quest73081:OnSubFinish7308104(arg1)
    print("OnSubFinish7308104")
    self:SafeDestroyQuestNpc(npcs.Npc20656Data.alias, 3)
end

function Quest73081:OnSubStart7308107(arg1)
    print("OnSubStart7308107")
end

function Quest73081:OnSubFinish7308107(arg1)
    print("OnSubFinish7308107")
end

function Quest73081:OnSubStart7308106(arg1)
    print("OnSubStart7308106")
end

function Quest73081:OnSubFinish7308106(arg1)
    print("OnSubFinish7308106")
end

function Quest73081:OnSubStart7308105(arg1)
    print("OnSubStart7308105")
end

function Quest73081:OnSubFinish7308105(arg1)
    print("OnSubFinish7308105")
end

function Quest73081:OnSubStart7308110(arg1)
    print("OnSubStart7308110")
end

function Quest73081:OnSubFinish7308110(arg1)
    print("OnSubFinish7308110")
end

function Quest73081:OnSubStart7308101(arg1)
    print("OnSubStart7308101")
end

function Quest73081:OnSubFinish7308101(arg1)
    print("OnSubFinish7308101")
end

function Quest73081:OnSubStart7308108(arg1)
    print("OnSubStart7308108")
end

function Quest73081:OnSubFinish7308108(arg1)
    print("OnSubFinish7308108")
end

function Quest73081:OnSubStart7308109(arg1)
    print("OnSubStart7308109")
end

function Quest73081:OnSubFinish7308109(arg1)
    print("OnSubFinish7308109")
end

return Quest73081
