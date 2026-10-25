require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest41357 = class("Quest41357", QuestActorProxy)
Quest41357.defaultAlias = "Quest41357"
local clientData
local mainID
local actorAlias
local subIDs

function Quest41357:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest41357:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4135715"] = self.OnSubStart4135715,
        ["4135714"] = self.OnSubStart4135714,
        ["4135701"] = self.OnSubStart4135701,
        ["4135702"] = self.OnSubStart4135702,
        ["4135703"] = self.OnSubStart4135703,
        ["4135704"] = self.OnSubStart4135704,
        ["4135705"] = self.OnSubStart4135705,
        ["4135717"] = self.OnSubStart4135717,
        ["4135711"] = self.OnSubStart4135711,
        ["4135712"] = self.OnSubStart4135712,
        ["4135713"] = self.OnSubStart4135713,
        ["4135706"] = self.OnSubStart4135706,
        ["4135707"] = self.OnSubStart4135707,
        ["4135708"] = self.OnSubStart4135708,
        ["4135709"] = self.OnSubStart4135709,
        ["4135716"] = self.OnSubStart4135716,
        ["4135710"] = self.OnSubStart4135710
    }
end

function Quest41357:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4135715"] = self.OnSubFinish4135715,
        ["4135714"] = self.OnSubFinish4135714,
        ["4135701"] = self.OnSubFinish4135701,
        ["4135702"] = self.OnSubFinish4135702,
        ["4135703"] = self.OnSubFinish4135703,
        ["4135704"] = self.OnSubFinish4135704,
        ["4135705"] = self.OnSubFinish4135705,
        ["4135717"] = self.OnSubFinish4135717,
        ["4135711"] = self.OnSubFinish4135711,
        ["4135712"] = self.OnSubFinish4135712,
        ["4135713"] = self.OnSubFinish4135713,
        ["4135706"] = self.OnSubFinish4135706,
        ["4135707"] = self.OnSubFinish4135707,
        ["4135708"] = self.OnSubFinish4135708,
        ["4135709"] = self.OnSubFinish4135709,
        ["4135716"] = self.OnSubFinish4135716,
        ["4135710"] = self.OnSubFinish4135710
    }
end

function Quest41357:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4135715"] = self.OnSubFailed4135715,
        ["4135714"] = self.OnSubFailed4135714,
        ["4135701"] = self.OnSubFailed4135701,
        ["4135702"] = self.OnSubFailed4135702,
        ["4135703"] = self.OnSubFailed4135703,
        ["4135704"] = self.OnSubFailed4135704,
        ["4135705"] = self.OnSubFailed4135705,
        ["4135717"] = self.OnSubFailed4135717,
        ["4135711"] = self.OnSubFailed4135711,
        ["4135712"] = self.OnSubFailed4135712,
        ["4135713"] = self.OnSubFailed4135713,
        ["4135706"] = self.OnSubFailed4135706,
        ["4135707"] = self.OnSubFailed4135707,
        ["4135708"] = self.OnSubFailed4135708,
        ["4135709"] = self.OnSubFailed4135709,
        ["4135716"] = self.OnSubFailed4135716,
        ["4135710"] = self.OnSubFailed4135710
    }
end

function Quest41357:Start()
    print("Start")
end

function Quest41357:OnDestroy()
    print("OnDestroy")
end

function Quest41357:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest41357:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest41357:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest41357:OnSubStart4135715(arg1)
    print("OnSubStart4135715")
end

function Quest41357:OnSubFinish4135715(arg1)
    print("OnSubFinish4135715")
end

function Quest41357:OnSubFailed4135715(arg1)
    print("OnSubFailed4135715")
end

function Quest41357:OnSubStart4135714(arg1)
    print("OnSubStart4135714")
end

function Quest41357:OnSubFinish4135714(arg1)
    print("OnSubFinish4135714")
end

function Quest41357:OnSubFailed4135714(arg1)
    print("OnSubFailed4135714")
end

function Quest41357:OnSubStart4135701(arg1)
    print("OnSubStart4135701")
end

function Quest41357:OnSubFinish4135701(arg1)
    print("OnSubFinish4135701")
end

function Quest41357:OnSubFailed4135701(arg1)
    print("OnSubFailed4135701")
end

