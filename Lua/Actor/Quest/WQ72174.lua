require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72174 = class("Quest72174", QuestActorProxy)
Quest72174.defaultAlias = "Quest72174"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72174:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72174:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7217401"] = self.OnSubStart7217401,
        ["7217402"] = self.OnSubStart7217402,
        ["7217403"] = self.OnSubStart7217403,
        ["7217404"] = self.OnSubStart7217404
    }
end

function Quest72174:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7217401"] = self.OnSubFinish7217401,
        ["7217402"] = self.OnSubFinish7217402,
        ["7217403"] = self.OnSubFinish7217403,
        ["7217404"] = self.OnSubFinish7217404
    }
end

function Quest72174:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7217401"] = self.OnSubFailed7217401,
        ["7217402"] = self.OnSubFailed7217402,
        ["7217403"] = self.OnSubFailed7217403,
        ["7217404"] = self.OnSubFailed7217404
    }
end

function Quest72174:Start()
    print("Start")
end

function Quest72174:OnDestroy()
    print("OnDestroy")
end

function Quest72174:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72174:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72174:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72174:OnSubStart7217401(arg1)
    print("OnSubStart7217401")
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 1)
end

function Quest72174:OnSubFinish7217401(arg1)
    print("OnSubFinish7217401")
end

function Quest72174:OnSubFailed7217401(arg1)
    print("OnSubFailed7217401")
end

function Quest72174:OnSubStart7217402(arg1)
    print("OnSubStart7217402")
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 1)
end

function Quest72174:OnSubFinish7217402(arg1)
    print("OnSubFinish7217402")
end

function Quest72174:OnSubFailed7217402(arg1)
    print("OnSubFailed7217402")
end

function Quest72174:OnSubStart7217403(arg1)
    print("OnSubStart7217403")
    self:CreateQuestNpc(arg1, npcs.Npc20431Data.id, 1)
end

function Quest72174:OnSubFinish7217403(arg1)
    print("OnSubFinish7217403")
    self:SafeDestroyQuestNpc(npcs.Npc20431Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72174:OnSubFailed7217403(arg1)
    print("OnSubFailed7217403")
end

function Quest72174:OnSubStart7217404(arg1)
    print("OnSubStart7217404")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex("7217404", function(arg1)
            arg1:FinishQuestID(false, 7217404)
        end, nil, nil, false)
    end)
end

function Quest72174:OnSubFinish7217404(arg1)
    print("OnSubFinish7217404")
end

function Quest72174:OnSubFailed7217404(arg1)
    print("OnSubFailed7217404")
end

return Quest72174
