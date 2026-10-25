require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74080 = class("Quest74080", QuestActorProxy)
Quest74080.defaultAlias = "Quest74080"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74080:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74080:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7408001"] = self.OnSubStart7408001,
        ["7408002"] = self.OnSubStart7408002,
        ["7408003"] = self.OnSubStart7408003,
        ["7408004"] = self.OnSubStart7408004,
        ["7408005"] = self.OnSubStart7408005,
        ["7408006"] = self.OnSubStart7408006
    }
end

function Quest74080:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7408001"] = self.OnSubFinish7408001,
        ["7408002"] = self.OnSubFinish7408002,
        ["7408003"] = self.OnSubFinish7408003,
        ["7408004"] = self.OnSubFinish7408004,
        ["7408005"] = self.OnSubFinish7408005,
        ["7408006"] = self.OnSubFinish7408006
    }
end

function Quest74080:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74080:Start()
    print("Start")
end

function Quest74080:OnDestroy()
    print("OnDestroy")
end

function Quest74080:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74080:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74080:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74080:OnSubStart7408001(arg1)
    print("OnSubStart7408001")
end

function Quest74080:OnSubFinish7408001(arg1)
    print("OnSubFinish7408001")
end

function Quest74080:OnSubStart7408002(arg1)
    print("OnSubStart7408002")
end

function Quest74080:OnSubFinish7408002(arg1)
    print("OnSubFinish7408002")
end

function Quest74080:OnSubStart7408003(arg1)
    print("OnSubStart7408003")
end

function Quest74080:OnSubFinish7408003(arg1)
    print("OnSubFinish7408003")
end

function Quest74080:OnSubStart7408004(arg1)
    print("OnSubStart7408004")
end

function Quest74080:OnSubFinish7408004(arg1)
    print("OnSubFinish7408004")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 0, nil, nil)
end

function Quest74080:OnSubStart7408005(arg1)
    print("OnSubStart7408005")
end

function Quest74080:OnSubFinish7408005(arg1)
    print("OnSubFinish7408005")
end

function Quest74080:OnSubStart7408006(arg1)
    print("OnSubStart7408006")
end

function Quest74080:OnSubFinish7408006(arg1)
    print("OnSubFinish7408006")
end

return Quest74080