function Quest41357:OnSubStart4135702(arg1)
    print("OnSubStart4135702")
end

function Quest41357:OnSubFinish4135702(arg1)
    print("OnSubFinish4135702")
end

function Quest41357:OnSubFailed4135702(arg1)
    print("OnSubFailed4135702")
end

function Quest41357:OnSubStart4135703(arg1)
    print("OnSubStart4135703")
end

function Quest41357:OnSubFinish4135703(arg1)
    print("OnSubFinish4135703")
end

function Quest41357:OnSubFailed4135703(arg1)
    print("OnSubFailed4135703")
end

function Quest41357:OnSubStart4135704(arg1)
    print("OnSubStart4135704")
end

function Quest41357:OnSubFinish4135704(arg1)
    print("OnSubFinish4135704")
end

function Quest41357:OnSubFailed4135704(arg1)
    print("OnSubFailed4135704")
end

function Quest41357:OnSubStart4135705(arg1)
    print("OnSubStart4135705")
    self:ShowBlackScreen(1, 1, 1, nil, nil, nil, "")
end

function Quest41357:OnSubFinish4135705(arg1)
    print("OnSubFinish4135705")
end

function Quest41357:OnSubFailed4135705(arg1)
    print("OnSubFailed4135705")
end

function Quest41357:OnSubStart4135717(arg1)
    print("OnSubStart4135717")
end

function Quest41357:OnSubFinish4135717(arg1)
    print("OnSubFinish4135717")
end

function Quest41357:OnSubFailed4135717(arg1)
    print("OnSubFailed4135717")
end

function Quest41357:OnSubStart4135711(arg1)
    print("OnSubStart4135711")
end

function Quest41357:OnSubFinish4135711(arg1)
    print("OnSubFinish4135711")
end

function Quest41357:OnSubFailed4135711(arg1)
    print("OnSubFailed4135711")
end

function Quest41357:OnSubStart4135712(arg1)
    print("OnSubStart4135712")
end

function Quest41357:OnSubFinish4135712(arg1)
    print("OnSubFinish4135712")
end

function Quest41357:OnSubFailed4135712(arg1)
    print("OnSubFailed4135712")
end

function Quest41357:OnSubStart4135713(arg1)
    print("OnSubStart4135713")
end

function Quest41357:OnSubFinish4135713(arg1)
    print("OnSubFinish4135713")
end

function Quest41357:OnSubFailed4135713(arg1)
    print("OnSubFailed4135713")
end

function Quest41357:OnSubStart4135706(arg1)
    print("OnSubStart4135706")
end

function Quest41357:OnSubFinish4135706(arg1)
    print("OnSubFinish4135706")
end

function Quest41357:OnSubFailed4135706(arg1)
    print("OnSubFailed4135706")
end

function Quest41357:OnSubStart4135707(arg1)
    print("OnSubStart4135707")
end

function Quest41357:OnSubFinish4135707(arg1)
    print("OnSubFinish4135707")
end

function Quest41357:OnSubFailed4135707(arg1)
    print("OnSubFailed4135707")
end

function Quest41357:OnSubStart4135708(arg1)
    print("OnSubStart4135708")
end

function Quest41357:OnSubFinish4135708(arg1)
    print("OnSubFinish4135708")
end

function Quest41357:OnSubFailed4135708(arg1)
    print("OnSubFailed4135708")
end

function Quest41357:OnSubStart4135709(arg1)
    print("OnSubStart4135709")
end

function Quest41357:OnSubFinish4135709(arg1)
    print("OnSubFinish4135709")
end

function Quest41357:OnSubFailed4135709(arg1)
    print("OnSubFailed4135709")
end

function Quest41357:OnSubStart4135716(arg1)
    print("OnSubStart4135716")
end

function Quest41357:OnSubFinish4135716(arg1)
    print("OnSubFinish4135716")
end

function Quest41357:OnSubFailed4135716(arg1)
    print("OnSubFailed4135716")
end

function Quest41357:OnSubStart4135710(arg1)
    print("OnSubStart4135710")
end

function Quest41357:OnSubFinish4135710(arg1)
    print("OnSubFinish4135710")
end

function Quest41357:OnSubFailed4135710(arg1)
    print("OnSubFailed4135710")
end

return Quest41357
