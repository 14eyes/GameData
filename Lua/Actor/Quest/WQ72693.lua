require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72693 = class("Quest72693", QuestActorProxy)
Quest72693.defaultAlias = "Quest72693"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72693:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72693:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7269306"] = self.OnSubStart7269306,
        ["7269301"] = self.OnSubStart7269301,
        ["7269302"] = self.OnSubStart7269302,
        ["7269304"] = self.OnSubStart7269304,
        ["7269305"] = self.OnSubStart7269305
    }
end

function Quest72693:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7269306"] = self.OnSubFinish7269306,
        ["7269301"] = self.OnSubFinish7269301,
        ["7269302"] = self.OnSubFinish7269302,
        ["7269304"] = self.OnSubFinish7269304,
        ["7269305"] = self.OnSubFinish7269305
    }
end

function Quest72693:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72693:Start()
    print("Start")
end

function Quest72693:OnDestroy()
    print("OnDestroy")
end

function Quest72693:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72693:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72693:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30172Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30173Data.alias, 3)
    actorMgr:DestroyEntityActor("Q72693Trigger", 3, false)
end

function Quest72693:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72693:OnSubStart7269306(arg1)
    print("OnSubStart7269306")
end

function Quest72693:OnSubFinish7269306(arg1)
    print("OnSubFinish7269306")
end

function Quest72693:OnSubStart7269301(arg1)
    print("OnSubStart7269301")
end

function Quest72693:OnSubFinish7269301(arg1)
    print("OnSubFinish7269301")
end

function Quest72693:OnSubStart7269302(arg1)
    print("OnSubStart7269302")
end

function Quest72693:OnSubFinish7269302(arg1)
    print("OnSubFinish7269302")
end

function Quest72693:OnSubStart7269304(arg1)
    print("OnSubStart7269304")
end

function Quest72693:OnSubFinish7269304(arg1)
    print("OnSubFinish7269304")
end

function Quest72693:OnSubStart7269305(arg1)
    print("OnSubStart7269305")
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q72693Trigger", "Actor/Gadget/Q72693Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7269101_N30172").pos, sceneData:GetDummyPoint(3, "Q7269101_N30172").rot, true, false, 3)
    end)
end

function Quest72693:OnSubFinish7269305(arg1)
    print("OnSubFinish7269305")
    self:ActorDestroy("Q72693Trigger")
end

return Quest72693
