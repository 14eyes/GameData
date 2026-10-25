require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest805 = class("Quest805", QuestActorProxy)
Quest805.defaultAlias = "Quest805"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest805:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest805:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["80501"] = self.OnSubStart80501,
        ["80502"] = self.OnSubStart80502,
        ["80503"] = self.OnSubStart80503,
        ["80504"] = self.OnSubStart80504,
        ["80505"] = self.OnSubStart80505,
        ["80506"] = self.OnSubStart80506,
        ["80507"] = self.OnSubStart80507,
        ["80508"] = self.OnSubStart80508,
        ["80509"] = self.OnSubStart80509
    }
end

function Quest805:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["80501"] = self.OnSubFinish80501,
        ["80502"] = self.OnSubFinish80502,
        ["80503"] = self.OnSubFinish80503,
        ["80504"] = self.OnSubFinish80504,
        ["80505"] = self.OnSubFinish80505,
        ["80506"] = self.OnSubFinish80506,
        ["80507"] = self.OnSubFinish80507,
        ["80508"] = self.OnSubFinish80508,
        ["80509"] = self.OnSubFinish80509
    }
end

function Quest805:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest805:Start()
    print("Start")
end

function Quest805:OnDestroy()
    print("OnDestroy")
end

function Quest805:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest805:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest805:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest805:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest805:NpcCreateWithTriggerInVehicleAndBlackScreen(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateQuestNpcWithTriggerInVehicleBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 0.5, arg5, 0.5, 2, arg6, arg7)
end

function Quest805:NpcCreateWithTriggerInVehicle(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateQuestNpcWithTriggerInVehicle("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2, arg6, arg7)
end

function Quest805:OnSubStart80501(arg1)
    print("OnSubStart80501")
    this:CreateQuestNpc(arg1, npcs.Npc6111.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6081.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21497.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1080.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21498.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21496.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6086.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc604.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6319.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6313.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6314.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6424.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6426.id, 0, false, 0)
end

function Quest805:OnSubFinish80501(arg1)
    print("OnSubFinish80501")
    this:SafeDestroyQuestNpc(npcs.Npc6111.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6081.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21497.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21498.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21496.alias, 3)
    this:NatsaurusVehicleOff()
end

function Quest805:OnSubStart80502(arg1)
    print("OnSubStart80502")
    this:NpcCreateWithNpcTriggerAndBlackscreen(80502, 0, 5, 1, npcs.Npc21498.id)
    this:NpcCreateWithNpcTriggerAndBlackscreen(80502, 0, 5, 1, npcs.Npc1080.id)
    this:NpcCreateWithTriggerInVehicleAndBlackScreen(npcs.Npc6081.id, 80502, 0, 5, 1, nil, "Bigworld_Godess_NatsaurusHint")
    this:NpcCreateWithTriggerInVehicle(npcs.Npc6111.id, 80502, 0, 5, 0, nil, "Bigworld_Godess_NatsaurusHint")
    this:CreateQuestNpc(arg1, npcs.Npc6086.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6319.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6313.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6314.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6424.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6426.id, 0, false, 0)
end

function Quest805:OnSubFinish80502(arg1)
    print("OnSubFinish80502")
    this:SafeDestroyQuestNpc(npcs.Npc21498.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6081.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6111.alias, 3)
end

function Quest805:OnSubStart80503(arg1)
    print("OnSubStart80503")
    this:CreateQuestNpc(arg1, npcs.Npc21497.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6086.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6319.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6313.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6314.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6424.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6426.id, 0, false, 0)
end

function Quest805:OnSubFinish80503(arg1)
    print("OnSubFinish80503")
    this:SafeDestroyQuestNpc(npcs.Npc21497.alias, 3)
    this:TransmitPlayerToArcLight(0, {x = 0, y = 0, z = 0}, {x = 0, y = 0, z = 0}, 0, 0, 0, 0, 0, nil)
end

function Quest805:OnSubStart80504(arg1)
    print("OnSubStart80504")
    this:CreateQuestNpc(arg1, npcs.Npc6319.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6313.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6314.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6424.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6426.id, 0, false, 0)
end

function Quest805:OnSubFinish80504(arg1)
    print("OnSubFinish80504")
    actorUtils.HasMetNpc(npcs.Npc6111.id)
end

function Quest805:OnSubStart80505(arg1)
    print("OnSubStart80505")
    actorMgr:CreateActorWithPos("Q80505Trigger", "Actor/Gadget/Q80505Trigger", 70900002, 0, points._Q80505TriggerPoint_.pos, points._Q80505TriggerPoint_.rot, true, false, 3)
end

function Quest805:OnSubFinish80505(arg1)
    print("OnSubFinish80505")
end

function Quest805:OnSubStart80506(arg1)
    print("OnSubStart80506")
    actorMgr:CreateActorWithPos("Q80506Trigger", "Actor/Gadget/Q80506Trigger", 70900002, 0, points._Q80506TriggerPoint_.pos, points._Q80506TriggerPoint_.rot, true, false, 3)
end

function Quest805:OnSubFinish80506(arg1)
    print("OnSubFinish80506")
end

function Quest805:OnSubStart80507(arg1)
    print("OnSubStart80507")
    this:CreateQuestNpcById(80507, npcs.Npc1080.id, 0, false, 0)
end

function Quest805:OnSubFinish80507(arg1)
    print("OnSubFinish80507")
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 3)
end

function Quest805:OnSubStart80508(arg1)
    print("OnSubStart80508")
    this:CreateQuestNpc(arg1, npcs.Npc1080.id, 0, false, 0)
    this:CreateLocalGadget(71700714, "1", {x = -1561, y = 129, z = 8627}, {x = 0, y = 0, z = 0}, 3, nil, nil, true, 0, true)
end

function Quest805:OnSubFinish80508(arg1)
    print("OnSubFinish80508")
    this:RemoveLocalGadget(71700714, "1")
end

function Quest805:OnSubStart80509(arg1)
    print("OnSubStart80509")
    this:CreateQuestNpc(arg1, npcs.Npc1080.id, 0, false, 0)
    this:CreateSetWeatherTrigger("Q80001_Rain", 3, {x = -1506, y = 133, z = 8658}, 30, "BigWorld/Weather_Rain_Light")
end

function Quest805:OnSubFinish80509(arg1)
    print("OnSubFinish80509")
    this:SafeDestroyQuestNpc(npcs.Npc1080.alias, 3)
    this:ClearAllWeatherTrigger()
    this:ClearWeatherTrigger("Q80001_Rain")
end

return Quest805
