require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74150 = class("Quest74150", QuestActorProxy)
Quest74150.defaultAlias = "Quest74150"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74150:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74150:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7415004"] = self.OnSubStart7415004,
        ["7415001"] = self.OnSubStart7415001,
        ["7415005"] = self.OnSubStart7415005,
        ["7415006"] = self.OnSubStart7415006,
        ["7415007"] = self.OnSubStart7415007,
        ["7415002"] = self.OnSubStart7415002,
        ["7415008"] = self.OnSubStart7415008,
        ["7415003"] = self.OnSubStart7415003
    }
end

function Quest74150:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7415004"] = self.OnSubFinish7415004,
        ["7415001"] = self.OnSubFinish7415001,
        ["7415005"] = self.OnSubFinish7415005,
        ["7415006"] = self.OnSubFinish7415006,
        ["7415007"] = self.OnSubFinish7415007,
        ["7415002"] = self.OnSubFinish7415002,
        ["7415008"] = self.OnSubFinish7415008,
        ["7415003"] = self.OnSubFinish7415003
    }
end

function Quest74150:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74150:Start()
    print("Start")
end

function Quest74150:OnDestroy()
    print("OnDestroy")
end

function Quest74150:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74150:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74150:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74150:OnSubStart7415004(arg1)
    print("OnSubStart7415004")
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
end

function Quest74150:OnSubFinish7415004(arg1)
    print("OnSubFinish7415004")
end

function Quest74150:OnSubStart7415001(arg1)
    print("OnSubStart7415001")
    this:CreateQuestNpc(arg1, npcs.Npc21249Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21252Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
end

function Quest74150:OnSubFinish7415001(arg1)
    print("OnSubFinish7415001")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74150:OnSubStart7415005(arg1)
    print("OnSubStart7415005")
    this:CreateQuestNpc(arg1, npcs.Npc21249Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21252Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21255Data.id, 0)
end

function Quest74150:OnSubFinish7415005(arg1)
    print("OnSubFinish7415005")
    this:SafeDestroyQuestNpc(npcs.Npc21255Data.alias, 3)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest74150:OnSubStart7415006(arg1)
    print("OnSubStart7415006")
end

function Quest74150:OnSubFinish7415006(arg1)
    print("OnSubFinish7415006")
end

function Quest74150:OnSubStart7415007(arg1)
    print("OnSubStart7415007")
end

function Quest74150:OnSubFinish7415007(arg1)
    print("OnSubFinish7415007")
end

function Quest74150:OnSubStart7415002(arg1)
    print("OnSubStart7415002")
end

function Quest74150:OnSubFinish7415002(arg1)
    print("OnSubFinish7415002")
end

function Quest74150:OnSubStart7415008(arg1)
    print("OnSubStart7415008")
end

function Quest74150:OnSubFinish7415008(arg1)
    print("OnSubFinish7415008")
end

function Quest74150:OnSubStart7415003(arg1)
    print("OnSubStart7415003")
    this:CreateQuestNpc(arg1, npcs.Npc21249Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21252Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
end

function Quest74150:OnSubFinish7415003(arg1)
    print("OnSubFinish7415003")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21249Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21252Data.alias, 3)
end

return Quest74150
