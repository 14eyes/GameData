require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72229 = class("Quest72229", QuestActorProxy)
Quest72229.defaultAlias = "Quest72229"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72229:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72229:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7222905"] = self.OnSubStart7222905,
        ["7222903"] = self.OnSubStart7222903,
        ["7222902"] = self.OnSubStart7222902,
        ["7222904"] = self.OnSubStart7222904,
        ["7222901"] = self.OnSubStart7222901,
        ["7222906"] = self.OnSubStart7222906
    }
end

function Quest72229:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7222905"] = self.OnSubFinish7222905,
        ["7222903"] = self.OnSubFinish7222903,
        ["7222902"] = self.OnSubFinish7222902,
        ["7222904"] = self.OnSubFinish7222904,
        ["7222901"] = self.OnSubFinish7222901,
        ["7222906"] = self.OnSubFinish7222906
    }
end

function Quest72229:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7222905"] = self.OnSubFailed7222905,
        ["7222903"] = self.OnSubFailed7222903,
        ["7222902"] = self.OnSubFailed7222902,
        ["7222904"] = self.OnSubFailed7222904,
        ["7222901"] = self.OnSubFailed7222901,
        ["7222906"] = self.OnSubFailed7222906
    }
end

function Quest72229:Start()
    print("Start")
end

function Quest72229:OnDestroy()
    print("OnDestroy")
end

function Quest72229:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72229:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72229:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72229:OnSubStart7222905(arg1)
    print("OnSubStart7222905")
end

function Quest72229:OnSubFinish7222905(arg1)
    print("OnSubFinish7222905")
end

function Quest72229:OnSubFailed7222905(arg1)
    print("OnSubFailed7222905")
end

function Quest72229:OnSubStart7222903(arg1)
    print("OnSubStart7222903")
end

function Quest72229:OnSubFinish7222903(arg1)
    print("OnSubFinish7222903")
end

function Quest72229:OnSubFailed7222903(arg1)
    print("OnSubFailed7222903")
end

function Quest72229:OnSubStart7222902(arg1)
    print("OnSubStart7222902")
    self:PlayCutsceneIndex("7217204", function(arg1)
        arg1:FinishQuestID(false, 7222902)
    end, nil, nil, false)
end

function Quest72229:OnSubFinish7222902(arg1)
    print("OnSubFinish7222902")
end

function Quest72229:OnSubFailed7222902(arg1)
    print("OnSubFailed7222902")
end

function Quest72229:OnSubStart7222904(arg1)
    print("OnSubStart7222904")
end

function Quest72229:OnSubFinish7222904(arg1)
    print("OnSubFinish7222904")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTask(datas.Reminder_Ball, nil, "")
    end)
end

function Quest72229:OnSubFailed7222904(arg1)
    print("OnSubFailed7222904")
end

function Quest72229:OnSubStart7222901(arg1)
    print("OnSubStart7222901")
end

function Quest72229:OnSubFinish7222901(arg1)
    print("OnSubFinish7222901")
end

function Quest72229:OnSubFailed7222901(arg1)
    print("OnSubFailed7222901")
end

function Quest72229:OnSubStart7222906(arg1)
    print("OnSubStart7222906")
    self:PlayCutsceneIndex("7217213", function(arg1)
        arg1:FinishQuestID(false, 7222906)
    end, nil, nil, false)
end

function Quest72229:OnSubFinish7222906(arg1)
    print("OnSubFinish7222906")
end

function Quest72229:OnSubFailed7222906(arg1)
    print("OnSubFailed7222906")
end

return Quest72229
