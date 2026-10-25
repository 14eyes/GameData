require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74156 = class("Quest74156", QuestActorProxy)
Quest74156.defaultAlias = "Quest74156"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest74156:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest74156:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7415614"] = self.OnSubStart7415614,
        ["7415609"] = self.OnSubStart7415609,
        ["7415601"] = self.OnSubStart7415601,
        ["7415602"] = self.OnSubStart7415602,
        ["7415603"] = self.OnSubStart7415603,
        ["7415604"] = self.OnSubStart7415604,
        ["7415613"] = self.OnSubStart7415613,
        ["7415610"] = self.OnSubStart7415610,
        ["7415605"] = self.OnSubStart7415605,
        ["7415606"] = self.OnSubStart7415606,
        ["7415607"] = self.OnSubStart7415607,
        ["7415611"] = self.OnSubStart7415611,
        ["7415612"] = self.OnSubStart7415612,
        ["7415608"] = self.OnSubStart7415608
    }
end

function Quest74156:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7415614"] = self.OnSubFinish7415614,
        ["7415609"] = self.OnSubFinish7415609,
        ["7415601"] = self.OnSubFinish7415601,
        ["7415602"] = self.OnSubFinish7415602,
        ["7415603"] = self.OnSubFinish7415603,
        ["7415604"] = self.OnSubFinish7415604,
        ["7415613"] = self.OnSubFinish7415613,
        ["7415610"] = self.OnSubFinish7415610,
        ["7415605"] = self.OnSubFinish7415605,
        ["7415606"] = self.OnSubFinish7415606,
        ["7415607"] = self.OnSubFinish7415607,
        ["7415611"] = self.OnSubFinish7415611,
        ["7415612"] = self.OnSubFinish7415612,
        ["7415608"] = self.OnSubFinish7415608
    }
end

function Quest74156:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7415607"] = self.OnSubFailed7415607}
end

function Quest74156:Start()
    print("Start")
end

function Quest74156:OnDestroy()
    print("OnDestroy")
end

function Quest74156:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74156:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74156:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74156:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74156:OnSubStart7415614(arg1)
    print("OnSubStart7415614")
    actorMgr:CreateActorWithPos("Q7415609Trigger", "Actor/Gadget/Q7415609Trigger", 70900002, 0, {x = 3589.327, y = 435.25, z = 4520.478}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74156:OnSubFinish7415614(arg1)
    print("OnSubFinish7415614")
end

function Quest74156:OnSubStart7415609(arg1)
    print("OnSubStart7415609")
end

function Quest74156:OnSubFinish7415609(arg1)
    print("OnSubFinish7415609")
    this:ActorDestroy("Q7415609Trigger")
end

function Quest74156:OnSubStart7415601(arg1)
    print("OnSubStart7415601")
    actorMgr:CreateActorWithPos("Q74156Trigger", "Actor/Gadget/Q74156Trigger", 70900002, 0, {x = 3589.829, y = 435.138, z = 4520.352}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74156:OnSubFinish7415601(arg1)
    print("OnSubFinish7415601")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId_01, 5, nil, nil)
end

function Quest74156:OnSubStart7415602(arg1)
    print("OnSubStart7415602")
end

function Quest74156:OnSubFinish7415602(arg1)
    print("OnSubFinish7415602")
end

function Quest74156:OnSubStart7415603(arg1)
    print("OnSubStart7415603")
end

function Quest74156:OnSubFinish7415603(arg1)
    print("OnSubFinish7415603")
end

function Quest74156:OnSubStart7415604(arg1)
    print("OnSubStart7415604")
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7415604Trigger4", "Actor/Gadget/Q7415604Trigger4", 70900002, 0, {x = 3575.828, y = 435.073, z = 4532.697}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest74156:OnSubFinish7415604(arg1)
    print("OnSubFinish7415604")
    this:NarratorOnlyTaskByData(datas.Narrator_7415602)
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21249Data.alias, 3)
end

