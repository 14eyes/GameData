require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79033 = class("Quest79033", QuestActorProxy)
Quest79033.defaultAlias = "Quest79033"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest79033:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest79033:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7903310"] = self.OnSubStart7903310,
        ["7903308"] = self.OnSubStart7903308,
        ["7903309"] = self.OnSubStart7903309,
        ["7903301"] = self.OnSubStart7903301,
        ["7903302"] = self.OnSubStart7903302,
        ["7903303"] = self.OnSubStart7903303,
        ["7903305"] = self.OnSubStart7903305,
        ["7903306"] = self.OnSubStart7903306,
        ["7903307"] = self.OnSubStart7903307,
        ["7903304"] = self.OnSubStart7903304
    }
end

function Quest79033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7903310"] = self.OnSubFinish7903310,
        ["7903308"] = self.OnSubFinish7903308,
        ["7903309"] = self.OnSubFinish7903309,
        ["7903301"] = self.OnSubFinish7903301,
        ["7903302"] = self.OnSubFinish7903302,
        ["7903303"] = self.OnSubFinish7903303,
        ["7903305"] = self.OnSubFinish7903305,
        ["7903306"] = self.OnSubFinish7903306,
        ["7903307"] = self.OnSubFinish7903307,
        ["7903304"] = self.OnSubFinish7903304
    }
end

function Quest79033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79033:Start()
    print("Start")
end

function Quest79033:OnDestroy()
    print("OnDestroy")
end

function Quest79033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79033:OnSubStart7903310(arg1)
    print("OnSubStart7903310")
end

function Quest79033:OnSubFinish7903310(arg1)
    print("OnSubFinish7903310")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, nil, nil, "Quest_Black_Q7903310", false, true)
end

function Quest79033:OnSubStart7903308(arg1)
    print("OnSubStart7903308")
end

function Quest79033:OnSubFinish7903308(arg1)
    print("OnSubFinish7903308")
end

function Quest79033:OnSubStart7903309(arg1)
    print("OnSubStart7903309")
end

function Quest79033:OnSubFinish7903309(arg1)
    print("OnSubFinish7903309")
end

function Quest79033:OnSubStart7903301(arg1)
    print("OnSubStart7903301")
end

function Quest79033:OnSubFinish7903301(arg1)
    print("OnSubFinish7903301")
end

function Quest79033:OnSubStart7903302(arg1)
    print("OnSubStart7903302")
end

function Quest79033:OnSubFinish7903302(arg1)
    print("OnSubFinish7903302")
end

function Quest79033:OnSubStart7903303(arg1)
    print("OnSubStart7903303")
end

function Quest79033:OnSubFinish7903303(arg1)
    print("OnSubFinish7903303")
end

function Quest79033:OnSubStart7903305(arg1)
    print("OnSubStart7903305")
    self:CreateQuestNpcWithTriggerBlack("Quest7903305", 7903305, npcs.PaimonData.id, 1, 30, 2)
end

function Quest79033:OnSubFinish7903305(arg1)
    print("OnSubFinish7903305")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79033:OnSubStart7903306(arg1)
    print("OnSubStart7903306")
    self:CreateQuestNpcWithTriggerBlack("Quest7903306", 7903306, npcs.PaimonData.id, 1, 30, 2)
end

function Quest79033:OnSubFinish7903306(arg1)
    print("OnSubFinish7903306")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79033:OnSubStart7903307(arg1)
    print("OnSubStart7903307")
    self:CreateQuestNpcWithTriggerBlack("Quest7903307", 7903307, npcs.PaimonData.id, 1, 30, 2)
end

function Quest79033:OnSubFinish7903307(arg1)
    print("OnSubFinish7903307")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79033:OnSubStart7903304(arg1)
    print("OnSubStart7903304")
end

function Quest79033:OnSubFinish7903304(arg1)
    print("OnSubFinish7903304")
end

return Quest79033
