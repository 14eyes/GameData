require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72135 = class("Quest72135", QuestActorProxy)
Quest72135.defaultAlias = "Quest72135"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72135:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72135:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7213504"] = self.OnSubStart7213504,
        ["7213505"] = self.OnSubStart7213505,
        ["7213501"] = self.OnSubStart7213501,
        ["7213502"] = self.OnSubStart7213502,
        ["7213503"] = self.OnSubStart7213503
    }
end

function Quest72135:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7213504"] = self.OnSubFinish7213504,
        ["7213505"] = self.OnSubFinish7213505,
        ["7213501"] = self.OnSubFinish7213501,
        ["7213502"] = self.OnSubFinish7213502,
        ["7213503"] = self.OnSubFinish7213503
    }
end

function Quest72135:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7213504"] = self.OnSubFailed7213504,
        ["7213505"] = self.OnSubFailed7213505,
        ["7213501"] = self.OnSubFailed7213501,
        ["7213502"] = self.OnSubFailed7213502,
        ["7213503"] = self.OnSubFailed7213503
    }
end

function Quest72135:Start()
    print("Start")
end

function Quest72135:OnDestroy()
    print("OnDestroy")
end

function Quest72135:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72135:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72135:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72135:OnSubStart7213504(arg1)
    print("OnSubStart7213504")
end

function Quest72135:OnSubFinish7213504(arg1)
    print("OnSubFinish7213504")
end

function Quest72135:OnSubFailed7213504(arg1)
    print("OnSubFailed7213504")
end

function Quest72135:OnSubStart7213505(arg1)
    print("OnSubStart7213505")
    self:FinishQuestID(false, 7213505)
end

function Quest72135:OnSubFinish7213505(arg1)
    print("OnSubFinish7213505")
end

function Quest72135:OnSubFailed7213505(arg1)
    print("OnSubFailed7213505")
end

function Quest72135:OnSubStart7213501(arg1)
    print("OnSubStart7213501")
    self:CreateQuestNpc(arg1, npcs.Npc20272Data.id, 1)
end

function Quest72135:OnSubFinish7213501(arg1)
    print("OnSubFinish7213501")
    self:GetQuestNpcActor(npcs.Npc20272Data.alias):DestroyWithDither(false, 2)
end

function Quest72135:OnSubFailed7213501(arg1)
    print("OnSubFailed7213501")
end

function Quest72135:OnSubStart7213502(arg1)
    print("OnSubStart7213502")
    self:CreateQuestNpc(arg1, npcs.Npc20273Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc20273Data.alias):PerformDither(false, 2)
end

function Quest72135:OnSubFinish7213502(arg1)
    print("OnSubFinish7213502")
    self:GetQuestNpcActor(npcs.Npc20273Data.alias):DestroyWithDither(false, 2)
end

function Quest72135:OnSubFailed7213502(arg1)
    print("OnSubFailed7213502")
end

function Quest72135:OnSubStart7213503(arg1)
    print("OnSubStart7213503")
    self:CreateQuestNpc(arg1, npcs.Npc20274Data.id, 1)
end

function Quest72135:OnSubFinish7213503(arg1)
    print("OnSubFinish7213503")
    self:GetQuestNpcActor(npcs.Npc20274Data.alias):DestroyWithDither(false, 2)
end

function Quest72135:OnSubFailed7213503(arg1)
    print("OnSubFailed7213503")
    self:GetQuestNpcActor(npcs.Npc20274Data.alias):DestroyWithDither(false, 2)
end

return Quest72135
