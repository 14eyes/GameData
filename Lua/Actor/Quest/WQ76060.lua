require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76060 = class("Quest76060", QuestActorProxy)
Quest76060.defaultAlias = "Quest76060"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76060:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76060:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7606001"] = self.OnSubStart7606001,
        ["7606002"] = self.OnSubStart7606002,
        ["7606003"] = self.OnSubStart7606003
    }
end

function Quest76060:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7606001"] = self.OnSubFinish7606001,
        ["7606002"] = self.OnSubFinish7606002,
        ["7606003"] = self.OnSubFinish7606003
    }
end

function Quest76060:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76060:Start()
    print("Start")
end

function Quest76060:OnDestroy()
    print("OnDestroy")
end

function Quest76060:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76060:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76060:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc1318.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15702.alias, 3)
    this:DestroyNpcTrigger("Q7606001N1318Trigger")
    this:RemoveLocalGadget(70710565, "1")
end

function Quest76060:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q76060TriggerDeleteGuer")
end

function Quest76060:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76060:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76060:OnSubStart7606001(arg1)
    print("OnSubStart7606001")
    this:NpcCreateWithNpcTrigger(npcs.Npc1318.id, 0, 40, 7606001)
    this:CreateQuestNpc(arg1, npcs.Npc15702.id, 0, false, 0)
    this:CreateLocalGadget(70710565, "1", {x = 2134.76, y = 108.855, z = 11206}, {x = 0.1, y = 60, z = 360}, 3, nil, nil, false, 0, true)
end

function Quest76060:OnSubFinish7606001(arg1)
    print("OnSubFinish7606001")
    this:SetNavigationByMainId(76060, true)
end

function Quest76060:OnSubStart7606002(arg1)
    print("OnSubStart7606002")
    this:ActionSafeCall(function(arg1)
        this:CreateLocalGadget(70710565, "1", {x = 2134.76, y = 108.855, z = 11206}, {x = 0.1, y = 60, z = 360}, 3, nil, nil, false, 0, true)
    end)
end

function Quest76060:OnSubFinish7606002(arg1)
    print("OnSubFinish7606002")
end

function Quest76060:OnSubStart7606003(arg1)
    print("OnSubStart7606003")
    this:CreateLocalGadget(70710565, "1", {x = 2134.76, y = 108.855, z = 11206}, {x = 0.1, y = 60, z = 360}, 3, nil, nil, false, 0, true)
end

function Quest76060:OnSubFinish7606003(arg1)
    print("OnSubFinish7606003")
    this:SafeDestroyQuestNpc(npcs.Npc15702.alias, 3)
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1318.id, 0, false, 0.5, datas.QuestOrphanNpcPlaceList)
    this:RemoveLocalGadget(70710565, "1")
    actorMgr:CreateActorWithPos("Q76060TriggerDeleteGuer", "Actor/Gadget/Q76060TriggerDeleteGuer", 70900002, 0, points._Q76060TriggerDeleteGuerPoint_.pos, points._Q76060TriggerDeleteGuerPoint_.rot, true, false, 3)
end

return Quest76060
