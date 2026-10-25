require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5030 = class("Quest5030", QuestActorProxy)
Quest5030.defaultAlias = "Quest5030"
local clientData
local this
local mainID
local actorAlias
local npcs

function Quest5030:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
end

function Quest5030:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["503001"] = self.OnSubStart503001,
        ["503002"] = self.OnSubStart503002,
        ["503003"] = self.OnSubStart503003,
        ["503004"] = self.OnSubStart503004,
        ["503005"] = self.OnSubStart503005,
        ["503006"] = self.OnSubStart503006,
        ["503007"] = self.OnSubStart503007,
        ["503008"] = self.OnSubStart503008,
        ["503009"] = self.OnSubStart503009,
        ["503010"] = self.OnSubStart503010,
        ["503011"] = self.OnSubStart503011,
        ["503012"] = self.OnSubStart503012,
        ["503013"] = self.OnSubStart503013,
        ["503014"] = self.OnSubStart503014
    }
end

function Quest5030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["503001"] = self.OnSubFinish503001,
        ["503002"] = self.OnSubFinish503002,
        ["503003"] = self.OnSubFinish503003,
        ["503004"] = self.OnSubFinish503004,
        ["503005"] = self.OnSubFinish503005,
        ["503006"] = self.OnSubFinish503006,
        ["503007"] = self.OnSubFinish503007,
        ["503008"] = self.OnSubFinish503008,
        ["503009"] = self.OnSubFinish503009,
        ["503010"] = self.OnSubFinish503010,
        ["503011"] = self.OnSubFinish503011,
        ["503012"] = self.OnSubFinish503012,
        ["503013"] = self.OnSubFinish503013,
        ["503014"] = self.OnSubFinish503014
    }
end

function Quest5030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["503003"] = self.OnSubFailed503003}
end

function Quest5030:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5030:OnSubStart503001(arg1)
    print("OnSubStart503001")
    this:CreateQuestNpc(arg1, npcs.Npc14584.id, 0, false, 0)
end

function Quest5030:OnSubFinish503001(arg1)
    print("OnSubFinish503001")
    this:SafeDestroyQuestNpc(npcs.Npc14584.alias, 20238)
end

function Quest5030:OnSubStart503002(arg1)
    print("OnSubStart503002")
    this:CreateQuestNpc(arg1, npcs.Npc14393.id, 0, false, 0)
end

function Quest5030:OnSubFinish503002(arg1)
    print("OnSubFinish503002")
    this:SafeDestroyQuestNpc(npcs.Npc14393.alias, 20238)
end

function Quest5030:OnSubStart503003(arg1)
    print("OnSubStart503003")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14512.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14584.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14512.alias, 5030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14584.alias, 5030):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc14512.alias, 5030):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)
end

function Quest5030:OnSubFinish503003(arg1)
    print("OnSubFinish503003")
end

function Quest5030:OnSubFailed503003(arg1)
    print("OnSubFailed503003")
    this:DestroyQuestNpcActor(npcs.Npc14512.alias, 20238)
    this:DestroyQuestNpcActor(npcs.Npc14584.alias, 20238)
end

function Quest5030:OnSubStart503004(arg1)
    print("OnSubStart503004")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14512.id, arg1)
    this:GetQuestNpcActor(npcs.Npc14512.alias, 5030):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14584.id, arg1)
end

function Quest5030:OnSubFinish503004(arg1)
    print("OnSubFinish503004")
    this:SafeDestroyQuestNpc(npcs.Npc14512.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14584.alias, 20238)
end

function Quest5030:OnSubStart503005(arg1)
    print("OnSubStart503005")
    this:CreateQuestNpc(arg1, npcs.Npc14511.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14511.alias, 5030):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest5030:OnSubFinish503005(arg1)
    print("OnSubFinish503005")
    this:SafeDestroyQuestNpc(npcs.Npc14511.alias, 20238)
end

function Quest5030:OnSubStart503006(arg1)
    print("OnSubStart503006")
    this:CreateQuestNpc(arg1, npcs.Npc14511.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14511.alias, 5030):DoFreeStyle(1160, true, nil, true, true, false, true)
end

function Quest5030:OnSubFinish503006(arg1)
    print("OnSubFinish503006")
    this:SafeDestroyQuestNpc(npcs.Npc14511.alias, 20238)
end

function Quest5030:OnSubStart503007(arg1)
    print("OnSubStart503007")
    this:CreateQuestNpc(arg1, npcs.Npc14403.id, 0, false, 0)
end

function Quest5030:OnSubFinish503007(arg1)
    print("OnSubFinish503007")
    this:SafeDestroyQuestNpc(npcs.Npc14403.alias, 20238)
end

function Quest5030:OnSubStart503008(arg1)
    print("OnSubStart503008")
    this:CreateQuestNpc(arg1, npcs.Npc14413.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14414.id, 0, false, 0)
end

function Quest5030:OnSubFinish503008(arg1)
    print("OnSubFinish503008")
    this:SafeDestroyQuestNpc(npcs.Npc14413.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14414.alias, 20238)
end

function Quest5030:OnSubStart503009(arg1)
    print("OnSubStart503009")
    this:CreateQuestNpc(arg1, npcs.Npc14415.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14415.alias, 5030):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14610.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14611.id, 0, false, 0)
end

function Quest5030:OnSubFinish503009(arg1)
    print("OnSubFinish503009")
    this:SafeDestroyQuestNpc(npcs.Npc14415.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14610.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14611.alias, 20238)
end

function Quest5030:OnSubStart503010(arg1)
    print("OnSubStart503010")
    this:CreateQuestNpc(arg1, npcs.Npc14548.id, 0, false, 0)
end

function Quest5030:OnSubFinish503010(arg1)
    print("OnSubFinish503010")
    this:SafeDestroyQuestNpc(npcs.Npc14548.alias, 20238)
end

function Quest5030:OnSubStart503011(arg1)
    print("OnSubStart503011")
    this:CreateQuestNpc(arg1, npcs.Npc14388.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14513.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14514.id, 0, false, 0)
end

function Quest5030:OnSubFinish503011(arg1)
    print("OnSubFinish503011")
    this:SafeDestroyQuestNpc(npcs.Npc14388.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14513.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14514.alias, 20238)
end

function Quest5030:OnSubStart503012(arg1)
    print("OnSubStart503012")
    this:CreateQuestNpc(arg1, npcs.Npc14513.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14514.id, 0, false, 0)
end

function Quest5030:OnSubFinish503012(arg1)
    print("OnSubFinish503012")
    this:SafeDestroyQuestNpc(npcs.Npc14513.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14514.alias, 20238)
end

function Quest5030:OnSubStart503013(arg1)
    print("OnSubStart503013")
end

function Quest5030:OnSubFinish503013(arg1)
    print("OnSubFinish503013")
end

function Quest5030:OnSubStart503014(arg1)
    print("OnSubStart503014")
end

function Quest5030:OnSubFinish503014(arg1)
    print("OnSubFinish503014")
end

return Quest5030
