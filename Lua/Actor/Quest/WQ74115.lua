require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74115 = class("Quest74115", QuestActorProxy)
Quest74115.defaultAlias = "Quest74115"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74115:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74115:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7411501"] = self.OnSubStart7411501,
        ["7411502"] = self.OnSubStart7411502,
        ["7411503"] = self.OnSubStart7411503,
        ["7411504"] = self.OnSubStart7411504,
        ["7411505"] = self.OnSubStart7411505,
        ["7411506"] = self.OnSubStart7411506,
        ["7411522"] = self.OnSubStart7411522,
        ["7411507"] = self.OnSubStart7411507,
        ["7411520"] = self.OnSubStart7411520,
        ["7411521"] = self.OnSubStart7411521,
        ["7411523"] = self.OnSubStart7411523,
        ["7411524"] = self.OnSubStart7411524,
        ["7411525"] = self.OnSubStart7411525,
        ["7411508"] = self.OnSubStart7411508,
        ["7411509"] = self.OnSubStart7411509,
        ["7411510"] = self.OnSubStart7411510,
        ["7411511"] = self.OnSubStart7411511,
        ["7411512"] = self.OnSubStart7411512,
        ["7411513"] = self.OnSubStart7411513,
        ["7411514"] = self.OnSubStart7411514,
        ["7411515"] = self.OnSubStart7411515,
        ["7411516"] = self.OnSubStart7411516,
        ["7411517"] = self.OnSubStart7411517,
        ["7411527"] = self.OnSubStart7411527,
        ["7411526"] = self.OnSubStart7411526,
        ["7411518"] = self.OnSubStart7411518,
        ["7411519"] = self.OnSubStart7411519
    }
end

function Quest74115:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7411501"] = self.OnSubFinish7411501,
        ["7411502"] = self.OnSubFinish7411502,
        ["7411503"] = self.OnSubFinish7411503,
        ["7411504"] = self.OnSubFinish7411504,
        ["7411505"] = self.OnSubFinish7411505,
        ["7411506"] = self.OnSubFinish7411506,
        ["7411522"] = self.OnSubFinish7411522,
        ["7411507"] = self.OnSubFinish7411507,
        ["7411520"] = self.OnSubFinish7411520,
        ["7411521"] = self.OnSubFinish7411521,
        ["7411523"] = self.OnSubFinish7411523,
        ["7411524"] = self.OnSubFinish7411524,
        ["7411525"] = self.OnSubFinish7411525,
        ["7411508"] = self.OnSubFinish7411508,
        ["7411509"] = self.OnSubFinish7411509,
        ["7411510"] = self.OnSubFinish7411510,
        ["7411511"] = self.OnSubFinish7411511,
        ["7411512"] = self.OnSubFinish7411512,
        ["7411513"] = self.OnSubFinish7411513,
        ["7411514"] = self.OnSubFinish7411514,
        ["7411515"] = self.OnSubFinish7411515,
        ["7411516"] = self.OnSubFinish7411516,
        ["7411517"] = self.OnSubFinish7411517,
        ["7411527"] = self.OnSubFinish7411527,
        ["7411526"] = self.OnSubFinish7411526,
        ["7411518"] = self.OnSubFinish7411518,
        ["7411519"] = self.OnSubFinish7411519
    }
end

function Quest74115:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7411506"] = self.OnSubFailed7411506}
end

function Quest74115:Start()
    print("Start")
end

function Quest74115:OnDestroy()
    print("OnDestroy")
end

function Quest74115:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74115:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74115:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74115:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest74115:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74115:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74115:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(true, 7411506)
    end
end

function Quest74115:OnSubStart7411501(arg1)
    print("OnSubStart7411501")
end

function Quest74115:OnSubFinish7411501(arg1)
    print("OnSubFinish7411501")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
end

function Quest74115:OnSubStart7411502(arg1)
    print("OnSubStart7411502")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411502Trigger", "Actor/Gadget/Q7411502Trigger", 70900002, 0, {x = 31.219, y = 0.0, z = 33.369}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1083)
end

function Quest74115:OnSubFinish7411502(arg1)
    print("OnSubFinish7411502")
end

function Quest74115:OnSubStart7411503(arg1)
    print("OnSubStart7411503")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
    this:RequestInteraction(npcs.Npc21158Data.alias)
end

function Quest74115:OnSubFinish7411503(arg1)
    print("OnSubFinish7411503")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11323)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 1083)
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 1083)
end

