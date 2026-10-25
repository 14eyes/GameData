require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73085 = class("Quest73085", QuestActorProxy)
Quest73085.defaultAlias = "Quest73085"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73085:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73085:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7308501"] = self.OnSubStart7308501,
        ["7308502"] = self.OnSubStart7308502,
        ["7308503"] = self.OnSubStart7308503,
        ["7308504"] = self.OnSubStart7308504,
        ["7308505"] = self.OnSubStart7308505,
        ["7308506"] = self.OnSubStart7308506,
        ["7308509"] = self.OnSubStart7308509,
        ["7308510"] = self.OnSubStart7308510,
        ["7308511"] = self.OnSubStart7308511,
        ["7308512"] = self.OnSubStart7308512,
        ["7308513"] = self.OnSubStart7308513,
        ["7308514"] = self.OnSubStart7308514,
        ["7308508"] = self.OnSubStart7308508,
        ["7308507"] = self.OnSubStart7308507
    }
end

function Quest73085:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7308501"] = self.OnSubFinish7308501,
        ["7308502"] = self.OnSubFinish7308502,
        ["7308503"] = self.OnSubFinish7308503,
        ["7308504"] = self.OnSubFinish7308504,
        ["7308505"] = self.OnSubFinish7308505,
        ["7308506"] = self.OnSubFinish7308506,
        ["7308509"] = self.OnSubFinish7308509,
        ["7308510"] = self.OnSubFinish7308510,
        ["7308511"] = self.OnSubFinish7308511,
        ["7308512"] = self.OnSubFinish7308512,
        ["7308513"] = self.OnSubFinish7308513,
        ["7308514"] = self.OnSubFinish7308514,
        ["7308508"] = self.OnSubFinish7308508,
        ["7308507"] = self.OnSubFinish7308507
    }
end

function Quest73085:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73085:Start()
    print("Start")
end

function Quest73085:OnDestroy()
    print("OnDestroy")
end

function Quest73085:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73085:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73085:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73085:OnSubStart7308501(arg1)
    print("OnSubStart7308501")
    self:CreateQuestNpc(arg1, npcs.Npc4220Data.id, 1)
end

function Quest73085:OnSubFinish7308501(arg1)
    print("OnSubFinish7308501")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73085:OnSubStart7308502(arg1)
    print("OnSubStart7308502")
end

function Quest73085:OnSubFinish7308502(arg1)
    print("OnSubFinish7308502")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73085:OnSubStart7308503(arg1)
    print("OnSubStart7308503")
end

function Quest73085:OnSubFinish7308503(arg1)
    print("OnSubFinish7308503")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc4220Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73085:OnSubStart7308504(arg1)
    print("OnSubStart7308504")
end

function Quest73085:OnSubFinish7308504(arg1)
    print("OnSubFinish7308504")
end

function Quest73085:OnSubStart7308505(arg1)
    print("OnSubStart7308505")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc4220Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73085:OnSubFinish7308505(arg1)
    print("OnSubFinish7308505")
end

function Quest73085:OnSubStart7308506(arg1)
    print("OnSubStart7308506")
end

function Quest73085:OnSubFinish7308506(arg1)
    print("OnSubFinish7308506")
end

function Quest73085:OnSubStart7308509(arg1)
    print("OnSubStart7308509")
end

function Quest73085:OnSubFinish7308509(arg1)
    print("OnSubFinish7308509")
end

function Quest73085:OnSubStart7308510(arg1)
    print("OnSubStart7308510")
end

function Quest73085:OnSubFinish7308510(arg1)
    print("OnSubFinish7308510")
end

function Quest73085:OnSubStart7308511(arg1)
    print("OnSubStart7308511")
end

function Quest73085:OnSubFinish7308511(arg1)
    print("OnSubFinish7308511")
end

function Quest73085:OnSubStart7308512(arg1)
    print("OnSubStart7308512")
end

function Quest73085:OnSubFinish7308512(arg1)
    print("OnSubFinish7308512")
end

function Quest73085:OnSubStart7308513(arg1)
    print("OnSubStart7308513")
end

function Quest73085:OnSubFinish7308513(arg1)
    print("OnSubFinish7308513")
end

function Quest73085:OnSubStart7308514(arg1)
    print("OnSubStart7308514")
end

function Quest73085:OnSubFinish7308514(arg1)
    print("OnSubFinish7308514")
end

function Quest73085:OnSubStart7308508(arg1)
    print("OnSubStart7308508")
end

function Quest73085:OnSubFinish7308508(arg1)
    print("OnSubFinish7308508")
end

function Quest73085:OnSubStart7308507(arg1)
    print("OnSubStart7308507")
end

function Quest73085:OnSubFinish7308507(arg1)
    print("OnSubFinish7308507")
end

return Quest73085
