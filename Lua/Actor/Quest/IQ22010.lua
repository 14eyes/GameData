require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22010 = class("Quest22010", QuestActorProxy)
Quest22010.defaultAlias = "Quest22010"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest22010:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2201001"] = self.OnSubStart2201001,
        ["2201002"] = self.OnSubStart2201002,
        ["2201003"] = self.OnSubStart2201003,
        ["2201004"] = self.OnSubStart2201004,
        ["2201005"] = self.OnSubStart2201005,
        ["2201006"] = self.OnSubStart2201006,
        ["2201007"] = self.OnSubStart2201007
    }
end

function Quest22010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2201001"] = self.OnSubFinish2201001,
        ["2201002"] = self.OnSubFinish2201002,
        ["2201003"] = self.OnSubFinish2201003,
        ["2201004"] = self.OnSubFinish2201004,
        ["2201005"] = self.OnSubFinish2201005,
        ["2201006"] = self.OnSubFinish2201006,
        ["2201007"] = self.OnSubFinish2201007
    }
end

function Quest22010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2201001"] = self.OnSubFailed2201001,
        ["2201002"] = self.OnSubFailed2201002,
        ["2201003"] = self.OnSubFailed2201003,
        ["2201004"] = self.OnSubFailed2201004,
        ["2201005"] = self.OnSubFailed2201005,
        ["2201006"] = self.OnSubFailed2201006,
        ["2201007"] = self.OnSubFailed2201007
    }
end

function Quest22010:Start()
    print("Start")
end

function Quest22010:OnDestroy()
    print("OnDestroy")
end

function Quest22010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22010:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc3033Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3032Data.alias, 3)
end

function Quest22010:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22010:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Finish06")
        actorMgr:GetActor("22010"):FinishQuestID(false, 2201006)
    elseif arg1 == 2 then
        print("Finish07")
        actorMgr:GetActor("22010"):FinishQuestID(false, 2201007)
    end
end

function Quest22010:OnSubStart2201001(arg1)
    print("OnSubStart2201001")
    self:CreateQuestNpc(arg1, npcs.Npc3033Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3032Data.id, 2)
end

function Quest22010:OnSubFinish2201001(arg1)
    print("OnSubFinish2201001")
    self:ShowBlackScreen(0.3, 1.2, 0.3, nil, nil, nil, "")
end

function Quest22010:OnSubFailed2201001(arg1)
    print("OnSubFailed2201001")
end

function Quest22010:OnSubStart2201002(arg1)
    print("OnSubStart2201002")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3032Data.id, 1)
    end)
end

function Quest22010:OnSubFinish2201002(arg1)
    print("OnSubFinish2201002")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
            arg1:CreateQuestNpcById(2201005, npcs.Npc3032Data.id, 1)
        end, nil, nil, "")
    end)
end

function Quest22010:OnSubFailed2201002(arg1)
    print("OnSubFailed2201002")
end

function Quest22010:OnSubStart2201003(arg1)
    print("OnSubStart2201003")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3032Data.id, 1)
    end)
end

function Quest22010:OnSubFinish2201003(arg1)
    print("OnSubFinish2201003")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
            arg1:CreateQuestNpcById(2201005, npcs.Npc3032Data.id, 1)
        end, nil, nil, "")
    end)
end

function Quest22010:OnSubFailed2201003(arg1)
    print("OnSubFailed2201003")
end

function Quest22010:OnSubStart2201004(arg1)
    print("OnSubStart2201004")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3032Data.id, 1)
    end)
end

function Quest22010:OnSubFinish2201004(arg1)
    print("OnSubFinish2201004")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1.2, 0.3, function(arg1)
            arg1:CreateQuestNpcById(2201005, npcs.Npc3032Data.id, 1)
        end, nil, nil, "")
    end)
end

function Quest22010:OnSubFailed2201004(arg1)
    print("OnSubFailed2201004")
end

function Quest22010:OnSubStart2201005(arg1)
    print("OnSubStart2201005")
end

function Quest22010:OnSubFinish2201005(arg1)
    print("OnSubFinish2201005")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3033Data.alias)
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3032Data.alias)
end

function Quest22010:OnSubFailed2201005(arg1)
    print("OnSubFailed2201005")
end

function Quest22010:OnSubStart2201006(arg1)
    print("OnSubStart2201006")
end

function Quest22010:OnSubFinish2201006(arg1)
    print("OnSubFinish2201006")
end

function Quest22010:OnSubFailed2201006(arg1)
    print("OnSubFailed2201006")
end

function Quest22010:OnSubStart2201007(arg1)
    print("OnSubStart2201007")
end

function Quest22010:OnSubFinish2201007(arg1)
    print("OnSubFinish2201007")
end

function Quest22010:OnSubFailed2201007(arg1)
    print("OnSubFailed2201007")
end

return Quest22010