function Quest74115:OnSubStart7411504(arg1)
    print("OnSubStart7411504")
    this:CreateQuestNpc(arg1, npcs.Npc21163Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21164Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21165Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21166Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411504Trigger", "Actor/Gadget/Q7411504Trigger", 70900002, 0, {x = 2502.935, y = 257.131, z = 4576.475}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest74115:OnSubFinish7411504(arg1)
    print("OnSubFinish7411504")
end

function Quest74115:OnSubStart7411505(arg1)
    print("OnSubStart7411505")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
end

function Quest74115:OnSubFinish7411505(arg1)
    print("OnSubFinish7411505")
    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21163Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21164Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21165Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21166Data.alias, 3)
end

function Quest74115:OnSubStart7411506(arg1)
    print("OnSubStart7411506")
    this:CreateQuestNpc(arg1, npcs.Npc21330Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21331Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411506Trigger", "Actor/Gadget/Q7411506Trigger", 70900002, 0, {x = 2498.613, y = 251.845, z = 4604.023}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest74115:OnSubFinish7411506(arg1)
    print("OnSubFinish7411506")
    this:ActorDestroy("Q7411506Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc21330Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21331Data.alias, 3)
end

function Quest74115:OnSubFailed7411506(arg1)
    print("OnSubFailed7411506")
    this:TransmitPlayerById(arg1, 2)
end

function Quest74115:OnSubStart7411522(arg1)
    print("OnSubStart7411522")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
end

function Quest74115:OnSubFinish7411522(arg1)
    print("OnSubFinish7411522")
end

function Quest74115:OnSubStart7411507(arg1)
    print("OnSubStart7411507")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
end

function Quest74115:OnSubFinish7411507(arg1)
    print("OnSubFinish7411507")
    this:SafeDestroyQuestNpc(npcs.Npc21163Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 3)
end

function Quest74115:OnSubStart7411520(arg1)
    print("OnSubStart7411520")
end

function Quest74115:OnSubFinish7411520(arg1)
    print("OnSubFinish7411520")
end

function Quest74115:OnSubStart7411521(arg1)
    print("OnSubStart7411521")
end

function Quest74115:OnSubFinish7411521(arg1)
    print("OnSubFinish7411521")
end

function Quest74115:OnSubStart7411523(arg1)
    print("OnSubStart7411523")
    this:CreateQuestNpc(arg1, npcs.Npc21289Data.id, 0)
end

function Quest74115:OnSubFinish7411523(arg1)
    print("OnSubFinish7411523")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11321)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21289Data.alias, 3)
end

function Quest74115:OnSubStart7411524(arg1)
    print("OnSubStart7411524")
    this:CreateQuestNpc(arg1, npcs.Npc21290Data.id, 0)
end

function Quest74115:OnSubFinish7411524(arg1)
    print("OnSubFinish7411524")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11306)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21290Data.alias, 3)
end

function Quest74115:OnSubStart7411525(arg1)
    print("OnSubStart7411525")
    this:CreateQuestNpc(arg1, npcs.Npc21291Data.id, 0)
end

function Quest74115:OnSubFinish7411525(arg1)
    print("OnSubFinish7411525")
    this:SafeDestroyQuestNpc(npcs.Npc21291Data.alias, 3)
end

function Quest74115:OnSubStart7411508(arg1)
    print("OnSubStart7411508")
end

function Quest74115:OnSubFinish7411508(arg1)
    print("OnSubFinish7411508")
    this:NarratorOnlyTaskByData(datas.R7411508)
end

function Quest74115:OnSubStart7411509(arg1)
    print("OnSubStart7411509")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21158Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest74115:OnSubFinish7411509(arg1)
    print("OnSubFinish7411509")
end

function Quest74115:OnSubStart7411510(arg1)
    print("OnSubStart7411510")
    this:CallDelayByQuest("1", 3, function(arg1_2)
        this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21158Data.id, 0, npcs.Npc21158Data.alias)
    end)
end

function Quest74115:OnSubFinish7411510(arg1)
    print("OnSubFinish7411510")
    this:NarratorOnlyTaskByData(datas.NarratorWithId7411510)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21158Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21164Data.alias)
end

function Quest74115:OnSubStart7411511(arg1)
    print("OnSubStart7411511")
end

function Quest74115:OnSubFinish7411511(arg1)
    print("OnSubFinish7411511")
end

function Quest74115:OnSubStart7411512(arg1)
    print("OnSubStart7411512")
    this:CreateQuestNpc(arg1, npcs.Npc21158Data.id, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21163Data.id, 0, npcs.Npc21163Data.alias)
end

