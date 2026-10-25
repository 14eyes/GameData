require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72691 = class("Quest72691", QuestActorProxy)
Quest72691.defaultAlias = "Quest72691"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72691:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72691:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7269101"] = self.OnSubStart7269101,
        ["7269102"] = self.OnSubStart7269102,
        ["7269104"] = self.OnSubStart7269104,
        ["7269105"] = self.OnSubStart7269105
    }
end

function Quest72691:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7269101"] = self.OnSubFinish7269101,
        ["7269102"] = self.OnSubFinish7269102,
        ["7269104"] = self.OnSubFinish7269104,
        ["7269105"] = self.OnSubFinish7269105
    }
end

function Quest72691:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72691:Start()
    print("Start")
end

function Quest72691:OnDestroy()
    print("OnDestroy")
end

function Quest72691:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72691:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72691:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30172Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30173Data.alias, 3)
    self:ActorDestroy("Q72691Trigger")
end

function Quest72691:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72691:OnSubStart7269101(arg1)
    print("OnSubStart7269101")
end

function Quest72691:OnSubFinish7269101(arg1)
    print("OnSubFinish7269101")
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(853)
    end)
end

function Quest72691:OnSubStart7269102(arg1)
    print("OnSubStart7269102")
end

function Quest72691:OnSubFinish7269102(arg1)
    print("OnSubFinish7269102")
end

function Quest72691:OnSubStart7269104(arg1)
    print("OnSubStart7269104")
end

function Quest72691:OnSubFinish7269104(arg1)
    print("OnSubFinish7269104")
end

function Quest72691:OnSubStart7269105(arg1)
    print("OnSubStart7269105")
    self:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q72691Trigger", "Actor/Gadget/Q72691Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7269101_N30173").pos, sceneData:GetDummyPoint(3, "Q7269101_N30173").rot, true, false, 3)
    end)
end

function Quest72691:OnSubFinish7269105(arg1)
    print("OnSubFinish7269105")
    self:ActorDestroy("Q72691Trigger")
end

return Quest72691
