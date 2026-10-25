require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22008 = class("Quest22008", QuestActorProxy)
Quest22008.defaultAlias = "Quest22008"
local clientData

function Quest22008:OnDataLoaded()
    clientData = self.clientData
end

function Quest22008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2200801"] = self.OnSubStart2200801,
        ["2200802"] = self.OnSubStart2200802,
        ["2200803"] = self.OnSubStart2200803,
        ["2200804"] = self.OnSubStart2200804
    }
end

function Quest22008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2200801"] = self.OnSubFinish2200801,
        ["2200802"] = self.OnSubFinish2200802,
        ["2200803"] = self.OnSubFinish2200803,
        ["2200804"] = self.OnSubFinish2200804
    }
end

function Quest22008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2200801"] = self.OnSubFailed2200801,
        ["2200802"] = self.OnSubFailed2200802,
        ["2200803"] = self.OnSubFailed2200803,
        ["2200804"] = self.OnSubFailed2200804
    }
end

function Quest22008:Start()
    print("Quest22008 Start")
end

function Quest22008:OnDestroy()
    print("Quest22008 OnDestroy")
end

function Quest22008:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest22008:OnSubStart2200801(arg1)
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.BANDAILY, true)
    print("OnSubStart2200801")
end

function Quest22008:OnSubFinish2200801(arg1) end

function Quest22008:OnSubFailed2200801(arg1)
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2200801")
end

function Quest22008:OnSubStart2200802(arg1)
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.BANDAILY, true)
    print("OnSubStart2200802")
end

function Quest22008:OnSubFinish2200802(arg1)
    self:RequestInteractionForceAlias("Npc2027")
end

function Quest22008:OnSubFailed2200802(arg1)
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2200802")
end

function Quest22008:OnSubStart2200803(arg1)
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.BANDAILY, true)
    print("OnSubStart2200803")
end

function Quest22008:OnSubFinish2200803(arg1)
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.STARTDAILY, true)
end

function Quest22008:OnSubFailed2200803(arg1)
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2200803")
end

function Quest22008:OnSubStart2200804(arg1)
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.BANDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.BANDAILY, true)
    print("OnSubStart2200804")
end

function Quest22008:OnSubFinish2200804(arg1)
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("OnSubFinish2200804")
end

function Quest22008:OnSubFailed2200804(arg1)
    self:NotifyTo("Npc2027", DailyNpcManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2028", DailyNpcManager.NpcEventType.STARTDAILY, true)
    print("OnSubFailed2200804")
end

return Quest22008