function Quest74115:OnSubFinish7411512(arg1)
    print("OnSubFinish7411512")
    this:TransmitPlayerById(arg1, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21158Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21163Data.alias, 3)
end

function Quest74115:OnSubStart7411513(arg1)
    print("OnSubStart7411513")
    this:CreateQuestNpc(arg1, npcs.Npc21167Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21167Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7411513Trigger", "Actor/Gadget/Q7411513Trigger", 70900002, 0, points.TPos_Q7411513Trigger.pos, points.TPos_Q7411513Trigger.rot, true, false, 3)
end

function Quest74115:OnSubFinish7411513(arg1)
    print("OnSubFinish7411513")
end

function Quest74115:OnSubStart7411514(arg1)
    print("OnSubStart7411514")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21167Data.id, 0, npcs.Npc21167Data.alias)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21159Data.id, 0, npcs.Npc21159Data.alias)
end

function Quest74115:OnSubFinish7411514(arg1)
    print("OnSubFinish7411514")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:EnterSceneLookCamera({x = 3500.181, y = 283.39, z = 4547.691}, 0, 3, true, false)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21159Data.alias, 3)
end

function Quest74115:OnSubStart7411515(arg1)
    print("OnSubStart7411515")
    this:CreateQuestNpc(arg1, npcs.Npc21167Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:CallDelayByQuest("1", 2, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21167Data.alias, 74115)
            this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePoints7411515)
            actorMgr:CreateActorWithPos("Q7411515Trigger", "Actor/Gadget/Q7411515Trigger", 70900002, 0, {x = 3514.667, y = 283.052, z = 4552.168}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
        end)
    end)
end

function Quest74115:OnSubFinish7411515(arg1)
    print("OnSubFinish7411515")
end

function Quest74115:OnSubStart7411516(arg1)
    print("OnSubStart7411516")
end

function Quest74115:OnSubFinish7411516(arg1)
    print("OnSubFinish7411516")
end

function Quest74115:OnSubStart7411517(arg1)
    print("OnSubStart7411517")
    this:CreateQuestNpc(arg1, npcs.Npc21167Data.id, 0)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7411517Trigger", "Actor/Gadget/Q7411517Trigger", 70900002, 0, {x = 3498.561, y = 292.984, z = 4572.878}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21167Data.alias, 74115)
        this:NpcRunToRouteTaskEasy(questNpcActor, datas.RoutePoints7411517)
    end)
end

function Quest74115:OnSubFinish7411517(arg1)
    print("OnSubFinish7411517")
    this:ActorDestroy("Q7411517Trigger")
    this:ActionSafeCall(function(arg1)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11307)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11308)
        actorUtils.TryShowQuestEventItemFirstGetDialog(74113, 11315)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc21167Data.alias, 3)
end

function Quest74115:OnSubStart7411527(arg1)
    print("OnSubStart7411527")
end

function Quest74115:OnSubFinish7411527(arg1)
    print("OnSubFinish7411527")
end

function Quest74115:OnSubStart7411526(arg1)
    print("OnSubStart7411526")
    this:CreateQuestNpc(arg1, npcs.Npc21265Data.id, 0)
    actorMgr:CreateActorWithPos("Q7411526Trigger", "Actor/Gadget/Q7411526Trigger", 70900002, 0, points.TPos_Q7411526Trigger.pos, points.TPos_Q7411526Trigger.rot, true, false, 1084)
end

function Quest74115:OnSubFinish7411526(arg1)
    print("OnSubFinish7411526")
    this:ActorDestroy("Q7411526Trigger")
    this:NpcDestroyWithBlackscreen(1084, npcs.Npc21265Data.alias)
end

function Quest74115:OnSubStart7411518(arg1)
    print("OnSubStart7411518")
    actorMgr:CreateActorWithPos("Q7411518Trigger", "Actor/Gadget/Q7411518Trigger", 70900002, 0, points.TPos_Q7411518Trigger.pos, points.TPos_Q7411518Trigger.rot, true, false, 3)
end

function Quest74115:OnSubFinish7411518(arg1)
    print("OnSubFinish7411518")
end

function Quest74115:OnSubStart7411519(arg1)
    print("OnSubStart7411519")
    this:CreateQuestNpc(arg1, npcs.Npc21160Data.id, 0)
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc21265Data.id, 0, npcs.Npc21265Data.alias)
end

function Quest74115:OnSubFinish7411519(arg1)
    print("OnSubFinish7411519")
    this:TransmitPlayerById(arg1, 1)
    this:SafeDestroyQuestNpc(npcs.Npc21160Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21265Data.alias, 3)
end

return Quest74115
