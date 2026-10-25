require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72115 = class("Quest72115", QuestActorProxy)
Quest72115.defaultAlias = "Quest72115"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72115:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72115:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7211501"] = self.OnSubStart7211501,
        ["7211502"] = self.OnSubStart7211502,
        ["7211503"] = self.OnSubStart7211503,
        ["7211504"] = self.OnSubStart7211504,
        ["7211505"] = self.OnSubStart7211505,
        ["7211506"] = self.OnSubStart7211506,
        ["7211507"] = self.OnSubStart7211507,
        ["7211508"] = self.OnSubStart7211508
    }
end

function Quest72115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7211501"] = self.OnSubFinish7211501,
        ["7211502"] = self.OnSubFinish7211502,
        ["7211503"] = self.OnSubFinish7211503,
        ["7211504"] = self.OnSubFinish7211504,
        ["7211505"] = self.OnSubFinish7211505,
        ["7211506"] = self.OnSubFinish7211506,
        ["7211507"] = self.OnSubFinish7211507,
        ["7211508"] = self.OnSubFinish7211508
    }
end

function Quest72115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7211501"] = self.OnSubFailed7211501,
        ["7211502"] = self.OnSubFailed7211502,
        ["7211503"] = self.OnSubFailed7211503,
        ["7211504"] = self.OnSubFailed7211504,
        ["7211505"] = self.OnSubFailed7211505,
        ["7211506"] = self.OnSubFailed7211506,
        ["7211507"] = self.OnSubFailed7211507,
        ["7211508"] = self.OnSubFailed7211508
    }
end

function Quest72115:Start()
    print("Start")
end

function Quest72115:OnDestroy()
    print("OnDestroy")
end

function Quest72115:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72115:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72115:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72115:OnSubStart7211501(arg1)
    print("OnSubStart7211501")
end

function Quest72115:OnSubFinish7211501(arg1)
    print("OnSubFinish7211501")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72115:OnSubFailed7211501(arg1)
    print("OnSubFailed7211501")
end

function Quest72115:OnSubStart7211502(arg1)
    print("OnSubStart7211502")
    self:CallDelay(0.8, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    end)
end

function Quest72115:OnSubFinish7211502(arg1)
    print("OnSubFinish7211502")
end

function Quest72115:OnSubFailed7211502(arg1)
    print("OnSubFailed7211502")
end

function Quest72115:OnSubStart7211503(arg1)
    print("OnSubStart7211503")
end

function Quest72115:OnSubFinish7211503(arg1)
    print("OnSubFinish7211503")
end

function Quest72115:OnSubFailed7211503(arg1)
    print("OnSubFailed7211503")
end

function Quest72115:OnSubStart7211504(arg1)
    print("OnSubStart7211504")
end

function Quest72115:OnSubFinish7211504(arg1)
    print("OnSubFinish7211504")
end

function Quest72115:OnSubFailed7211504(arg1)
    print("OnSubFailed7211504")
end

function Quest72115:OnSubStart7211505(arg1)
    print("OnSubStart7211505")
end

function Quest72115:OnSubFinish7211505(arg1)
    print("OnSubFinish7211505")
end

function Quest72115:OnSubFailed7211505(arg1)
    print("OnSubFailed7211505")
end

function Quest72115:OnSubStart7211506(arg1)
    print("OnSubStart7211506")
end

function Quest72115:OnSubFinish7211506(arg1)
    print("OnSubFinish7211506")
end

function Quest72115:OnSubFailed7211506(arg1)
    print("OnSubFailed7211506")
end

function Quest72115:OnSubStart7211507(arg1)
    print("OnSubStart7211507")
end

function Quest72115:OnSubFinish7211507(arg1)
    print("OnSubFinish7211507")
end

function Quest72115:OnSubFailed7211507(arg1)
    print("OnSubFailed7211507")
end

function Quest72115:OnSubStart7211508(arg1)
    print("OnSubStart7211508")
end

function Quest72115:OnSubFinish7211508(arg1)
    print("OnSubFinish7211508")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc3162Data.alias)
end

function Quest72115:OnSubFailed7211508(arg1)
    print("OnSubFailed7211508")
end

return Quest72115
