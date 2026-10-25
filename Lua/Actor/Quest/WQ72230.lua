require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72230 = class("Quest72230", QuestActorProxy)
Quest72230.defaultAlias = "Quest72230"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72230:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72230:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7223005"] = self.OnSubStart7223005,
        ["7223003"] = self.OnSubStart7223003,
        ["7223002"] = self.OnSubStart7223002,
        ["7223004"] = self.OnSubStart7223004,
        ["7223001"] = self.OnSubStart7223001,
        ["7223006"] = self.OnSubStart7223006
    }
end

function Quest72230:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7223005"] = self.OnSubFinish7223005,
        ["7223003"] = self.OnSubFinish7223003,
        ["7223002"] = self.OnSubFinish7223002,
        ["7223004"] = self.OnSubFinish7223004,
        ["7223001"] = self.OnSubFinish7223001,
        ["7223006"] = self.OnSubFinish7223006
    }
end

function Quest72230:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7223005"] = self.OnSubFailed7223005,
        ["7223003"] = self.OnSubFailed7223003,
        ["7223002"] = self.OnSubFailed7223002,
        ["7223004"] = self.OnSubFailed7223004,
        ["7223001"] = self.OnSubFailed7223001,
        ["7223006"] = self.OnSubFailed7223006
    }
end

function Quest72230:Start()
    print("Start")
end

function Quest72230:OnDestroy()
    print("OnDestroy")
end

function Quest72230:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72230:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72230:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72230:OnSubStart7223005(arg1)
    print("OnSubStart7223005")
end

function Quest72230:OnSubFinish7223005(arg1)
    print("OnSubFinish7223005")
end

function Quest72230:OnSubFailed7223005(arg1)
    print("OnSubFailed7223005")
end

function Quest72230:OnSubStart7223003(arg1)
    print("OnSubStart7223003")
end

function Quest72230:OnSubFinish7223003(arg1)
    print("OnSubFinish7223003")
end

function Quest72230:OnSubFailed7223003(arg1)
    print("OnSubFailed7223003")
end

function Quest72230:OnSubStart7223002(arg1)
    print("OnSubStart7223002")
    self:PlayCutsceneIndex("7217203", function(arg1)
        arg1:FinishQuestID(false, 7223002)
    end, nil, nil, false)
end

function Quest72230:OnSubFinish7223002(arg1)
    print("OnSubFinish7223002")
end

function Quest72230:OnSubFailed7223002(arg1)
    print("OnSubFailed7223002")
end

function Quest72230:OnSubStart7223004(arg1)
    print("OnSubStart7223004")
end

function Quest72230:OnSubFinish7223004(arg1)
    print("OnSubFinish7223004")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_Ball, nil, "")
    end)
end

function Quest72230:OnSubFailed7223004(arg1)
    print("OnSubFailed7223004")
end

function Quest72230:OnSubStart7223001(arg1)
    print("OnSubStart7223001")
end

function Quest72230:OnSubFinish7223001(arg1)
    print("OnSubFinish7223001")
end

function Quest72230:OnSubFailed7223001(arg1)
    print("OnSubFailed7223001")
end

function Quest72230:OnSubStart7223006(arg1)
    print("OnSubStart7223006")
    self:PlayCutsceneIndex("7217211", function(arg1)
        arg1:FinishQuestID(false, 7223006)
    end, nil, nil, false)
end

function Quest72230:OnSubFinish7223006(arg1)
    print("OnSubFinish7223006")
end

function Quest72230:OnSubFailed7223006(arg1)
    print("OnSubFailed7223006")
end

return Quest72230
