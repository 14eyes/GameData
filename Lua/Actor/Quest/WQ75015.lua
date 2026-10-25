require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75015 = class("Quest75015", QuestActorProxy)
Quest75015.defaultAlias = "Quest75015"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest75015:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest75015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7501501"] = self.OnSubStart7501501,
        ["7501506"] = self.OnSubStart7501506,
        ["7501502"] = self.OnSubStart7501502,
        ["7501505"] = self.OnSubStart7501505,
        ["7501503"] = self.OnSubStart7501503,
        ["7501504"] = self.OnSubStart7501504
    }
end

function Quest75015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7501501"] = self.OnSubFinish7501501,
        ["7501506"] = self.OnSubFinish7501506,
        ["7501502"] = self.OnSubFinish7501502,
        ["7501505"] = self.OnSubFinish7501505,
        ["7501503"] = self.OnSubFinish7501503,
        ["7501504"] = self.OnSubFinish7501504
    }
end

function Quest75015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75015:CreateRepeatableNpcShowDisappearTriggerCommon(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateRepeatableNpcShowDisappearTrigger(arg4, arg1, arg6, arg2, arg5, arg3)
end

function Quest75015:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75015:DestroyRepeatableNpcShowDisappearTriggerCommon(arg1, arg2)
    this:DestroyRepeatableNpcShowDisappearTrigger(arg2, arg1)
end

function Quest75015:OnSubStart7501501(arg1)
    print("OnSubStart7501501")
end

function Quest75015:OnSubFinish7501501(arg1)
    print("OnSubFinish7501501")
end

function Quest75015:OnSubStart7501506(arg1)
    print("OnSubStart7501506")
    this:NpcCreateWithNpcTrigger(npcs.Npc21549.id, 0, 30, 7501506)
end

function Quest75015:OnSubFinish7501506(arg1)
    print("OnSubFinish7501506")
    this:SafeDestroyQuestNpc(npcs.Npc21549.alias, 3)
    this:SetNavigationByMainId(75015, true)
end

function Quest75015:OnSubStart7501502(arg1)
    print("OnSubStart7501502")
end

function Quest75015:OnSubFinish7501502(arg1)
    print("OnSubFinish7501502")
end

function Quest75015:OnSubStart7501505(arg1)
    print("OnSubStart7501505")
    this:NpcCreateWithNpcTrigger(npcs.Npc21549.id, 0, 60, 7501505)
end

function Quest75015:OnSubFinish7501505(arg1)
    print("OnSubFinish7501505")
    this:SafeDestroyQuestNpc(npcs.Npc21549.alias, 3)
end

function Quest75015:OnSubStart7501503(arg1)
    print("OnSubStart7501503")
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7501503, 0, 60, "Q7501503", 50, npcs.Npc21460.id)
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75015):DoFreeStyle(7, true, nil, true, true, false, true)
end

function Quest75015:OnSubFinish7501503(arg1)
    print("OnSubFinish7501503")
end

function Quest75015:OnSubStart7501504(arg1)
    print("OnSubStart7501504")
    this:NpcCreateWithNpcTrigger(npcs.Npc21549.id, 0, 20, 7501504)
    this:CreateRepeatableNpcShowDisappearTriggerCommon(7501504, 0, 60, "Q7501503", 50, npcs.Npc21460.id)
end

function Quest75015:OnSubFinish7501504(arg1)
    print("OnSubFinish7501504")
    this:SafeDestroyQuestNpc(npcs.Npc21549.alias, 3)
    this:DestroyRepeatableNpcShowDisappearTriggerCommon(true, "Q7501503")
    this:ActionSafeCall(function(arg1)
        this:NatsaurusVehicleOff()
    end)
end

return Quest75015
