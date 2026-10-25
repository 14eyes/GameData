require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72150 = class("Quest72150", QuestActorProxy)
Quest72150.defaultAlias = "Quest72150"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72150:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72150:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7215001"] = self.OnSubStart7215001,
        ["7215002"] = self.OnSubStart7215002,
        ["7215009"] = self.OnSubStart7215009,
        ["7215003"] = self.OnSubStart7215003,
        ["7215008"] = self.OnSubStart7215008,
        ["7215004"] = self.OnSubStart7215004,
        ["7215005"] = self.OnSubStart7215005,
        ["7215006"] = self.OnSubStart7215006,
        ["7215007"] = self.OnSubStart7215007
    }
end

function Quest72150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7215001"] = self.OnSubFinish7215001,
        ["7215002"] = self.OnSubFinish7215002,
        ["7215009"] = self.OnSubFinish7215009,
        ["7215003"] = self.OnSubFinish7215003,
        ["7215008"] = self.OnSubFinish7215008,
        ["7215004"] = self.OnSubFinish7215004,
        ["7215005"] = self.OnSubFinish7215005,
        ["7215006"] = self.OnSubFinish7215006,
        ["7215007"] = self.OnSubFinish7215007
    }
end

function Quest72150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7215001"] = self.OnSubFailed7215001,
        ["7215002"] = self.OnSubFailed7215002,
        ["7215009"] = self.OnSubFailed7215009,
        ["7215003"] = self.OnSubFailed7215003,
        ["7215008"] = self.OnSubFailed7215008,
        ["7215004"] = self.OnSubFailed7215004,
        ["7215005"] = self.OnSubFailed7215005,
        ["7215006"] = self.OnSubFailed7215006,
        ["7215007"] = self.OnSubFailed7215007
    }
end

function Quest72150:Start()
    print("Start")
end

function Quest72150:OnDestroy()
    print("OnDestroy")
end

function Quest72150:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72150:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72150:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72150:DestroyNPC()
    print("DestroyNPC")
    self:SafeDestroyQuestNpc(npcs.Npc3194Data.alias, 3)
end

function Quest72150:OnSubStart7215001(arg1)
    print("OnSubStart7215001")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72150:OnSubFinish7215001(arg1)
    print("OnSubFinish7215001")
end

function Quest72150:OnSubFailed7215001(arg1)
    print("OnSubFailed7215001")
end

function Quest72150:OnSubStart7215002(arg1)
    print("OnSubStart7215002")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72150:OnSubFinish7215002(arg1)
    print("OnSubFinish7215002")
end

function Quest72150:OnSubFailed7215002(arg1)
    print("OnSubFailed7215002")
end

function Quest72150:OnSubStart7215009(arg1)
    print("OnSubStart7215009")
end

function Quest72150:OnSubFinish7215009(arg1)
    print("OnSubFinish7215009")
end

function Quest72150:OnSubFailed7215009(arg1)
    print("OnSubFailed7215009")
end

function Quest72150:OnSubStart7215003(arg1)
    print("OnSubStart7215003")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72150:OnSubFinish7215003(arg1)
    print("OnSubFinish7215003")
end

function Quest72150:OnSubFailed7215003(arg1)
    print("OnSubFailed7215003")
end

function Quest72150:OnSubStart7215008(arg1)
    print("OnSubStart7215008")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72150:OnSubFinish7215008(arg1)
    print("OnSubFinish7215008")
end

function Quest72150:OnSubFailed7215008(arg1)
    print("OnSubFailed7215008")
end

function Quest72150:OnSubStart7215004(arg1)
    print("OnSubStart7215004")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72150:OnSubFinish7215004(arg1)
    print("OnSubFinish7215004")
end

function Quest72150:OnSubFailed7215004(arg1)
    print("OnSubFailed7215004")
end

function Quest72150:OnSubStart7215005(arg1)
    print("OnSubStart7215005")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72150:OnSubFinish7215005(arg1)
    print("OnSubFinish7215005")
end

function Quest72150:OnSubFailed7215005(arg1)
    print("OnSubFailed7215005")
end

function Quest72150:OnSubStart7215006(arg1)
    print("OnSubStart7215006")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72150:OnSubFinish7215006(arg1)
    print("OnSubFinish7215006")
end

function Quest72150:OnSubFailed7215006(arg1)
    print("OnSubFailed7215006")
end

function Quest72150:OnSubStart7215007(arg1)
    print("OnSubStart7215007")
    self:CreateQuestNpc(arg1, npcs.Npc3194Data.id, 1)
    self:NotifyTo(npcs.Npc3194Data.alias, 2, true)
end

function Quest72150:OnSubFinish7215007(arg1)
    print("OnSubFinish7215007")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNPC, nil, nil, "", false, true)
end

function Quest72150:OnSubFailed7215007(arg1)
    print("OnSubFailed7215007")
end

return Quest72150
