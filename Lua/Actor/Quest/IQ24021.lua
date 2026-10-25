require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24021 = class("Quest24021", QuestActorProxy)
Quest24021.defaultAlias = "Quest24021"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest24021:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest24021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2402101"] = self.OnSubStart2402101,
        ["2402102"] = self.OnSubStart2402102,
        ["2402109"] = self.OnSubStart2402109,
        ["2402110"] = self.OnSubStart2402110,
        ["2402111"] = self.OnSubStart2402111,
        ["2402112"] = self.OnSubStart2402112,
        ["2402113"] = self.OnSubStart2402113,
        ["2402103"] = self.OnSubStart2402103,
        ["2402104"] = self.OnSubStart2402104,
        ["2402105"] = self.OnSubStart2402105,
        ["2402106"] = self.OnSubStart2402106,
        ["2402107"] = self.OnSubStart2402107,
        ["2402108"] = self.OnSubStart2402108
    }
end

function Quest24021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2402101"] = self.OnSubFinish2402101,
        ["2402102"] = self.OnSubFinish2402102,
        ["2402109"] = self.OnSubFinish2402109,
        ["2402110"] = self.OnSubFinish2402110,
        ["2402111"] = self.OnSubFinish2402111,
        ["2402112"] = self.OnSubFinish2402112,
        ["2402113"] = self.OnSubFinish2402113,
        ["2402103"] = self.OnSubFinish2402103,
        ["2402104"] = self.OnSubFinish2402104,
        ["2402105"] = self.OnSubFinish2402105,
        ["2402106"] = self.OnSubFinish2402106,
        ["2402107"] = self.OnSubFinish2402107,
        ["2402108"] = self.OnSubFinish2402108
    }
end

function Quest24021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24021:Start()
    print("Start")
end

function Quest24021:OnDestroy()
    print("OnDestroy")
end

function Quest24021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24021:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5256Data.alias, 3)
    actorMgr:DestroyEntityActor("Q2402111Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q2402101N5256Trigger", 3, false)
end

function Quest24021:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24021:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest24021:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest24021:OnSubStart2402101(arg1)
    print("OnSubStart2402101")
    this:NpcCreateWithNpcTrigger(npcs.Npc5256Data.id, 2402101, 0, 5)
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):SitOnChair(8010, true)
end

function Quest24021:OnSubFinish2402101(arg1)
    print("OnSubFinish2402101")
end

function Quest24021:OnSubStart2402102(arg1)
    print("OnSubStart2402102")
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):SitOnChair(8010, true)
end

function Quest24021:OnSubFinish2402102(arg1)
    print("OnSubFinish2402102")
end

function Quest24021:OnSubStart2402109(arg1)
    print("OnSubStart2402109")
end

function Quest24021:OnSubFinish2402109(arg1)
    print("OnSubFinish2402109")
end

function Quest24021:OnSubStart2402110(arg1)
    print("OnSubStart2402110")
end

function Quest24021:OnSubFinish2402110(arg1)
    print("OnSubFinish2402110")
end

function Quest24021:OnSubStart2402111(arg1)
    print("OnSubStart2402111")
    actorMgr:CreateActorWithPos("Q2402111Trigger", "Actor/Gadget/Q2402111Trigger", 70900002, 0, points.TPos_Q2402111Trigger.pos, points.TPos_Q2402111Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):SitOnChair(8010, true)
end

function Quest24021:OnSubFinish2402111(arg1)
    print("OnSubFinish2402111")
    this:ActorDestroy("Q2402111Trigger")
end

function Quest24021:OnSubStart2402112(arg1)
    print("OnSubStart2402112")
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):SitOnChair(8010, true)
end

function Quest24021:OnSubFinish2402112(arg1)
    print("OnSubFinish2402112")
end

function Quest24021:OnSubStart2402113(arg1)
    print("OnSubStart2402113")
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):SitOnChair(8010, true)
end

function Quest24021:OnSubFinish2402113(arg1)
    print("OnSubFinish2402113")
end

function Quest24021:OnSubStart2402103(arg1)
    print("OnSubStart2402103")
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):SitOnChair(8010, true)
end

function Quest24021:OnSubFinish2402103(arg1)
    print("OnSubFinish2402103")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5256Data.alias)
end

function Quest24021:OnSubStart2402104(arg1)
    print("OnSubStart2402104")
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):SitOnChair(8010, true)
end

function Quest24021:OnSubFinish2402104(arg1)
    print("OnSubFinish2402104")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5256Data.alias)
end

function Quest24021:OnSubStart2402105(arg1)
    print("OnSubStart2402105")
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):SitOnChair(8010, true)
end

function Quest24021:OnSubFinish2402105(arg1)
    print("OnSubFinish2402105")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5256Data.alias)
end

function Quest24021:OnSubStart2402106(arg1)
    print("OnSubStart2402106")
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):SitOnChair(8010, true)
end

function Quest24021:OnSubFinish2402106(arg1)
    print("OnSubFinish2402106")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5256Data.alias)
end

function Quest24021:OnSubStart2402107(arg1)
    print("OnSubStart2402107")
end

function Quest24021:OnSubFinish2402107(arg1)
    print("OnSubFinish2402107")
end

function Quest24021:OnSubStart2402108(arg1)
    print("OnSubStart2402108")
    this:GetQuestNpcActor(npcs.Npc5256Data.alias):SitOnChair(8010, true)
end

function Quest24021:OnSubFinish2402108(arg1)
    print("OnSubFinish2402108")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5256Data.alias)
end

return Quest24021
