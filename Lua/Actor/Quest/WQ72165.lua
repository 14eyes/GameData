require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72165 = class("Quest72165", QuestActorProxy)
Quest72165.defaultAlias = "Quest72165"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72165:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72165:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7216501"] = self.OnSubStart7216501,
        ["7216502"] = self.OnSubStart7216502,
        ["7216503"] = self.OnSubStart7216503,
        ["7216504"] = self.OnSubStart7216504,
        ["7216505"] = self.OnSubStart7216505,
        ["7216506"] = self.OnSubStart7216506,
        ["7216507"] = self.OnSubStart7216507,
        ["7216508"] = self.OnSubStart7216508,
        ["7216509"] = self.OnSubStart7216509,
        ["7216510"] = self.OnSubStart7216510
    }
end

function Quest72165:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7216501"] = self.OnSubFinish7216501,
        ["7216502"] = self.OnSubFinish7216502,
        ["7216503"] = self.OnSubFinish7216503,
        ["7216504"] = self.OnSubFinish7216504,
        ["7216505"] = self.OnSubFinish7216505,
        ["7216506"] = self.OnSubFinish7216506,
        ["7216507"] = self.OnSubFinish7216507,
        ["7216508"] = self.OnSubFinish7216508,
        ["7216509"] = self.OnSubFinish7216509,
        ["7216510"] = self.OnSubFinish7216510
    }
end

function Quest72165:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7216501"] = self.OnSubFailed7216501,
        ["7216502"] = self.OnSubFailed7216502,
        ["7216503"] = self.OnSubFailed7216503,
        ["7216504"] = self.OnSubFailed7216504,
        ["7216505"] = self.OnSubFailed7216505,
        ["7216506"] = self.OnSubFailed7216506,
        ["7216507"] = self.OnSubFailed7216507,
        ["7216508"] = self.OnSubFailed7216508,
        ["7216509"] = self.OnSubFailed7216509,
        ["7216510"] = self.OnSubFailed7216510
    }
end

function Quest72165:Start()
    print("Start")
end

function Quest72165:OnDestroy()
    print("OnDestroy")
end

function Quest72165:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72165:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72165:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72165:CreateNPC()
    print("CreateNPC")
    self:CreateQuestNpcById(7216501, npcs.Npc3194Data.id, 1)
end

function Quest72165:OnSubStart7216501(arg1)
    print("OnSubStart7216501")
    self:CallDelay(1, self.CreateNPC)
end

function Quest72165:OnSubFinish7216501(arg1)
    print("OnSubFinish7216501")
end

function Quest72165:OnSubFailed7216501(arg1)
    print("OnSubFailed7216501")
end

function Quest72165:OnSubStart7216502(arg1)
    print("OnSubStart7216502")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72165:OnSubFinish7216502(arg1)
    print("OnSubFinish7216502")
end

function Quest72165:OnSubFailed7216502(arg1)
    print("OnSubFailed7216502")
end

function Quest72165:OnSubStart7216503(arg1)
    print("OnSubStart7216503")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72165:OnSubFinish7216503(arg1)
    print("OnSubFinish7216503")
end

function Quest72165:OnSubFailed7216503(arg1)
    print("OnSubFailed7216503")
end

function Quest72165:OnSubStart7216504(arg1)
    print("OnSubStart7216504")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72165:OnSubFinish7216504(arg1)
    print("OnSubFinish7216504")
end

function Quest72165:OnSubFailed7216504(arg1)
    print("OnSubFailed7216504")
end

function Quest72165:OnSubStart7216505(arg1)
    print("OnSubStart7216505")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72165:OnSubFinish7216505(arg1)
    print("OnSubFinish7216505")
end

function Quest72165:OnSubFailed7216505(arg1)
    print("OnSubFailed7216505")
end

function Quest72165:OnSubStart7216506(arg1)
    print("OnSubStart7216506")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72165:OnSubFinish7216506(arg1)
    print("OnSubFinish7216506")
end

function Quest72165:OnSubFailed7216506(arg1)
    print("OnSubFailed7216506")
end

function Quest72165:OnSubStart7216507(arg1)
    print("OnSubStart7216507")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72165:OnSubFinish7216507(arg1)
    print("OnSubFinish7216507")
end

function Quest72165:OnSubFailed7216507(arg1)
    print("OnSubFailed7216507")
end

function Quest72165:OnSubStart7216508(arg1)
    print("OnSubStart7216508")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72165:OnSubFinish7216508(arg1)
    print("OnSubFinish7216508")
end

function Quest72165:OnSubFailed7216508(arg1)
    print("OnSubFailed7216508")
end

function Quest72165:OnSubStart7216509(arg1)
    print("OnSubStart7216509")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72165:OnSubFinish7216509(arg1)
    print("OnSubFinish7216509")
end

function Quest72165:OnSubFailed7216509(arg1)
    print("OnSubFailed7216509")
end

function Quest72165:OnSubStart7216510(arg1)
    print("OnSubStart7216510")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72165:OnSubFinish7216510(arg1)
    print("OnSubFinish7216510")
end

function Quest72165:OnSubFailed7216510(arg1)
    print("OnSubFailed7216510")
end

return Quest72165
