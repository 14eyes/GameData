require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40148 = class("Quest40148", QuestActorProxy)
Quest40148.defaultAlias = "Quest40148"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest40148:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40148:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4014801"] = self.OnSubStart4014801,
        ["4014802"] = self.OnSubStart4014802,
        ["4014806"] = self.OnSubStart4014806,
        ["4014803"] = self.OnSubStart4014803,
        ["4014804"] = self.OnSubStart4014804,
        ["4014805"] = self.OnSubStart4014805
    }
end

function Quest40148:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4014801"] = self.OnSubFinish4014801,
        ["4014802"] = self.OnSubFinish4014802,
        ["4014806"] = self.OnSubFinish4014806,
        ["4014803"] = self.OnSubFinish4014803,
        ["4014804"] = self.OnSubFinish4014804,
        ["4014805"] = self.OnSubFinish4014805
    }
end

function Quest40148:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4014801"] = self.OnSubFailed4014801,
        ["4014802"] = self.OnSubFailed4014802,
        ["4014806"] = self.OnSubFailed4014806,
        ["4014803"] = self.OnSubFailed4014803,
        ["4014804"] = self.OnSubFailed4014804,
        ["4014805"] = self.OnSubFailed4014805
    }
end

function Quest40148:Start()
    print("Start")
end

function Quest40148:OnDestroy()
    print("OnDestroy")
end

function Quest40148:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40148:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40148:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc2204.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2202.alias, 3)
    this:ActorDestroy("tigger3")
end

function Quest40148:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 40143888 then
        this:GetQuestNpcActor(npcs.Npc2204.alias, 40148):HideSelf()
    end

    if arg1 == 40143999 then
        this:GetQuestNpcActor(npcs.Npc2204.alias, 40148):ShowSelf()
    end
end

function Quest40148:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40148:OnSubStart4014801(arg1)
    print("OnSubStart4014801")
    this:CreateQuestNpc(arg1, npcs.Npc2204.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2202.id, 0)
end

function Quest40148:OnSubFinish4014801(arg1)
    print("OnSubFinish4014801")
end

function Quest40148:OnSubFailed4014801(arg1)
    print("OnSubFailed4014801")
end

function Quest40148:OnSubStart4014802(arg1)
    print("OnSubStart4014802")
end

function Quest40148:OnSubFinish4014802(arg1)
    print("OnSubFinish4014802")
end

function Quest40148:OnSubFailed4014802(arg1)
    print("OnSubFailed4014802")
end

function Quest40148:OnSubStart4014806(arg1)
    print("OnSubStart4014806")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2204.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0)
        this:GetQuestNpcActor(npcs.Npc1044.alias, 40148):DoFreeStyle(1180, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1047.id, 0)
        this:GetQuestNpcActor(npcs.Npc1047.alias, 40148):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1044.alias, 40148):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1047.alias, 40148):DisableInteeHeadCtrl(true)
    end)
end

function Quest40148:OnSubFinish4014806(arg1)
    print("OnSubFinish4014806")
end

function Quest40148:OnSubFailed4014806(arg1)
    print("OnSubFailed4014806")
end

function Quest40148:OnSubStart4014803(arg1)
    print("OnSubStart4014803")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2204.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0)
        this:GetQuestNpcActor(npcs.Npc1047.alias, 40148):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1044.alias, 40148):DoFreeStyle(1180, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1044.alias, 40148):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1047.alias, 40148):DisableInteeHeadCtrl(true)
    end)
end

function Quest40148:OnSubFinish4014803(arg1)
    print("OnSubFinish4014803")
end

function Quest40148:OnSubFailed4014803(arg1)
    print("OnSubFailed4014803")
end

function Quest40148:OnSubStart4014804(arg1)
    print("OnSubStart4014804")
    this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0)
    actorMgr:CreateActorWithPos("tigger3", "Actor/Gadget/tigger3", 70900002, 0, points.Point3.pos, points.Point3.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1049.alias, 40148):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1047.alias, 40148):SitOnChair(0, true)
end

function Quest40148:OnSubFinish4014804(arg1)
    print("OnSubFinish4014804")
end

function Quest40148:OnSubFailed4014804(arg1)
    print("OnSubFailed4014804")
end

function Quest40148:OnSubStart4014805(arg1)
    print("OnSubStart4014805")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1044.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1049.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1047.id, 0)
        this:GetQuestNpcActor(npcs.Npc1047.alias, 40148):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1044.alias, 40148):DoFreeStyle(1170, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1049.alias, 40148):DoFreeStyle(1230, true, nil, true, true, false, true)
    end)
end

function Quest40148:OnSubFinish4014805(arg1)
    print("OnSubFinish4014805")
    this:SafeDestroyQuestNpc(npcs.Npc2204.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1049.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1047.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2202.alias, 3)
end

function Quest40148:OnSubFailed4014805(arg1)
    print("OnSubFailed4014805")
end

return Quest40148
