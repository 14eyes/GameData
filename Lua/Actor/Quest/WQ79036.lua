require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79036 = class("Quest79036", QuestActorProxy)
Quest79036.defaultAlias = "Quest79036"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79036:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79036:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7903603"] = self.OnSubStart7903603,
        ["7903601"] = self.OnSubStart7903601,
        ["7903602"] = self.OnSubStart7903602
    }
end

function Quest79036:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7903603"] = self.OnSubFinish7903603,
        ["7903601"] = self.OnSubFinish7903601,
        ["7903602"] = self.OnSubFinish7903602
    }
end

function Quest79036:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79036:Start()
    print("Start")
end

function Quest79036:OnDestroy()
    print("OnDestroy")
end

function Quest79036:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79036:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79036:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DisableMainPageWithConfig(false, "DisableTestHZM")
    actorUtils.SetLevelQuestDialogEnableState(true)
end

function Quest79036:OnSubStart7903603(arg1)
    print("OnSubStart7903603")
    self:DisableMainPageWithConfig(false, "DisableTestHZM")
    actorUtils.SetLevelQuestDialogEnableState(true)
end

function Quest79036:OnSubFinish7903603(arg1)
    print("OnSubFinish7903603")
end

function Quest79036:OnSubStart7903601(arg1)
    print("OnSubStart7903601")
    self:DisableMainPageWithConfig(false, "DisableTestHZM")
    actorUtils.SetLevelQuestDialogEnableState(true)
end

function Quest79036:OnSubFinish7903601(arg1)
    print("OnSubFinish7903601")
end

function Quest79036:OnSubStart7903602(arg1)
    print("OnSubStart7903602")
    self:DisableMainPageWithConfig(true, "DisableTestHZM")
    actorUtils.SetLevelQuestDialogEnableState(false)
    actorMgr:CreateActorWithPos("Q79036Trigger", "Actor/Gadget/Q79036Trigger", 70900002, 0, {x = 100.93, y = -218.279, z = 692.606}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20135)
end

function Quest79036:OnSubFinish7903602(arg1)
    print("OnSubFinish7903602")
    self:DisableMainPageWithConfig(false, "DisableTestHZM")
    actorUtils.SetLevelQuestDialogEnableState(true)
    self:TransmitPlayerById(arg1, 1)
end

return Quest79036
