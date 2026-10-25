require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6003 = class("Quest6003", QuestActorProxy)
Quest6003.defaultAlias = "Quest6003"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6003:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["600312"] = self.OnSubStart600312,
        ["600301"] = self.OnSubStart600301,
        ["600303"] = self.OnSubStart600303,
        ["600302"] = self.OnSubStart600302,
        ["600304"] = self.OnSubStart600304,
        ["600305"] = self.OnSubStart600305,
        ["600308"] = self.OnSubStart600308,
        ["600309"] = self.OnSubStart600309,
        ["600307"] = self.OnSubStart600307,
        ["600310"] = self.OnSubStart600310,
        ["600311"] = self.OnSubStart600311,
        ["600306"] = self.OnSubStart600306,
        ["600313"] = self.OnSubStart600313
    }
end

function Quest6003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["600312"] = self.OnSubFinish600312,
        ["600301"] = self.OnSubFinish600301,
        ["600303"] = self.OnSubFinish600303,
        ["600302"] = self.OnSubFinish600302,
        ["600304"] = self.OnSubFinish600304,
        ["600305"] = self.OnSubFinish600305,
        ["600308"] = self.OnSubFinish600308,
        ["600309"] = self.OnSubFinish600309,
        ["600307"] = self.OnSubFinish600307,
        ["600310"] = self.OnSubFinish600310,
        ["600311"] = self.OnSubFinish600311,
        ["600306"] = self.OnSubFinish600306,
        ["600313"] = self.OnSubFinish600313
    }
end

function Quest6003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["600305"] = self.OnSubFailed600305,
        ["600309"] = self.OnSubFailed600309,
        ["600310"] = self.OnSubFailed600310,
        ["600311"] = self.OnSubFailed600311
    }
end

function Quest6003:Start()
    print("Start")
end

function Quest6003:OnDestroy()
    print("OnDestroy")
end

function Quest6003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6003:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q600304Kaiche")
end

function Quest6003:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 600307 then
        actorUtils.FinishQuestID(false, 600307)
    elseif arg1 == 600306 then
        actorUtils.FinishQuestID(false, 600306)
    end
end

function Quest6003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6003:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest6003:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6003:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest6003:OnSubStart600312(arg1)
    print("OnSubStart600312")
end

function Quest6003:OnSubFinish600312(arg1)
    print("OnSubFinish600312")
    this:QuestNarratorTask(datas.Q600312Kaiche, nil)
end

function Quest6003:OnSubStart600301(arg1)
    print("OnSubStart600301")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 600301, 40, true)
    this:CreateQuestNpc(arg1, npcs.Npc1310.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1313.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1314.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1315.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1317.id, 0, false, 0)
end

function Quest6003:OnSubFinish600301(arg1)
    print("OnSubFinish600301")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
    this:NpcDestroyImmediately(1205, npcs.Npc1310.alias)
    this:NpcDestroyImmediately(1205, npcs.Npc1312.alias)
    this:NpcDestroyImmediately(1205, npcs.Npc1313.alias)
    this:NpcDestroyImmediately(1205, npcs.Npc1314.alias)
    this:NpcDestroyImmediately(1205, npcs.Npc1315.alias)
    this:NpcDestroyImmediately(1205, npcs.Npc1317.alias)
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
end

function Quest6003:OnSubStart600303(arg1)
    print("OnSubStart600303")
end

function Quest6003:OnSubFinish600303(arg1)
    print("OnSubFinish600303")
    this:TransmitPlayerWithQuestIdByData(600303, 1, datas.TransmitWithBlack, nil, nil, nil)
end

function Quest6003:OnSubStart600302(arg1)
    print("OnSubStart600302")
end

function Quest6003:OnSubFinish600302(arg1)
    print("OnSubFinish600302")
end

