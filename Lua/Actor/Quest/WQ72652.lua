require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72652 = class("Quest72652", QuestActorProxy)
Quest72652.defaultAlias = "Quest72652"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72652:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72652:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7265201"] = self.OnSubStart7265201,
        ["7265202"] = self.OnSubStart7265202,
        ["7265203"] = self.OnSubStart7265203
    }
end

function Quest72652:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7265201"] = self.OnSubFinish7265201,
        ["7265202"] = self.OnSubFinish7265202,
        ["7265203"] = self.OnSubFinish7265203
    }
end

function Quest72652:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7265201"] = self.OnSubFailed7265201,
        ["7265202"] = self.OnSubFailed7265202,
        ["7265203"] = self.OnSubFailed7265203
    }
end

function Quest72652:Start()
    print("Start")
end

function Quest72652:OnDestroy()
    print("OnDestroy")
end

function Quest72652:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72652:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72652:OnMainCanceled(arg1)
    print("OnMainCanceled")
    local actor = actorMgr:GetActor(datas.Q72652Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72652:OnSubStart7265201(arg1)
    print("OnSubStart7265201")
end

function Quest72652:OnSubFinish7265201(arg1)
    print("OnSubFinish7265201")
    self:ShowBlackScreen(0.5, 3, 0.5)
end

function Quest72652:OnSubFailed7265201(arg1)
    print("OnSubFailed7265201")
end

function Quest72652:OnSubStart7265202(arg1)
    print("OnSubStart7265202")
    actorMgr:CreateActorWithPos(datas.Q72652Trigger_.alias, datas.Q72652Trigger_.script, datas.Q72652Trigger_.id, 0, datas.Q72652Trigger_.point.pos, datas.Q72652Trigger_.point.rot, true, false, 3)
end

function Quest72652:OnSubFinish7265202(arg1)
    print("OnSubFinish7265202")
end

function Quest72652:OnSubFailed7265202(arg1)
    print("OnSubFailed7265202")
end

function Quest72652:OnSubStart7265203(arg1)
    print("OnSubStart7265203")
end

function Quest72652:OnSubFinish7265203(arg1)
    self:CallDelay(3, function()
        actorUtils.ShowBlitzRushStagePage(1)
    end)
end

function Quest72652:OnSubFailed7265203(arg1)
    print("OnSubFailed7265203")
end

return Quest72652
