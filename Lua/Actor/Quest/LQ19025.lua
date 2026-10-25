require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19025 = class("Quest19025", QuestActorProxy)
Quest19025.defaultAlias = "Quest19025"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local points

function Quest19025:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    points = clientData.Points
end

function Quest19025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1902501"] = self.OnSubStart1902501,
        ["1902502"] = self.OnSubStart1902502,
        ["1902506"] = self.OnSubStart1902506,
        ["1902507"] = self.OnSubStart1902507,
        ["1902508"] = self.OnSubStart1902508,
        ["1902509"] = self.OnSubStart1902509,
        ["1902510"] = self.OnSubStart1902510,
        ["1902504"] = self.OnSubStart1902504,
        ["1902503"] = self.OnSubStart1902503,
        ["1902505"] = self.OnSubStart1902505
    }
end

function Quest19025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1902501"] = self.OnSubFinish1902501,
        ["1902502"] = self.OnSubFinish1902502,
        ["1902506"] = self.OnSubFinish1902506,
        ["1902507"] = self.OnSubFinish1902507,
        ["1902508"] = self.OnSubFinish1902508,
        ["1902509"] = self.OnSubFinish1902509,
        ["1902510"] = self.OnSubFinish1902510,
        ["1902504"] = self.OnSubFinish1902504,
        ["1902503"] = self.OnSubFinish1902503,
        ["1902505"] = self.OnSubFinish1902505
    }
end

function Quest19025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1902501"] = self.OnSubFailed1902501,
        ["1902502"] = self.OnSubFailed1902502,
        ["1902506"] = self.OnSubFailed1902506,
        ["1902507"] = self.OnSubFailed1902507,
        ["1902508"] = self.OnSubFailed1902508,
        ["1902509"] = self.OnSubFailed1902509,
        ["1902510"] = self.OnSubFailed1902510,
        ["1902504"] = self.OnSubFailed1902504,
        ["1902503"] = self.OnSubFailed1902503,
        ["1902505"] = self.OnSubFailed1902505
    }
end

function Quest19025:Start()
    print("Start")
end

function Quest19025:OnDestroy()
    print("OnDestroy")
end

function Quest19025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19025:OnMainFailed(arg1)
    print("OnMainFailed")
    self:NotifyTo("Npc2454", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest19025:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc10901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10902Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10906Data.alias, 3)
    self:NotifyTo("Npc2454", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest19025:OnSubStart1902501(arg1)
    print("OnSubStart1902501")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902501)
    self:CreateQuestNpc(arg1, npcs.Npc10901Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10902Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10906Data.id, 3)
    self:NotifyTo("Npc2454", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19025:OnSubFinish1902501(arg1)
    print("OnSubFinish1902501")
    self:SafeDestroyQuestNpc(npcs.Npc10906Data.alias, 3)
    self:NotifyTo("Npc2454", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest19025:OnSubFailed1902501(arg1)
    print("OnSubFailed1902501")
end

function Quest19025:OnSubStart1902502(arg1)
    print("OnSubStart1902502")
    self:UnSpawn(gadgets.Gadget71700097Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700097Data.id, 1, 0)
end

function Quest19025:OnSubFinish1902502(arg1)
    print("OnSubFinish1902502")
    self:UnSpawn(gadgets.Gadget71700097Data.alias)
end

function Quest19025:OnSubFailed1902502(arg1)
    print("OnSubFailed1902502")
end

function Quest19025:OnSubStart1902506(arg1)
    print("OnSubStart1902506")
    self:CreateQuestNpc(arg1, npcs.Npc10901Data1.id, 1)
    self:GetQuestNpcActor(npcs.Npc10901Data1.alias):DoFreeStyle(5030, true, nil, true, true)
end

function Quest19025:OnSubFinish1902506(arg1)
    print("OnSubFinish1902506")
    self:SafeDestroyQuestNpc(npcs.Npc10901Data1.alias, 3)
end

function Quest19025:OnSubFailed1902506(arg1)
    print("OnSubFailed1902506")
end

function Quest19025:OnSubStart1902507(arg1)
    print("OnSubStart1902507")
    self:CreateQuestNpc(arg1, npcs.Npc10902Data1.id, 1)
    self:GetQuestNpcActor(npcs.Npc10902Data1.alias):DoFreeStyle(5030, true, nil, true, true)
end

function Quest19025:OnSubFinish1902507(arg1)
    print("OnSubFinish1902507")
    self:SafeDestroyQuestNpc(npcs.Npc10902Data1.alias, 3)
end

function Quest19025:OnSubFailed1902507(arg1)
    print("OnSubFailed1902507")
end

function Quest19025:OnSubStart1902508(arg1)
    print("OnSubStart1902508")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902504)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data1.id, 1)
end

function Quest19025:OnSubFinish1902508(arg1)
    print("OnSubFinish1902508")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data1.alias, 3)
end

function Quest19025:OnSubFailed1902508(arg1)
    print("OnSubFailed1902508")
end

function Quest19025:OnSubStart1902509(arg1)
    print("OnSubStart1902509")
end

function Quest19025:OnSubFinish1902509(arg1)
    print("OnSubFinish1902509")
end

function Quest19025:OnSubFailed1902509(arg1)
    print("OnSubFailed1902509")
end

function Quest19025:OnSubStart1902510(arg1)
    print("OnSubStart1902510")
end

function Quest19025:OnSubFinish1902510(arg1)
    print("OnSubFinish1902510")
end

function Quest19025:OnSubFailed1902510(arg1)
    print("OnSubFailed1902510")
end

function Quest19025:OnSubStart1902504(arg1)
    print("OnSubStart1902504")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902502)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        arg1_2:TransmitPlayerByQuestId(1902504, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10906Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc10906Data.alias)
    end)
end

function Quest19025:OnSubFinish1902504(arg1)
    print("OnSubFinish1902504")
    self:SafeDestroyQuestNpc(npcs.Npc10906Data.alias, 3)
end

function Quest19025:OnSubFailed1902504(arg1)
    print("OnSubFailed1902504")
end

function Quest19025:OnSubStart1902503(arg1)
    print("OnSubStart1902503")
    self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 3)
end

function Quest19025:OnSubFinish1902503(arg1)
    print("OnSubFinish1902503")
end

function Quest19025:OnSubFailed1902503(arg1)
    print("OnSubFailed1902503")
end

function Quest19025:OnSubStart1902505(arg1)
    print("OnSubStart1902505")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1902503)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data.id, 3)
end

function Quest19025:OnSubFinish1902505(arg1)
    print("OnSubFinish1902505")
    self:SafeDestroyQuestNpc(npcs.Npc10901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10902Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
end

function Quest19025:OnSubFailed1902505(arg1)
    print("OnSubFailed1902505")
end

return Quest19025
