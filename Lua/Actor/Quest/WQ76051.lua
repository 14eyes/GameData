require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76051 = class("Quest76051", QuestActorProxy)
Quest76051.defaultAlias = "Quest76051"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76051:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76051:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7605101"] = self.OnSubStart7605101,
        ["7605102"] = self.OnSubStart7605102,
        ["7605103"] = self.OnSubStart7605103
    }
end

function Quest76051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7605101"] = self.OnSubFinish7605101,
        ["7605102"] = self.OnSubFinish7605102,
        ["7605103"] = self.OnSubFinish7605103
    }
end

function Quest76051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76051:Start()
    print("Start")
end

function Quest76051:OnDestroy()
    print("OnDestroy")
end

function Quest76051:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76051:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76051:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15702.alias, 3)
    this:DestroyNpcTrigger("Q7605101N1318Trigger")
    this:RemoveLocalGadget(70710565, "1")
end

function Quest76051:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76051TriggerDeleteGuer")
end

function Quest76051:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76051:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76051:OnSubStart7605101(arg1)
    print("OnSubStart7605101")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7605101)
    this:CreateQuestNpc(arg1, npcs.Npc15702.id, 0, false, 0)
    this:CreateLocalGadget(70710565, "1", {x = 2138.613, y = 108.775, z = 11207.22}, {x = 359.67, y = 6.768, z = 359.376}, 3, nil, nil, false, 0, true)
end

function Quest76051:OnSubFinish7605101(arg1)
    print("OnSubFinish7605101")
    this:SetNavigationByMainId(76051, true)
end

function Quest76051:OnSubStart7605102(arg1)
    print("OnSubStart7605102")
    this:CreateLocalGadget(70710565, "1", {x = 2138.613, y = 108.775, z = 11207.22}, {x = 359.67, y = 6.768, z = 359.376}, 3, nil, nil, false, 0, true)
end

function Quest76051:OnSubFinish7605102(arg1)
    print("OnSubFinish7605102")
end

function Quest76051:OnSubStart7605103(arg1)
    print("OnSubStart7605103")
    this:CreateLocalGadget(70710565, "1", {x = 2138.613, y = 108.775, z = 11207.22}, {x = 359.67, y = 6.768, z = 359.376}, 3, nil, nil, false, 0, true)
end

function Quest76051:OnSubFinish7605103(arg1)
    print("OnSubFinish7605103")
    this:SafeDestroyQuestNpc(npcs.Npc15702.alias, 3)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:RemoveLocalGadget(70710565, "1")
    actorMgr:CreateActorWithPos("Q76051TriggerDeleteGuer", "Actor/Gadget/Q76051TriggerDeleteGuer", 70900002, 0, points._Q76051TriggerDeleteGuerPoint_.pos, points._Q76051TriggerDeleteGuerPoint_.rot, true, false, 3)
end

return Quest76051
