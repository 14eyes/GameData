require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71805 = class("Quest71805", QuestActorProxy)
Quest71805.defaultAlias = "Quest71805"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71805:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71805:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7180501"] = self.OnSubStart7180501,
        ["7180502"] = self.OnSubStart7180502,
        ["7180503"] = self.OnSubStart7180503,
        ["7180504"] = self.OnSubStart7180504,
        ["7180505"] = self.OnSubStart7180505,
        ["7180506"] = self.OnSubStart7180506,
        ["7180507"] = self.OnSubStart7180507
    }
end

function Quest71805:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7180501"] = self.OnSubFinish7180501,
        ["7180502"] = self.OnSubFinish7180502,
        ["7180503"] = self.OnSubFinish7180503,
        ["7180504"] = self.OnSubFinish7180504,
        ["7180505"] = self.OnSubFinish7180505,
        ["7180506"] = self.OnSubFinish7180506,
        ["7180507"] = self.OnSubFinish7180507
    }
end

function Quest71805:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7180501"] = self.OnSubFailed7180501,
        ["7180502"] = self.OnSubFailed7180502,
        ["7180503"] = self.OnSubFailed7180503,
        ["7180504"] = self.OnSubFailed7180504,
        ["7180505"] = self.OnSubFailed7180505,
        ["7180506"] = self.OnSubFailed7180506,
        ["7180507"] = self.OnSubFailed7180507
    }
end

function Quest71805:Start()
    print("Start")
end

function Quest71805:OnDestroy()
    print("OnDestroy")
end

function Quest71805:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71805:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71805:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2003", 0, true)
    self:NotifyTo("Npc2009", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc200301Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc200901Data.alias, 3)
end

function Quest71805:OnSubStart7180501(arg1)
    print("OnSubStart7180501")
end

function Quest71805:OnSubFinish7180501(arg1)
    print("OnSubFinish7180501")
end

function Quest71805:OnSubFailed7180501(arg1)
    print("OnSubFailed7180501")
end

function Quest71805:OnSubStart7180502(arg1)
    print("OnSubStart7180502")
    self:CreateQuestNpc(arg1, npcs.Npc200301Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc200901Data.id, 0)
    self:NotifyTo("Npc2003", 1, true)
    self:NotifyTo("Npc2009", 1, true)
end

function Quest71805:OnSubFinish7180502(arg1)
    print("OnSubFinish7180502")
end

function Quest71805:OnSubFailed7180502(arg1)
    print("OnSubFailed7180502")
end

function Quest71805:OnSubStart7180503(arg1)
    print("OnSubStart7180503")
    self:NotifyTo("Npc2003", 1, true)
    self:NotifyTo("Npc2009", 1, true)
end

function Quest71805:OnSubFinish7180503(arg1)
    print("OnSubFinish7180503")
end

function Quest71805:OnSubFailed7180503(arg1)
    print("OnSubFailed7180503")
end

function Quest71805:OnSubStart7180504(arg1)
    print("OnSubStart7180504")
    self:NotifyTo("Npc2003", 1, true)
    self:NotifyTo("Npc2009", 1, true)
end

function Quest71805:OnSubFinish7180504(arg1)
    print("OnSubFinish7180504")
end

function Quest71805:OnSubFailed7180504(arg1)
    print("OnSubFailed7180504")
end

function Quest71805:OnSubStart7180505(arg1)
    print("OnSubStart7180505")
    self:NotifyTo("Npc2003", 1, true)
    self:NotifyTo("Npc2009", 1, true)
end

function Quest71805:OnSubFinish7180505(arg1)
    print("OnSubFinish7180505")
end

function Quest71805:OnSubFailed7180505(arg1)
    print("OnSubFailed7180505")
end

function Quest71805:OnSubStart7180506(arg1)
    print("OnSubStart7180506")
    self:NotifyTo("Npc2003", 1, true)
    self:NotifyTo("Npc2009", 1, true)
end

function Quest71805:OnSubFinish7180506(arg1)
    print("OnSubFinish7180506")
    self:NotifyTo("Npc2003", 0, true)
    self:NotifyTo("Npc2009", 0, true)
    self:DestroyQuestNpcActor(npcs.Npc200301Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc200901Data.alias, 3)
end

function Quest71805:OnSubFailed7180506(arg1)
    print("OnSubFailed7180506")
end

function Quest71805:OnSubStart7180507(arg1)
    print("OnSubStart7180507")
end

function Quest71805:OnSubFinish7180507(arg1)
    print("OnSubFinish7180507")
end

function Quest71805:OnSubFailed7180507(arg1)
    print("OnSubFailed7180507")
end

return Quest71805
