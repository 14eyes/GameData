require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72228 = class("Quest72228", QuestActorProxy)
Quest72228.defaultAlias = "Quest72228"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72228:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72228:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7222805"] = self.OnSubStart7222805,
        ["7222803"] = self.OnSubStart7222803,
        ["7222802"] = self.OnSubStart7222802,
        ["7222804"] = self.OnSubStart7222804,
        ["7222801"] = self.OnSubStart7222801,
        ["7222806"] = self.OnSubStart7222806
    }
end

function Quest72228:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7222805"] = self.OnSubFinish7222805,
        ["7222803"] = self.OnSubFinish7222803,
        ["7222802"] = self.OnSubFinish7222802,
        ["7222804"] = self.OnSubFinish7222804,
        ["7222801"] = self.OnSubFinish7222801,
        ["7222806"] = self.OnSubFinish7222806
    }
end

function Quest72228:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7222805"] = self.OnSubFailed7222805,
        ["7222803"] = self.OnSubFailed7222803,
        ["7222802"] = self.OnSubFailed7222802,
        ["7222804"] = self.OnSubFailed7222804,
        ["7222801"] = self.OnSubFailed7222801,
        ["7222806"] = self.OnSubFailed7222806
    }
end

function Quest72228:Start()
    print("Start")
end

function Quest72228:OnDestroy()
    print("OnDestroy")
end

function Quest72228:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72228:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72228:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72228:OnSubStart7222805(arg1)
    print("OnSubStart7222805")
end

function Quest72228:OnSubFinish7222805(arg1)
    print("OnSubFinish7222805")
end

function Quest72228:OnSubFailed7222805(arg1)
    print("OnSubFailed7222805")
end

function Quest72228:OnSubStart7222803(arg1)
    print("OnSubStart7222803")
end

function Quest72228:OnSubFinish7222803(arg1)
    print("OnSubFinish7222803")
end

function Quest72228:OnSubFailed7222803(arg1)
    print("OnSubFailed7222803")
end

function Quest72228:OnSubStart7222802(arg1)
    print("OnSubStart7222802")
    self:PlayCutsceneIndex("7217202", function(arg1)
        arg1:FinishQuestID(false, 7222802)
    end, nil, nil, false)
end

function Quest72228:OnSubFinish7222802(arg1)
    print("OnSubFinish7222802")
end

function Quest72228:OnSubFailed7222802(arg1)
    print("OnSubFailed7222802")
end

function Quest72228:OnSubStart7222804(arg1)
    print("OnSubStart7222804")
end

function Quest72228:OnSubFinish7222804(arg1)
    print("OnSubFinish7222804")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_Ball, nil, "")
    end)
end

function Quest72228:OnSubFailed7222804(arg1)
    print("OnSubFailed7222804")
end

function Quest72228:OnSubStart7222801(arg1)
    print("OnSubStart7222801")
end

function Quest72228:OnSubFinish7222801(arg1)
    print("OnSubFinish7222801")
end

function Quest72228:OnSubFailed7222801(arg1)
    print("OnSubFailed7222801")
end

function Quest72228:OnSubStart7222806(arg1)
    print("OnSubStart7222806")
    self:PlayCutsceneIndex("7217212", function(arg1)
        arg1:FinishQuestID(false, 7222806)
    end, nil, nil, false)
end

function Quest72228:OnSubFinish7222806(arg1)
    print("OnSubFinish7222806")
end

function Quest72228:OnSubFailed7222806(arg1)
    print("OnSubFailed7222806")
end

return Quest72228
