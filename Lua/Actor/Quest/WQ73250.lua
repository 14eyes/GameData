require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73250 = class("Quest73250", QuestActorProxy)
Quest73250.defaultAlias = "Quest73250"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73250:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73250:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7325001"] = self.OnSubStart7325001,
        ["7325005"] = self.OnSubStart7325005,
        ["7325002"] = self.OnSubStart7325002,
        ["7325003"] = self.OnSubStart7325003,
        ["7325004"] = self.OnSubStart7325004,
        ["7325006"] = self.OnSubStart7325006
    }
end

function Quest73250:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7325001"] = self.OnSubFinish7325001,
        ["7325005"] = self.OnSubFinish7325005,
        ["7325002"] = self.OnSubFinish7325002,
        ["7325003"] = self.OnSubFinish7325003,
        ["7325004"] = self.OnSubFinish7325004,
        ["7325006"] = self.OnSubFinish7325006
    }
end

function Quest73250:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73250:Start()
    print("Start")
end

function Quest73250:OnDestroy()
    print("OnDestroy")
end

function Quest73250:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73250:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73250:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73250:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest73250:OnSubStart7325001(arg1)
    print("OnSubStart7325001")
    self:NpcCreate(arg1, npcs.Npc422002Data.id, 1)
end

function Quest73250:OnSubFinish7325001(arg1)
    print("OnSubFinish7325001")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73250:OnSubStart7325005(arg1)
    print("OnSubStart7325005")
end

function Quest73250:OnSubFinish7325005(arg1)
    print("OnSubFinish7325005")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73250:OnSubStart7325002(arg1)
    print("OnSubStart7325002")
end

function Quest73250:OnSubFinish7325002(arg1)
    print("OnSubFinish7325002")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc422002Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73250:OnSubStart7325003(arg1)
    print("OnSubStart7325003")
end

function Quest73250:OnSubFinish7325003(arg1)
    print("OnSubFinish7325003")
end

function Quest73250:OnSubStart7325004(arg1)
    print("OnSubStart7325004")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc422002Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73250:OnSubFinish7325004(arg1)
    print("OnSubFinish7325004")
end

function Quest73250:OnSubStart7325006(arg1)
    print("OnSubStart7325006")
end

function Quest73250:OnSubFinish7325006(arg1)
    print("OnSubFinish7325006")
end

return Quest73250
