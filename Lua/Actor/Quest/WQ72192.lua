require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72192 = class("Quest72192", QuestActorProxy)
Quest72192.defaultAlias = "Quest72192"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72192:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72192:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7219201"] = self.OnSubStart7219201,
        ["7219202"] = self.OnSubStart7219202,
        ["7219203"] = self.OnSubStart7219203,
        ["7219204"] = self.OnSubStart7219204,
        ["7219205"] = self.OnSubStart7219205
    }
end

function Quest72192:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7219201"] = self.OnSubFinish7219201,
        ["7219202"] = self.OnSubFinish7219202,
        ["7219203"] = self.OnSubFinish7219203,
        ["7219204"] = self.OnSubFinish7219204,
        ["7219205"] = self.OnSubFinish7219205
    }
end

function Quest72192:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7219201"] = self.OnSubFailed7219201,
        ["7219202"] = self.OnSubFailed7219202,
        ["7219203"] = self.OnSubFailed7219203,
        ["7219204"] = self.OnSubFailed7219204,
        ["7219205"] = self.OnSubFailed7219205
    }
end

function Quest72192:Start()
    print("Start")
end

function Quest72192:OnDestroy()
    print("OnDestroy")
end

function Quest72192:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72192:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72192:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72192:OnSubStart7219201(arg1)
    print("OnSubStart7219201")
end

function Quest72192:OnSubFinish7219201(arg1)
    print("OnSubFinish7219201")
end

function Quest72192:OnSubFailed7219201(arg1)
    print("OnSubFailed7219201")
end

function Quest72192:OnSubStart7219202(arg1)
    print("OnSubStart7219202")
end

function Quest72192:OnSubFinish7219202(arg1)
    print("OnSubFinish7219202")
end

function Quest72192:OnSubFailed7219202(arg1)
    print("OnSubFailed7219202")
end

function Quest72192:OnSubStart7219203(arg1)
    print("OnSubStart7219203")
end

function Quest72192:OnSubFinish7219203(arg1)
    print("OnSubFinish7219203")
end

function Quest72192:OnSubFailed7219203(arg1)
    print("OnSubFailed7219203")
end

function Quest72192:OnSubStart7219204(arg1)
    print("OnSubStart7219204")
    actorMgr:CreateActorWithPos(datas.Q7219204Trigger_04_.alias, datas.Q7219204Trigger_04_.script, datas.Q7219204Trigger_04_.id, 0, datas.Q7219204Trigger_04_.point.pos, datas.Q7219204Trigger_04_.point.rot, true, false, 5)
end

function Quest72192:OnSubFinish7219204(arg1)
    print("OnSubFinish7219204")
end

function Quest72192:OnSubFailed7219204(arg1)
    print("OnSubFailed7219204")
end

function Quest72192:OnSubStart7219205(arg1)
    print("OnSubStart7219205")
end

function Quest72192:OnSubFinish7219205(arg1)
    print("OnSubFinish7219205")
end

function Quest72192:OnSubFailed7219205(arg1)
    print("OnSubFailed7219205")
end

return Quest72192
