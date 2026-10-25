require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72806 = class("Quest72806", QuestActorProxy)
Quest72806.defaultAlias = "Quest72806"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72806:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72806:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7280601"] = self.OnSubStart7280601,
        ["7280602"] = self.OnSubStart7280602,
        ["7280603"] = self.OnSubStart7280603,
        ["7280604"] = self.OnSubStart7280604,
        ["7280605"] = self.OnSubStart7280605
    }
end

function Quest72806:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7280601"] = self.OnSubFinish7280601,
        ["7280602"] = self.OnSubFinish7280602,
        ["7280603"] = self.OnSubFinish7280603,
        ["7280604"] = self.OnSubFinish7280604,
        ["7280605"] = self.OnSubFinish7280605
    }
end

function Quest72806:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7280601"] = self.OnSubFailed7280601,
        ["7280602"] = self.OnSubFailed7280602,
        ["7280603"] = self.OnSubFailed7280603,
        ["7280604"] = self.OnSubFailed7280604,
        ["7280605"] = self.OnSubFailed7280605
    }
end

function Quest72806:Start()
    print("Start")
end

function Quest72806:OnDestroy()
    print("OnDestroy")
end

function Quest72806:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72806:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72806:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72806:OnSubStart7280601(arg1)
    print("OnSubStart7280601")
end

function Quest72806:OnSubFinish7280601(arg1)
    print("OnSubFinish7280601")
end

function Quest72806:OnSubFailed7280601(arg1)
    print("OnSubFailed7280601")
end

function Quest72806:OnSubStart7280602(arg1)
    print("OnSubStart7280602")
end

function Quest72806:OnSubFinish7280602(arg1)
    print("OnSubFinish7280602")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable01, nil, "Story")
    end)
end

function Quest72806:OnSubFailed7280602(arg1)
    print("OnSubFailed7280602")
end

function Quest72806:OnSubStart7280603(arg1)
    print("OnSubStart7280603")
    self:CreateQuestNpc(arg1, npcs.Npc10045Data.id, 1)
    actorMgr:CreateActorWithPos("Q7280603Trigger", "Actor/Gadget/Q7280603Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7280603XQ").pos, sceneData:GetDummyPoint(3, "Q7280603XQ").rot, true, false, 3)
end

function Quest72806:OnSubFinish7280603(arg1)
    print("OnSubFinish7280603")
end

function Quest72806:OnSubFailed7280603(arg1)
    print("OnSubFailed7280603")
end

function Quest72806:OnSubStart7280604(arg1)
    print("OnSubStart7280604")
end

function Quest72806:OnSubFinish7280604(arg1)
    print("OnSubFinish7280604")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end)
end

function Quest72806:OnSubFailed7280604(arg1)
    print("OnSubFailed7280604")
end

function Quest72806:OnSubStart7280605(arg1)
    print("OnSubStart7280605")
end

function Quest72806:OnSubFinish7280605(arg1)
    print("OnSubFinish7280605")
    self:SafeDestroyQuestNpc(npcs.Npc10045Data.alias, 3)
end

function Quest72806:OnSubFailed7280605(arg1)
    print("OnSubFailed7280605")
end

return Quest72806
