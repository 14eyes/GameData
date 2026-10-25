require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72013 = class("Quest72013", QuestActorProxy)
Quest72013.defaultAlias = "Quest72013"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72013:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7201301"] = self.OnSubStart7201301,
        ["7201302"] = self.OnSubStart7201302,
        ["7201303"] = self.OnSubStart7201303
    }
end

function Quest72013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7201301"] = self.OnSubFinish7201301,
        ["7201302"] = self.OnSubFinish7201302,
        ["7201303"] = self.OnSubFinish7201303
    }
end

function Quest72013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72013:Start()
    print("Start")
end

function Quest72013:OnDestroy()
    print("OnDestroy")
end

function Quest72013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72013:OnSubStart7201301(arg1)
    print("OnSubStart7201301")
end

function Quest72013:OnSubFinish7201301(arg1)
    print("OnSubFinish7201301")
end

function Quest72013:OnSubStart7201302(arg1)
    print("OnSubStart7201302")
    this:EnterSceneLookCameraByParam(nil)
end

function Quest72013:OnSubFinish7201302(arg1)
    print("OnSubFinish7201302")
end

function Quest72013:OnSubStart7201303(arg1)
    print("OnSubStart7201303")
end

function Quest72013:OnSubFinish7201303(arg1)
    print("OnSubFinish7201303")
end

return Quest72013
