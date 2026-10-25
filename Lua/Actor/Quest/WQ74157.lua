require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74157 = class("Quest74157", QuestActorProxy)
Quest74157.defaultAlias = "Quest74157"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74157:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74157:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7415704"] = self.OnSubStart7415704,
        ["7415701"] = self.OnSubStart7415701,
        ["7415702"] = self.OnSubStart7415702,
        ["7415703"] = self.OnSubStart7415703
    }
end

function Quest74157:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7415704"] = self.OnSubFinish7415704,
        ["7415701"] = self.OnSubFinish7415701,
        ["7415702"] = self.OnSubFinish7415702,
        ["7415703"] = self.OnSubFinish7415703
    }
end

function Quest74157:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74157:Start()
    print("Start")
end

function Quest74157:OnDestroy()
    print("OnDestroy")
end

function Quest74157:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74157:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74157:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74157:OnSubStart7415704(arg1)
    print("OnSubStart7415704")
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21257Data.id, 0)
end

function Quest74157:OnSubFinish7415704(arg1)
    print("OnSubFinish7415704")
    this:SafeDestroyQuestNpc(npcs.Npc21253Data.alias, 3)
end

function Quest74157:OnSubStart7415701(arg1)
    print("OnSubStart7415701")
end

function Quest74157:OnSubFinish7415701(arg1)
    print("OnSubFinish7415701")
end

function Quest74157:OnSubStart7415702(arg1)
    print("OnSubStart7415702")
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21252Data.id, 0)
end

function Quest74157:OnSubFinish7415702(arg1)
    print("OnSubFinish7415702")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21253Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21252Data.alias, 3)
end

function Quest74157:OnSubStart7415703(arg1)
    print("OnSubStart7415703")
end

function Quest74157:OnSubFinish7415703(arg1)
    print("OnSubFinish7415703")
end

return Quest74157
