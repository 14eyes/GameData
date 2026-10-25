require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40149 = class("Quest40149", QuestActorProxy)
Quest40149.defaultAlias = "Quest40149"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest40149:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40149:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4014901"] = self.OnSubStart4014901,
        ["4014902"] = self.OnSubStart4014902,
        ["4014906"] = self.OnSubStart4014906,
        ["4014903"] = self.OnSubStart4014903,
        ["4014904"] = self.OnSubStart4014904,
        ["4014905"] = self.OnSubStart4014905
    }
end

function Quest40149:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4014901"] = self.OnSubFinish4014901,
        ["4014902"] = self.OnSubFinish4014902,
        ["4014906"] = self.OnSubFinish4014906,
        ["4014903"] = self.OnSubFinish4014903,
        ["4014904"] = self.OnSubFinish4014904,
        ["4014905"] = self.OnSubFinish4014905
    }
end

function Quest40149:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4014901"] = self.OnSubFailed4014901,
        ["4014902"] = self.OnSubFailed4014902,
        ["4014906"] = self.OnSubFailed4014906,
        ["4014903"] = self.OnSubFailed4014903,
        ["4014904"] = self.OnSubFailed4014904,
        ["4014905"] = self.OnSubFailed4014905
    }
end

function Quest40149:Start()
    print("Start")
end

function Quest40149:OnDestroy()
    print("OnDestroy")
end

function Quest40149:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40149:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40149:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc2204.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Ambor.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1029.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1060.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2202.alias, 3)
    this:ActorDestroy("tigger4")
end

function Quest40149:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 40143888 then
        this:GetQuestNpcActor(npcs.Npc2204.alias, 40149):HideSelf()
    end

    if arg1 == 40143999 then
        this:GetQuestNpcActor(npcs.Npc2204.alias, 40149):ShowSelf()
    end
end

function Quest40149:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40149:OnSubStart4014901(arg1)
    print("OnSubStart4014901")
    this:CreateQuestNpc(arg1, npcs.Npc2204.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc2202.id, 0)
end

function Quest40149:OnSubFinish4014901(arg1)
    print("OnSubFinish4014901")
end

function Quest40149:OnSubFailed4014901(arg1)
    print("OnSubFailed4014901")
end

function Quest40149:OnSubStart4014902(arg1)
    print("OnSubStart4014902")
end

function Quest40149:OnSubFinish4014902(arg1)
    print("OnSubFinish4014902")
end

function Quest40149:OnSubFailed4014902(arg1)
    print("OnSubFailed4014902")
end

function Quest40149:OnSubStart4014906(arg1)
    print("OnSubStart4014906")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Ambor.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1029.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1060.id, 0)
        this:GetQuestNpcActor(npcs.Ambor.alias, 40149):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1029.alias, 40149):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Npc1060.alias, 40149):SitOnChair(0, true)
    end)
end

function Quest40149:OnSubFinish4014906(arg1)
    print("OnSubFinish4014906")
end

function Quest40149:OnSubFailed4014906(arg1)
    print("OnSubFailed4014906")
end

function Quest40149:OnSubStart4014903(arg1)
    print("OnSubStart4014903")
    this:GetQuestNpcActor(npcs.Ambor.alias, 40149):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1029.alias, 40149):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1060.alias, 40149):SitOnChair(0, true)
end

function Quest40149:OnSubFinish4014903(arg1)
    print("OnSubFinish4014903")
end

function Quest40149:OnSubFailed4014903(arg1)
    print("OnSubFailed4014903")
end

function Quest40149:OnSubStart4014904(arg1)
    print("OnSubStart4014904")
    actorMgr:CreateActorWithPos("tigger4", "Actor/Gadget/tigger4", 70900002, 0, points.Point4.pos, points.Point4.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Ambor.alias, 40149):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1029.alias, 40149):SitOnChair(0, true)
    this:GetQuestNpcActor(npcs.Npc1060.alias, 40149):SitOnChair(0, true)
end

function Quest40149:OnSubFinish4014904(arg1)
    print("OnSubFinish4014904")
end

function Quest40149:OnSubFailed4014904(arg1)
    print("OnSubFailed4014904")
end

function Quest40149:OnSubStart4014905(arg1)
    print("OnSubStart4014905")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2204.id, 0)
        this:CreateQuestNpc(arg1, npcs.Ambor.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1029.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1060.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2202.id, 0)
        this:GetQuestNpcActor(npcs.Npc1029.alias, 40149):SitOnChair(0, true)
        this:GetQuestNpcActor(npcs.Ambor.alias, 40149):DoFreeStyle(1190, true, nil, true, true, false, true)
    end)
end

function Quest40149:OnSubFinish4014905(arg1)
    print("OnSubFinish4014905")
    this:SafeDestroyQuestNpc(npcs.Npc2204.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Ambor.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1029.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1060.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2202.alias, 3)
end

function Quest40149:OnSubFailed4014905(arg1)
    print("OnSubFailed4014905")
end

return Quest40149
