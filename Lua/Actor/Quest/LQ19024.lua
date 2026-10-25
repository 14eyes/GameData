require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19024 = class("Quest19024", QuestActorProxy)
Quest19024.defaultAlias = "Quest19024"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19024:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1902402"] = self.OnSubStart1902402,
        ["1902401"] = self.OnSubStart1902401,
        ["1902406"] = self.OnSubStart1902406,
        ["1902403"] = self.OnSubStart1902403,
        ["1902407"] = self.OnSubStart1902407,
        ["1902404"] = self.OnSubStart1902404,
        ["1902408"] = self.OnSubStart1902408,
        ["1902405"] = self.OnSubStart1902405
    }
end

function Quest19024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1902402"] = self.OnSubFinish1902402,
        ["1902401"] = self.OnSubFinish1902401,
        ["1902406"] = self.OnSubFinish1902406,
        ["1902403"] = self.OnSubFinish1902403,
        ["1902407"] = self.OnSubFinish1902407,
        ["1902404"] = self.OnSubFinish1902404,
        ["1902408"] = self.OnSubFinish1902408,
        ["1902405"] = self.OnSubFinish1902405
    }
end

function Quest19024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1902402"] = self.OnSubFailed1902402,
        ["1902401"] = self.OnSubFailed1902401,
        ["1902406"] = self.OnSubFailed1902406,
        ["1902403"] = self.OnSubFailed1902403,
        ["1902407"] = self.OnSubFailed1902407,
        ["1902404"] = self.OnSubFailed1902404,
        ["1902408"] = self.OnSubFailed1902408,
        ["1902405"] = self.OnSubFailed1902405
    }
end

function Quest19024:Start()
    print("Start")
end

function Quest19024:OnDestroy()
    print("OnDestroy")
end

function Quest19024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19024:OnMainFailed(arg1)
    print("OnMainFailed")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19024Trigger_.alias, 3, false)
    self:NotifyTo("Npc2045", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest19024:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q19024Trigger_.alias, 3, false)
    self:NotifyTo("Npc2045", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest19024:OnSubStart1902402(arg1)
    print("OnSubStart1902402")
    actorMgr:CreateActorWithPos(datas.Q19024Trigger_.alias, datas.Q19024Trigger_.script, datas.Q19024Trigger_.id, 0, datas.Q19024Trigger_.point.pos, datas.Q19024Trigger_.point.rot, true, false, 3)
    self:NotifyTo("Npc2045", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19024:OnSubFinish1902402(arg1)
    print("OnSubFinish1902402")
end

function Quest19024:OnSubFailed1902402(arg1)
    print("OnSubFailed1902402")
end

function Quest19024:OnSubStart1902401(arg1)
    print("OnSubStart1902401")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902401)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 1)
    self:NotifyTo("Npc2045", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19024:OnSubFinish1902401(arg1)
    print("OnSubFinish1902401")
end

function Quest19024:OnSubFailed1902401(arg1)
    print("OnSubFailed1902401")
end

function Quest19024:OnSubStart1902406(arg1)
    print("OnSubStart1902406")
    self:CreateQuestNpc(arg1, npcs.Npc1023Data1.id, 1)
    self:NotifyTo("Npc2045", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19024:OnSubFinish1902406(arg1)
    print("OnSubFinish1902406")
end

function Quest19024:OnSubFailed1902406(arg1)
    print("OnSubFailed1902406")
end

function Quest19024:OnSubStart1902403(arg1)
    print("OnSubStart1902403")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902403)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data1.id, 1)
    self:NotifyTo("Npc2045", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19024:OnSubFinish1902403(arg1)
    print("OnSubFinish1902403")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data1.alias, 3)
end

function Quest19024:OnSubFailed1902403(arg1)
    print("OnSubFailed1902403")
end

function Quest19024:OnSubStart1902407(arg1)
    print("OnSubStart1902407")
    self:CreateQuestNpc(arg1, npcs.Npc1023Data2.id, 1)
    self:NotifyTo("Npc2045", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19024:OnSubFinish1902407(arg1)
    print("OnSubFinish1902407")
end

function Quest19024:OnSubFailed1902407(arg1)
    print("OnSubFailed1902407")
end

function Quest19024:OnSubStart1902404(arg1)
    print("OnSubStart1902404")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902404)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data2.id, 1)
    self:NotifyTo("Npc2045", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19024:OnSubFinish1902404(arg1)
    print("OnSubFinish1902404")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data2.alias, 3)
end

function Quest19024:OnSubFailed1902404(arg1)
    print("OnSubFailed1902404")
end

function Quest19024:OnSubStart1902408(arg1)
    print("OnSubStart1902408")
    self:CreateQuestNpc(arg1, npcs.Npc1023Data3.id, 2)
    self:NotifyTo("Npc2045", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19024:OnSubFinish1902408(arg1)
    print("OnSubFinish1902408")
end

function Quest19024:OnSubFailed1902408(arg1)
    print("OnSubFailed1902408")
end

function Quest19024:OnSubStart1902405(arg1)
    print("OnSubStart1902405")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902405)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data3.id, 2)
    self:NotifyTo("Npc2045", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19024:OnSubFinish1902405(arg1)
    print("OnSubFinish1902405")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data3.alias, 3)
end

function Quest19024:OnSubFailed1902405(arg1)
    print("OnSubFailed1902405")
end

return Quest19024
