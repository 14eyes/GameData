require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74046 = class("Quest74046", QuestActorProxy)
Quest74046.defaultAlias = "Quest74046"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74046:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74046:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7404601"] = self.OnSubStart7404601,
        ["7404602"] = self.OnSubStart7404602,
        ["7404603"] = self.OnSubStart7404603
    }
end

function Quest74046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7404601"] = self.OnSubFinish7404601,
        ["7404602"] = self.OnSubFinish7404602,
        ["7404603"] = self.OnSubFinish7404603
    }
end

function Quest74046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74046:Start()
    print("Start")
end

function Quest74046:OnDestroy()
    print("OnDestroy")
end

function Quest74046:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74046:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74046:OnSubStart7404601(arg1)
    print("OnSubStart7404601")
end

function Quest74046:OnSubFinish7404601(arg1)
    print("OnSubFinish7404601")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 1, nil, nil)
end

function Quest74046:OnSubStart7404602(arg1)
    print("OnSubStart7404602")
    this:CreateQuestNpcWithTrigger("Q74046Trigger", 7404602, 21393, 1, 5)
end

function Quest74046:OnSubFinish7404602(arg1)
    print("OnSubFinish7404602")
    this:SafeDestroyQuestNpc(npcs.Npc21393Data.alias, 3)
end

function Quest74046:OnSubStart7404603(arg1)
    print("OnSubStart7404603")
    actorUtils.FinishQuestID(false, 7404603)
end

function Quest74046:OnSubFinish7404603(arg1)
    print("OnSubFinish7404603")
end

return Quest74046
