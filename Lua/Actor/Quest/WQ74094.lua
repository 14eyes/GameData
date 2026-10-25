require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74094 = class("Quest74094", QuestActorProxy)
Quest74094.defaultAlias = "Quest74094"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74094:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74094:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7409401"] = self.OnSubStart7409401, ["7409402"] = self.OnSubStart7409402}
end

function Quest74094:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7409401"] = self.OnSubFinish7409401, ["7409402"] = self.OnSubFinish7409402}
end

function Quest74094:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74094:Start()
    print("Start")
end

function Quest74094:OnDestroy()
    print("OnDestroy")
end

function Quest74094:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74094:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74094:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74094:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74094:OnSubStart7409401(arg1)
    print("OnSubStart7409401")
end

function Quest74094:OnSubFinish7409401(arg1)
    print("OnSubFinish7409401")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
end

function Quest74094:OnSubStart7409402(arg1)
    print("OnSubStart7409402")
    this:CreateQuestNpcWithTrigger("Q74094Trigger", 7409402, npcs.Npc5236Data.id, 1, 5)
end

function Quest74094:OnSubFinish7409402(arg1)
    print("OnSubFinish7409402")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5236Data.alias)
end

return Quest74094
