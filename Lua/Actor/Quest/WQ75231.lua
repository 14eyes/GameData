require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75231 = class("Quest75231", QuestActorProxy)
Quest75231.defaultAlias = "Quest75231"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75231:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75231:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7523101"] = self.OnSubStart7523101, ["7523102"] = self.OnSubStart7523102}
end

function Quest75231:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7523101"] = self.OnSubFinish7523101, ["7523102"] = self.OnSubFinish7523102}
end

function Quest75231:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75231:Start()
    print("Start")
end

function Quest75231:OnDestroy()
    print("OnDestroy")
end

function Quest75231:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75231:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75231:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75231:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest75231:OnSubStart7523101(arg1)
    print("OnSubStart7523101")
    this:CreateQuestNpc(arg1, npcs.Npc6522.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc6522.alias, 75231):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest75231:OnSubFinish7523101(arg1)
    print("OnSubFinish7523101")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_2, 0, nil, nil, nil)
end

function Quest75231:OnSubStart7523102(arg1)
    print("OnSubStart7523102")
    this:GetQuestNpcActor(npcs.Npc6522.alias, 75231):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest75231:OnSubFinish7523102(arg1)
    print("OnSubFinish7523102")
    this:SafeDestroyQuestNpc(npcs.Npc6522.alias, 3)
end

return Quest75231
