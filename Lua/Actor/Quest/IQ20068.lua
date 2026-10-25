require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20068 = class("Quest20068", QuestActorProxy)
Quest20068.defaultAlias = "Quest20068"
local Q20068ClientConfig = require("Quest/Client/Q20068ClientConfig")

local mainID = Q20068ClientConfig.MainID
local actorAlias = Q20068ClientConfig.ActorAlias
local subIDs = Q20068ClientConfig.SubIDs

function Quest20068:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2006801"] = self.OnSubStart2006801,
        ["2006802"] = self.OnSubStart2006802,
        ["2006803"] = self.OnSubStart2006803,
        ["2006804"] = self.OnSubStart2006804
    }
end

function Quest20068:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2006801"] = self.OnSubFinish2006801,
        ["2006802"] = self.OnSubFinish2006802,
        ["2006803"] = self.OnSubFinish2006803,
        ["2006804"] = self.OnSubFinish2006804
    }
end

function Quest20068:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2006801"] = self.OnSubFailed2006801,
        ["2006802"] = self.OnSubFailed2006802,
        ["2006803"] = self.OnSubFailed2006803,
        ["2006804"] = self.OnSubFailed2006804
    }
end

function Quest20068:Start()
    print("Start")
end

function Quest20068:OnDestroy()
    print("OnDestroy")
    globalActor:NotifyTo("Npc1429", 0, true)
    globalActor:NotifyTo("Npc1567", 0, true)
end

function Quest20068:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        self:ShowBlackScreen()
    end
end

function Quest20068:ShowBlackScreen()
    print("ShowBlackScreen")
    print("start black screen")
    globalActor:ShowBlackScreen(0.5, 1, 0.5)
end

function Quest20068:OnSubStart2006801(arg1)
    print("OnSubStart2006801")
    globalActor:NotifyTo("Npc1429", 2, true)
    globalActor:NotifyTo("Npc1567", 2, true)
end

function Quest20068:OnSubFinish2006801(arg1)
    print("OnSubFinish2006801")
end

function Quest20068:OnSubFailed2006801(arg1)
    print("OnSubFailed2006801")
end

function Quest20068:OnSubStart2006802(arg1)
    print("OnSubStart2006802")
    globalActor:NotifyTo("Npc1429", 2, true)
    globalActor:NotifyTo("Npc1567", 2, true)
end

function Quest20068:OnSubFinish2006802(arg1)
    print("OnSubFinish2006802")
end

function Quest20068:OnSubFailed2006802(arg1)
    print("OnSubFailed2006802")
end

function Quest20068:OnSubStart2006803(arg1)
    print("OnSubStart2006803")
    globalActor:NotifyTo("Npc1429", 2, true)
    globalActor:NotifyTo("Npc1567", 2, true)
end

function Quest20068:OnSubFinish2006803(arg1)
    print("OnSubFinish2006803")
end

function Quest20068:OnSubFailed2006803(arg1)
    print("OnSubFailed2006803")
end

function Quest20068:OnSubStart2006804(arg1)
    print("OnSubStart2006804")
    self:RequestInteractionForceAlias("Npc1429")
    self:NotifyTo("Npc1429", 2, true)
    self:NotifyTo("Npc1567", 2, true)
end

function Quest20068:OnSubFinish2006804(arg1)
    print("OnSubFinish2006804")
end

function Quest20068:OnSubFailed2006804(arg1)
    print("OnSubFailed2006804")
end

function Quest20068:OnMainFinished(arg1)
    self:NotifyTo("Npc1429", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1567", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest20068:OnMainFailed(arg1) end

function Quest20068:OnMainCanceled(arg1)
    self:NotifyTo("Npc1429", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1567", NpcUtil.NpcEventType.STARTDAILY, true)
end

return Quest20068
