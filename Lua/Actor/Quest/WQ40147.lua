require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40147 = class("Quest40147", QuestActorProxy)
Quest40147.defaultAlias = "Quest40147"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest40147:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40147:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4014705"] = self.OnSubStart4014705,
        ["4014701"] = self.OnSubStart4014701,
        ["4014706"] = self.OnSubStart4014706,
        ["4014702"] = self.OnSubStart4014702,
        ["4014703"] = self.OnSubStart4014703,
        ["4014704"] = self.OnSubStart4014704
    }
end

function Quest40147:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4014705"] = self.OnSubFinish4014705,
        ["4014701"] = self.OnSubFinish4014701,
        ["4014706"] = self.OnSubFinish4014706,
        ["4014702"] = self.OnSubFinish4014702,
        ["4014703"] = self.OnSubFinish4014703,
        ["4014704"] = self.OnSubFinish4014704
    }
end

function Quest40147:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4014705"] = self.OnSubFailed4014705,
        ["4014701"] = self.OnSubFailed4014701,
        ["4014706"] = self.OnSubFailed4014706,
        ["4014702"] = self.OnSubFailed4014702,
        ["4014703"] = self.OnSubFailed4014703,
        ["4014704"] = self.OnSubFailed4014704
    }
end

function Quest40147:Start()
    print("Start")
end

function Quest40147:OnDestroy()
    print("OnDestroy")
end

function Quest40147:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40147:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40147:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1067.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1063.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2204.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2202.alias, 3)
    this:ActorDestroy("tigger2")
end

function Quest40147:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 40143888 then
        this:GetQuestNpcActor(npcs.Npc2204.alias, 40147):HideSelf()
    end

    if arg1 == 40143999 then
        this:GetQuestNpcActor(npcs.Npc2204.alias, 40147):ShowSelf()
    end
end

function Quest40147:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40147:OnSubStart4014705(arg1)
    print("OnSubStart4014705")
    this:CreateQuestNpc(arg1, npcs.Npc2204.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2202.id, 0)
end

function Quest40147:OnSubFinish4014705(arg1)
    print("OnSubFinish4014705")
end

function Quest40147:OnSubFailed4014705(arg1)
    print("OnSubFailed4014705")
end

function Quest40147:OnSubStart4014701(arg1)
    print("OnSubStart4014701")
end

function Quest40147:OnSubFinish4014701(arg1)
    print("OnSubFinish4014701")
end

function Quest40147:OnSubFailed4014701(arg1)
    print("OnSubFailed4014701")
end

function Quest40147:OnSubStart4014706(arg1)
    print("OnSubStart4014706")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1067.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1063.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1055.id, 0)
        this:GetQuestNpcActor(npcs.Npc1067.alias, 40147):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1063.alias, 40147):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1055.alias, 40147):SitOnChair(0, true)
    end)
end

function Quest40147:OnSubFinish4014706(arg1)
    print("OnSubFinish4014706")
end

function Quest40147:OnSubFailed4014706(arg1)
    print("OnSubFailed4014706")
end

function Quest40147:OnSubStart4014702(arg1)
    print("OnSubStart4014702")
    this:GetQuestNpcActor(npcs.Npc1067.alias, 40147):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 40147):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1055.alias, 40147):SitOnChair(0, true)
end

function Quest40147:OnSubFinish4014702(arg1)
    print("OnSubFinish4014702")
end

function Quest40147:OnSubFailed4014702(arg1)
    print("OnSubFailed4014702")
end

function Quest40147:OnSubStart4014703(arg1)
    print("OnSubStart4014703")
    actorMgr:CreateActorWithPos("tigger2", "Actor/Gadget/tigger2", 70900002, 0, points.Point2.pos, points.Point2.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 40147):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1063.alias, 40147):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1055.alias, 40147):SitOnChair(0, true)
end

function Quest40147:OnSubFinish4014703(arg1)
    print("OnSubFinish4014703")
end

function Quest40147:OnSubFailed4014703(arg1)
    print("OnSubFailed4014703")
end

function Quest40147:OnSubStart4014704(arg1)
    print("OnSubStart4014704")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1067.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1063.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1055.id, 0)
        this:GetQuestNpcActor(npcs.Npc1063.alias, 40147):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1055.alias, 40147):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)
end

function Quest40147:OnSubFinish4014704(arg1)
    print("OnSubFinish4014704")
    this:SafeDestroyQuestNpc(npcs.Npc2204.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1067.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1063.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2202.alias, 3)
end

function Quest40147:OnSubFailed4014704(arg1)
    print("OnSubFailed4014704")
end

return Quest40147
