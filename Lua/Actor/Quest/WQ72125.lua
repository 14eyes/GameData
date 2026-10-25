require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72125 = class("Quest72125", QuestActorProxy)
Quest72125.defaultAlias = "Quest72125"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72125:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72125:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7212504"] = self.OnSubStart7212504,
        ["7212501"] = self.OnSubStart7212501,
        ["7212502"] = self.OnSubStart7212502,
        ["7212505"] = self.OnSubStart7212505,
        ["7212503"] = self.OnSubStart7212503
    }
end

function Quest72125:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7212504"] = self.OnSubFinish7212504,
        ["7212501"] = self.OnSubFinish7212501,
        ["7212502"] = self.OnSubFinish7212502,
        ["7212505"] = self.OnSubFinish7212505,
        ["7212503"] = self.OnSubFinish7212503
    }
end

function Quest72125:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7212504"] = self.OnSubFailed7212504,
        ["7212501"] = self.OnSubFailed7212501,
        ["7212502"] = self.OnSubFailed7212502,
        ["7212505"] = self.OnSubFailed7212505,
        ["7212503"] = self.OnSubFailed7212503
    }
end

function Quest72125:Start()
    print("Start")
end

function Quest72125:OnDestroy()
    print("OnDestroy")
end

function Quest72125:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72125:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72125:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72125:OnSubStart7212504(arg1)
    print("OnSubStart7212504")
    self:NotifyTo(npcs.Npc3165Data.alias, 1, true)
end

function Quest72125:OnSubFinish7212504(arg1)
    print("OnSubFinish7212504")
    self:LightNotifyTo(npcs.Npc3165Data.alias, 0, true)
end

function Quest72125:OnSubFailed7212504(arg1)
    print("OnSubFailed7212504")
end

function Quest72125:OnSubStart7212501(arg1)
    print("OnSubStart7212501")
end

function Quest72125:OnSubFinish7212501(arg1)
    print("OnSubFinish7212501")
end

function Quest72125:OnSubFailed7212501(arg1)
    print("OnSubFailed7212501")
end

function Quest72125:OnSubStart7212502(arg1)
    print("OnSubStart7212502")
end

function Quest72125:OnSubFinish7212502(arg1)
    print("OnSubFinish7212502")
end

function Quest72125:OnSubFailed7212502(arg1)
    print("OnSubFailed7212502")
end

function Quest72125:OnSubStart7212505(arg1)
    print("OnSubStart7212505")
end

function Quest72125:OnSubFinish7212505(arg1)
    print("OnSubFinish7212505")
end

function Quest72125:OnSubFailed7212505(arg1)
    print("OnSubFailed7212505")
end

function Quest72125:OnSubStart7212503(arg1)
    print("OnSubStart7212503")
    actorMgr:CreateActorWithPos(datas.Q72125Trigger_.alias, datas.Q72125Trigger_.script, datas.Q72125Trigger_.id, 0, datas.Q72125Trigger_.point.pos, datas.Q72125Trigger_.point.rot, true, false, 3)
end

function Quest72125:OnSubFinish7212503(arg1)
    print("OnSubFinish7212503")
end

function Quest72125:OnSubFailed7212503(arg1)
    print("OnSubFailed7212503")
end

return Quest72125
