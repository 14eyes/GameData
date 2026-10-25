require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72149 = class("Quest72149", QuestActorProxy)
Quest72149.defaultAlias = "Quest72149"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72149:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72149:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7214901"] = self.OnSubStart7214901,
        ["7214902"] = self.OnSubStart7214902,
        ["7214907"] = self.OnSubStart7214907,
        ["7214903"] = self.OnSubStart7214903,
        ["7214904"] = self.OnSubStart7214904,
        ["7214905"] = self.OnSubStart7214905,
        ["7214906"] = self.OnSubStart7214906
    }
end

function Quest72149:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7214901"] = self.OnSubFinish7214901,
        ["7214902"] = self.OnSubFinish7214902,
        ["7214907"] = self.OnSubFinish7214907,
        ["7214903"] = self.OnSubFinish7214903,
        ["7214904"] = self.OnSubFinish7214904,
        ["7214905"] = self.OnSubFinish7214905,
        ["7214906"] = self.OnSubFinish7214906
    }
end

function Quest72149:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7214901"] = self.OnSubFailed7214901,
        ["7214902"] = self.OnSubFailed7214902,
        ["7214907"] = self.OnSubFailed7214907,
        ["7214903"] = self.OnSubFailed7214903,
        ["7214904"] = self.OnSubFailed7214904,
        ["7214905"] = self.OnSubFailed7214905,
        ["7214906"] = self.OnSubFailed7214906
    }
end

function Quest72149:Start()
    print("Start")
end

function Quest72149:OnDestroy()
    print("OnDestroy")
end

function Quest72149:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72149:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72149:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72149:DestroyNPC()
    print("DestroyNPC")
    self:SafeDestroyQuestNpc(npcs.Npc3193Data.alias, 3)
end

function Quest72149:OnSubStart7214901(arg1)
    print("OnSubStart7214901")
    self:CreateQuestNpc(arg1, npcs.Npc3193Data.id, 1)
    self:NotifyTo(npcs.Npc3193Data.alias, 2, true)
end

function Quest72149:OnSubFinish7214901(arg1)
    print("OnSubFinish7214901")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNPC, nil, nil, "", false, true)
end

function Quest72149:OnSubFailed7214901(arg1)
    print("OnSubFailed7214901")
end

function Quest72149:OnSubStart7214902(arg1)
    print("OnSubStart7214902")
    self:NotifyTo(npcs.Npc3193Data.alias, 1, true)
end

function Quest72149:OnSubFinish7214902(arg1)
    print("OnSubFinish7214902")
end

function Quest72149:OnSubFailed7214902(arg1)
    print("OnSubFailed7214902")
end

function Quest72149:OnSubStart7214907(arg1)
    print("OnSubStart7214907")
end

function Quest72149:OnSubFinish7214907(arg1)
    print("OnSubFinish7214907")
end

function Quest72149:OnSubFailed7214907(arg1)
    print("OnSubFailed7214907")
end

function Quest72149:OnSubStart7214903(arg1)
    print("OnSubStart7214903")
    self:NotifyTo(npcs.Npc3193Data.alias, 1, true)
end

function Quest72149:OnSubFinish7214903(arg1)
    print("OnSubFinish7214903")
end

function Quest72149:OnSubFailed7214903(arg1)
    print("OnSubFailed7214903")
end

function Quest72149:OnSubStart7214904(arg1)
    print("OnSubStart7214904")
    self:NotifyTo(npcs.Npc3193Data.alias, 1, true)
end

function Quest72149:OnSubFinish7214904(arg1)
    print("OnSubFinish7214904")
    self:PlayCutsceneIndex("7214904", nil, nil, nil, false)
end

function Quest72149:OnSubFailed7214904(arg1)
    print("OnSubFailed7214904")
end

function Quest72149:OnSubStart7214905(arg1)
    print("OnSubStart7214905")
    self:CreateQuestNpc(arg1, npcs.Npc3193Data.id, 1)
    self:NotifyTo(npcs.Npc3193Data.alias, 2, true)
end

function Quest72149:OnSubFinish7214905(arg1)
    print("OnSubFinish7214905")
end

function Quest72149:OnSubFailed7214905(arg1)
    print("OnSubFailed7214905")
end

function Quest72149:OnSubStart7214906(arg1)
    print("OnSubStart7214906")
    self:CreateQuestNpc(arg1, npcs.Npc3193Data.id, 1)
    self:NotifyTo(npcs.Npc3193Data.alias, 2, true)
end

function Quest72149:OnSubFinish7214906(arg1)
    print("OnSubFinish7214906")
    self:ShowBlackScreen(0.5, 1, 0.5, self.DestroyNPC, nil, nil, "", false, true)
end

function Quest72149:OnSubFailed7214906(arg1)
    print("OnSubFailed7214906")
end

return Quest72149
