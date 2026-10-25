require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74155 = class("Quest74155", QuestActorProxy)
Quest74155.defaultAlias = "Quest74155"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74155:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74155:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7415502"] = self.OnSubStart7415502, ["7415501"] = self.OnSubStart7415501}
end

function Quest74155:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7415502"] = self.OnSubFinish7415502, ["7415501"] = self.OnSubFinish7415501}
end

function Quest74155:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74155:Start()
    print("Start")
end

function Quest74155:OnDestroy()
    print("OnDestroy")
end

function Quest74155:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74155:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74155:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74155:OnSubStart7415502(arg1)
    print("OnSubStart7415502")
    this:CreateQuestNpc(arg1, npcs.Npc21253Data.id, 0)
end

function Quest74155:OnSubFinish7415502(arg1)
    print("OnSubFinish7415502")
end

function Quest74155:OnSubStart7415501(arg1)
    print("OnSubStart7415501")
    actorMgr:CreateActorWithPos("Q74155Trigger", "Actor/Gadget/Q74155Trigger", 70900002, 0, {x = 3590.083, y = 435.072, z = 4535.924}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74155:OnSubFinish7415501(arg1)
    print("OnSubFinish7415501")
    this:NarratorOnlyTaskByData(datas.Narrator_7415501)
end

return Quest74155
