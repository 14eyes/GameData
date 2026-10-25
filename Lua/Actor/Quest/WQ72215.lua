require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72215 = class("Quest72215", QuestActorProxy)
Quest72215.defaultAlias = "Quest72215"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72215:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72215:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7221501"] = self.OnSubStart7221501,
        ["7221502"] = self.OnSubStart7221502,
        ["7221504"] = self.OnSubStart7221504,
        ["7221505"] = self.OnSubStart7221505,
        ["7221506"] = self.OnSubStart7221506,
        ["7221507"] = self.OnSubStart7221507,
        ["7221503"] = self.OnSubStart7221503
    }
end

function Quest72215:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7221501"] = self.OnSubFinish7221501,
        ["7221502"] = self.OnSubFinish7221502,
        ["7221504"] = self.OnSubFinish7221504,
        ["7221505"] = self.OnSubFinish7221505,
        ["7221506"] = self.OnSubFinish7221506,
        ["7221507"] = self.OnSubFinish7221507,
        ["7221503"] = self.OnSubFinish7221503
    }
end

function Quest72215:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7221501"] = self.OnSubFailed7221501,
        ["7221502"] = self.OnSubFailed7221502,
        ["7221504"] = self.OnSubFailed7221504,
        ["7221505"] = self.OnSubFailed7221505,
        ["7221506"] = self.OnSubFailed7221506,
        ["7221507"] = self.OnSubFailed7221507,
        ["7221503"] = self.OnSubFailed7221503
    }
end

function Quest72215:Start()
    print("Start")
end

function Quest72215:OnDestroy()
    print("OnDestroy")
end

function Quest72215:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72215:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72215:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72215:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72215:OnSubStart7221501(arg1)
    print("OnSubStart7221501")
    self:CreateQuestNpc(arg1, npcs.Npc3182Data.id, 1)
end

function Quest72215:OnSubFinish7221501(arg1)
    print("OnSubFinish7221501")
end

function Quest72215:OnSubFailed7221501(arg1)
    print("OnSubFailed7221501")
end

function Quest72215:OnSubStart7221502(arg1)
    print("OnSubStart7221502")
end

function Quest72215:OnSubFinish7221502(arg1)
    print("OnSubFinish7221502")
end

function Quest72215:OnSubFailed7221502(arg1)
    print("OnSubFailed7221502")
end

function Quest72215:OnSubStart7221504(arg1)
    print("OnSubStart7221504")
end

function Quest72215:OnSubFinish7221504(arg1)
    print("OnSubFinish7221504")
end

function Quest72215:OnSubFailed7221504(arg1)
    print("OnSubFailed7221504")
end

function Quest72215:OnSubStart7221505(arg1)
    print("OnSubStart7221505")
end

function Quest72215:OnSubFinish7221505(arg1)
    print("OnSubFinish7221505")
end

function Quest72215:OnSubFailed7221505(arg1)
    print("OnSubFailed7221505")
end

function Quest72215:OnSubStart7221506(arg1)
    print("OnSubStart7221506")
end

function Quest72215:OnSubFinish7221506(arg1)
    print("OnSubFinish7221506")
end

function Quest72215:OnSubFailed7221506(arg1)
    print("OnSubFailed7221506")
end

function Quest72215:OnSubStart7221507(arg1)
    print("OnSubStart7221507")
end

function Quest72215:OnSubFinish7221507(arg1)
    print("OnSubFinish7221507")
end

function Quest72215:OnSubFailed7221507(arg1)
    print("OnSubFailed7221507")
end

function Quest72215:OnSubStart7221503(arg1)
    print("OnSubStart7221503")
end

function Quest72215:OnSubFinish7221503(arg1)
    print("OnSubFinish7221503")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3182Data.alias)
end

function Quest72215:OnSubFailed7221503(arg1)
    print("OnSubFailed7221503")
end

return Quest72215