function Quest74156:OnSubStart7415613(arg1)
    print("OnSubStart7415613")
    actorMgr:CreateActorWithPos("Q7415613Trigger", "Actor/Gadget/Q7415613Trigger", 70900002, 0, {x = 3548.547, y = 434.279, z = 4560.281}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74156:OnSubFinish7415613(arg1)
    print("OnSubFinish7415613")
end

function Quest74156:OnSubStart7415610(arg1)
    print("OnSubStart7415610")
    actorMgr:CreateActorWithPos("Q7415610Trigger4", "Actor/Gadget/Q7415610Trigger4", 70900002, 0, {x = 3541.158, y = 495.261, z = 4552.625}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74156:OnSubFinish7415610(arg1)
    print("OnSubFinish7415610")
    this:TransmitPlayerWithDialogTextById(arg1, 2, datas.DialogsId, 5, nil, nil)
end

function Quest74156:OnSubStart7415605(arg1)
    print("OnSubStart7415605")
    actorMgr:CreateActorWithPos("Q74156Trigger1", "Actor/Gadget/Q74156Trigger1", 70900002, 0, {x = 3362.47, y = 448.818, z = 3594.419}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74156:OnSubFinish7415605(arg1)
    print("OnSubFinish7415605")
    this:ActorDestroy("Q74156Trigger1")
end

function Quest74156:OnSubStart7415606(arg1)
    print("OnSubStart7415606")
    actorMgr:CreateActorWithPos("Q74156Trigger2", "Actor/Gadget/Q74156Trigger2", 70900002, 0, {x = 3311.99, y = 444.887, z = 3583.048}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74156:OnSubFinish7415606(arg1)
    print("OnSubFinish7415606")
    this:ActorDestroy("Q74156Trigger2")
end

function Quest74156:OnSubStart7415607(arg1)
    print("OnSubStart7415607")
    this:CreateQuestNpc(arg1, npcs.Npc21250Data.id, 0)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21249Data.id, 0)
        this:CallDelay(1.5, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21249Data.alias, 74156)
            this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData_01, 4, 2, -1, nil, nil, nil, function(arg1) end, nil, function(arg1) end, false)
        end)

        actorMgr:CreateActorWithPos("Q74156Trigger3", "Actor/Gadget/Q74156Trigger3", 70900002, 0, {x = 3302.3, y = 445.694, z = 3581.515}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q7415607Trigger4", "Actor/Gadget/Q7415607Trigger4", 70900002, 0, {x = 3266.828, y = 442.993, z = 3462.432}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        actorMgr:CreateActorWithPos("Q7415607Triggerfail", "Actor/Gadget/Q7415607Triggerfail", 70900002, 0, {x = 3280.069, y = 452.261, z = 3529.363}, {x = 0.0, y = 18.557, z = 0.0}, true, false, 3)
    end)
end

function Quest74156:OnSubFinish7415607(arg1)
    print("OnSubFinish7415607")
    this:GetQuestNpcActor(npcs.Npc21249Data.alias, 74156):ClearFollowTask()
    this:GetQuestNpcActor(npcs.Npc21249Data.alias):Standby()
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:ActorDestroy("Q7415607Triggerfail")
    this:ActorDestroy("Q7415607Trigger4")
    this:ActorDestroy("Q7415607Trigger4")
end

function Quest74156:OnSubFailed7415607(arg1)
    print("OnSubFailed7415607")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:DestroyQuestNpcActor(npcs.Npc21249Data.alias, 3)
    this:ActorDestroy("Q7415607Triggerfail")
    this:ActorDestroy("Q7415607Trigger4")
    this:ActorDestroy("Q7415607Trigger4")
end

function Quest74156:OnSubStart7415611(arg1)
    print("OnSubStart7415611")
end

function Quest74156:OnSubFinish7415611(arg1)
    print("OnSubFinish7415611")
end

function Quest74156:OnSubStart7415612(arg1)
    print("OnSubStart7415612")
end

function Quest74156:OnSubFinish7415612(arg1)
    print("OnSubFinish7415612")
end

function Quest74156:OnSubStart7415608(arg1)
    print("OnSubStart7415608")
    this:CreateQuestNpc(arg1, npcs.Npc21249Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21250Data.id, 0)
    this:RequestInteraction(npcs.Npc21250Data.alias, "", true)
end

function Quest74156:OnSubFinish7415608(arg1)
    print("OnSubFinish7415608")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
    this:SafeDestroyQuestNpc(npcs.Npc21249Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21250Data.alias, 3)
end

return Quest74156