function Quest6003:OnSubStart600304(arg1)
    print("OnSubStart600304")
    this:CreateQuestNpc(arg1, npcs.Npc1316.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q600304Kaiche", "Actor/Gadget/Q600304Kaiche", 70900002, 0, points._Q600304KaichePoint_.pos, points._Q600304KaichePoint_.rot, true, false, 3)
    this:DeployRangeStoryByQuest(110600304, 3, {x = 6347.219, y = 206.442, z = 9525.001}, 65, 70)
end

function Quest6003:OnSubFinish600304(arg1)
    print("OnSubFinish600304")
    this:NpcDestroyImmediately(1205, npcs.Npc1316.alias)
    this:ActorDestroy("Q600304Kaiche")
    this:TryPauseCurAutoNarrator()
    this:ClearNarratorTask()
    this:CancelRangeStoryByQuest(110600304)
end

function Quest6003:OnSubStart600305(arg1)
    print("OnSubStart600305")
    this:NpcCreateWithNoBlackData(600305, 0, npcs.Npc16179.id, 0, 9.5, 600305, datas.NoBlackDataNormal)
end

function Quest6003:OnSubFinish600305(arg1)
    print("OnSubFinish600305")
    this:NpcDestroyImmediately(20322, npcs.Npc16179.alias)
end

function Quest6003:OnSubFailed600305(arg1)
    print("OnSubFailed600305")
    this:DestroyQuestNpcActor(npcs.Npc16179.alias, 20322)
    this:ActorDestroy("Q600305N16179Trigger")
    this:RecycleAllRes()
end

function Quest6003:OnSubStart600308(arg1)
    print("OnSubStart600308")
end

function Quest6003:OnSubFinish600308(arg1)
    print("OnSubFinish600308")
end

function Quest6003:OnSubStart600309(arg1)
    print("OnSubStart600309")
    this:NpcCreateWithNoBlackData(600309, 0, npcs.Npc16457.id, 0, 30, 600309, datas.NoBlackDataNormal)
    this:CreateLocalGadget(73119002, "11", {x = 335.857, y = 293.16, z = 188.946}, {x = 0, y = 0, z = 0}, 20322, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110600301)
end

function Quest6003:OnSubFinish600309(arg1)
    print("OnSubFinish600309")
    this:NpcDestroyImmediately(20322, npcs.Npc16457.alias)
    this:RemoveLocalGadget(73119002, "11")
    this:CancelStoryByQuest(110600301)
end

function Quest6003:OnSubFailed600309(arg1)
    print("OnSubFailed600309")
    this:DestroyQuestNpcActor(npcs.Npc16457.alias, 20322)
    this:RemoveLocalGadget(73119002, "11")
    this:CancelStoryByQuest(110600301)
    this:ActorDestroy("Q600309N12695Trigger")
    this:DestroyQuestNpcActor(npcs.Npc12695.alias, 20322)
    this:RecycleAllRes()
end

function Quest6003:OnSubStart600307(arg1)
    print("OnSubStart600307")
end

function Quest6003:OnSubFinish600307(arg1)
    print("OnSubFinish600307")
end

function Quest6003:OnSubStart600310(arg1)
    print("OnSubStart600310")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSS")
    actorUtils.BanUIByQuest(16, true, 6003)
    actorUtils.BanUIByQuest(27, true, 6003)
end

function Quest6003:OnSubFinish600310(arg1)
    print("OnSubFinish600310")
end

function Quest6003:OnSubFailed600310(arg1)
    print("OnSubFailed600310")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(16, false, 6003)
    actorUtils.BanUIByQuest(27, false, 6003)
end

function Quest6003:OnSubStart600311(arg1)
    print("OnSubStart600311")
    this:NpcCreateWithNoBlackData(600311, 0, npcs.Npc12695.id, 0, 45, 600311, datas.NoBlackDataNormal)
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiMainQuestBOSS")
    actorUtils.BanUIByQuest(16, true, 6003)
    actorUtils.BanUIByQuest(27, true, 6003)
end

function Quest6003:OnSubFinish600311(arg1)
    print("OnSubFinish600311")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.BanUIByQuest(16, false, 6003)
    actorUtils.BanUIByQuest(27, false, 6003)
end

function Quest6003:OnSubFailed600311(arg1)
    print("OnSubFailed600311")
    this:DestroyQuestNpcActor(npcs.Npc12695.alias, 20322)
    this:ActorDestroy("Q600311N12695Trigger")
    this:RecycleAllRes()
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiMainQuestBOSS")
    actorUtils.BanUIByQuest(16, false, 6003)
    actorUtils.BanUIByQuest(27, false, 6003)
end

function Quest6003:OnSubStart600306(arg1)
    print("OnSubStart600306")
end

function Quest6003:OnSubFinish600306(arg1)
    print("OnSubFinish600306")
end

function Quest6003:OnSubStart600313(arg1)
    print("OnSubStart600313")
    actorUtils.FinishQuestID(false, 600313)
end

function Quest6003:OnSubFinish600313(arg1)
    print("OnSubFinish600313")
end

return Quest6003
