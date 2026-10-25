require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74097 = class("Quest74097", QuestActorProxy)
Quest74097.defaultAlias = "Quest74097"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74097:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74097:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7409701"] = self.OnSubStart7409701,
        ["7409702"] = self.OnSubStart7409702,
        ["7409703"] = self.OnSubStart7409703
    }
end

function Quest74097:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7409701"] = self.OnSubFinish7409701,
        ["7409702"] = self.OnSubFinish7409702,
        ["7409703"] = self.OnSubFinish7409703
    }
end

function Quest74097:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74097:Start()
    print("Start")
end

function Quest74097:OnDestroy()
    print("OnDestroy")
end

function Quest74097:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74097:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74097:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74097:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74097:OnSubStart7409701(arg1)
    print("OnSubStart7409701")
end

function Quest74097:OnSubFinish7409701(arg1)
    print("OnSubFinish7409701")
end

function Quest74097:OnSubStart7409702(arg1)
    print("OnSubStart7409702")
end

function Quest74097:OnSubFinish7409702(arg1)
    print("OnSubFinish7409702")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 1, nil, nil)
end

function Quest74097:OnSubStart7409703(arg1)
    print("OnSubStart7409703")
    this:CreateQuestNpcWithTrigger("Q74097Trigger", 7409703, npcs.Npc5218Data.id, 1, 5)
end

function Quest74097:OnSubFinish7409703(arg1)
    print("OnSubFinish7409703")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5218Data.alias)
end

return Quest74097
