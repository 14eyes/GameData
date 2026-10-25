require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72126 = class("Quest72126", QuestActorProxy)
Quest72126.defaultAlias = "Quest72126"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72126:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72126:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7212601"] = self.OnSubStart7212601,
        ["7212602"] = self.OnSubStart7212602,
        ["7212603"] = self.OnSubStart7212603,
        ["7212605"] = self.OnSubStart7212605,
        ["7212604"] = self.OnSubStart7212604
    }
end

function Quest72126:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7212601"] = self.OnSubFinish7212601,
        ["7212602"] = self.OnSubFinish7212602,
        ["7212603"] = self.OnSubFinish7212603,
        ["7212605"] = self.OnSubFinish7212605,
        ["7212604"] = self.OnSubFinish7212604
    }
end

function Quest72126:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7212601"] = self.OnSubFailed7212601,
        ["7212602"] = self.OnSubFailed7212602,
        ["7212603"] = self.OnSubFailed7212603,
        ["7212605"] = self.OnSubFailed7212605,
        ["7212604"] = self.OnSubFailed7212604
    }
end

function Quest72126:Start()
    print("Start")
end

function Quest72126:OnDestroy()
    print("OnDestroy")
end

function Quest72126:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72126:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72126:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72126:OnSubStart7212601(arg1)
    print("OnSubStart7212601")
end

function Quest72126:OnSubFinish7212601(arg1)
    print("OnSubFinish7212601")
end

function Quest72126:OnSubFailed7212601(arg1)
    print("OnSubFailed7212601")
end

function Quest72126:OnSubStart7212602(arg1)
    print("OnSubStart7212602")
end

function Quest72126:OnSubFinish7212602(arg1)
    print("OnSubFinish7212602")
end

function Quest72126:OnSubFailed7212602(arg1)
    print("OnSubFailed7212602")
end

function Quest72126:OnSubStart7212603(arg1)
    print("OnSubStart7212603")
end

function Quest72126:OnSubFinish7212603(arg1)
    print("OnSubFinish7212603")
end

function Quest72126:OnSubFailed7212603(arg1)
    print("OnSubFailed7212603")
end

function Quest72126:OnSubStart7212605(arg1)
    print("OnSubStart7212605")
end

function Quest72126:OnSubFinish7212605(arg1)
    print("OnSubFinish7212605")
end

function Quest72126:OnSubFailed7212605(arg1)
    print("OnSubFailed7212605")
end

function Quest72126:OnSubStart7212604(arg1)
    print("OnSubStart7212604")
    actorMgr:CreateActorWithPos(datas.Q72126Trigger_.alias, datas.Q72126Trigger_.script, datas.Q72126Trigger_.id, 0, datas.Q72126Trigger_.point.pos, datas.Q72126Trigger_.point.rot, true, false, 3)
end

function Quest72126:OnSubFinish7212604(arg1)
    print("OnSubFinish7212604")
end

function Quest72126:OnSubFailed7212604(arg1)
    print("OnSubFailed7212604")
end

return Quest72126
