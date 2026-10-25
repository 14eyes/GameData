require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77100 = class("Quest77100", QuestActorProxy)
Quest77100.defaultAlias = "Quest77100"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77100:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77100:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7710001"] = self.OnSubStart7710001,
        ["7710004"] = self.OnSubStart7710004,
        ["7710002"] = self.OnSubStart7710002,
        ["7710003"] = self.OnSubStart7710003,
        ["7710005"] = self.OnSubStart7710005,
        ["7710029"] = self.OnSubStart7710029,
        ["7710030"] = self.OnSubStart7710030,
        ["7710006"] = self.OnSubStart7710006,
        ["7710007"] = self.OnSubStart7710007,
        ["7710008"] = self.OnSubStart7710008,
        ["7710023"] = self.OnSubStart7710023,
        ["7710009"] = self.OnSubStart7710009,
        ["7710011"] = self.OnSubStart7710011,
        ["7710024"] = self.OnSubStart7710024,
        ["7710012"] = self.OnSubStart7710012,
        ["7710013"] = self.OnSubStart7710013,
        ["7710019"] = self.OnSubStart7710019,
        ["7710027"] = self.OnSubStart7710027,
        ["7710014"] = self.OnSubStart7710014,
        ["7710033"] = self.OnSubStart7710033,
        ["7710031"] = self.OnSubStart7710031,
        ["7710015"] = self.OnSubStart7710015,
        ["7710028"] = self.OnSubStart7710028,
        ["7710021"] = self.OnSubStart7710021,
        ["7710025"] = self.OnSubStart7710025,
        ["7710016"] = self.OnSubStart7710016,
        ["7710017"] = self.OnSubStart7710017,
        ["7710018"] = self.OnSubStart7710018,
        ["7710026"] = self.OnSubStart7710026,
        ["7710022"] = self.OnSubStart7710022,
        ["7710020"] = self.OnSubStart7710020,
        ["7710010"] = self.OnSubStart7710010,
        ["7710032"] = self.OnSubStart7710032
    }
end

function Quest77100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7710001"] = self.OnSubFinish7710001,
        ["7710004"] = self.OnSubFinish7710004,
        ["7710002"] = self.OnSubFinish7710002,
        ["7710003"] = self.OnSubFinish7710003,
        ["7710005"] = self.OnSubFinish7710005,
        ["7710029"] = self.OnSubFinish7710029,
        ["7710030"] = self.OnSubFinish7710030,
        ["7710006"] = self.OnSubFinish7710006,
        ["7710007"] = self.OnSubFinish7710007,
        ["7710008"] = self.OnSubFinish7710008,
        ["7710023"] = self.OnSubFinish7710023,
        ["7710009"] = self.OnSubFinish7710009,
        ["7710011"] = self.OnSubFinish7710011,
        ["7710024"] = self.OnSubFinish7710024,
        ["7710012"] = self.OnSubFinish7710012,
        ["7710013"] = self.OnSubFinish7710013,
        ["7710019"] = self.OnSubFinish7710019,
        ["7710027"] = self.OnSubFinish7710027,
        ["7710014"] = self.OnSubFinish7710014,
        ["7710033"] = self.OnSubFinish7710033,
        ["7710031"] = self.OnSubFinish7710031,
        ["7710015"] = self.OnSubFinish7710015,
        ["7710028"] = self.OnSubFinish7710028,
        ["7710021"] = self.OnSubFinish7710021,
        ["7710025"] = self.OnSubFinish7710025,
        ["7710016"] = self.OnSubFinish7710016,
        ["7710017"] = self.OnSubFinish7710017,
        ["7710018"] = self.OnSubFinish7710018,
        ["7710026"] = self.OnSubFinish7710026,
        ["7710022"] = self.OnSubFinish7710022,
        ["7710020"] = self.OnSubFinish7710020,
        ["7710010"] = self.OnSubFinish7710010,
        ["7710032"] = self.OnSubFinish7710032
    }
end

function Quest77100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7710004"] = self.OnSubFailed7710004}
end

function Quest77100:Start()
    print("Start")
end

function Quest77100:OnDestroy()
    print("OnDestroy")
end

function Quest77100:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77100:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77100:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77100:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7710004Trigger", nil)
    this:ActorDestroy("Q7710003Trigger", nil)
    this:ActorDestroy("Q7710006Trigger", nil)
    this:ActorDestroy("Q7710007Trigger", nil)
    this:ActorDestroy("Q7710012Trigger", nil)
    this:ActorDestroy("Q7710018Trigger", nil)
    this:ActorDestroy("Q7710011igger", 77100)
    this:ActorDestroy("Q7710021Trigger", 77100)
    this:ActorDestroy("Q7710029Trigger", 77100)
    this:ActorDestroy("Q7710030Trigger", 77100)
end

function Quest77100:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest77100:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77100:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77100:OnSubStart7710001(arg1)
    print("OnSubStart7710001")
    actorUtils.FinishQuestID(false, 7710001)
end

function Quest77100:OnSubFinish7710001(arg1)
    print("OnSubFinish7710001")
end

function Quest77100:OnSubStart7710004(arg1)
    print("OnSubStart7710004")
    actorMgr:CreateActorWithPos("Q7710004Trigger", "Actor/Gadget/Q7710004Trigger", 70900002, 0, points._Q7710004TriggerPoint_.pos, points._Q7710004TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77100:OnSubFinish7710004(arg1)
    print("OnSubFinish7710004")
end

function Quest77100:OnSubFailed7710004(arg1)
    print("OnSubFailed7710004")
    this:RecycleAllRes()
end

function Quest77100:OnSubStart7710002(arg1)
    print("OnSubStart7710002")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710002, 0, 8, 1, npcs.Npc22280.id)
end

function Quest77100:OnSubFinish7710002(arg1)
    print("OnSubFinish7710002")
    this:SafeDestroyQuestNpc(npcs.Npc22280.alias, 3)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77100:OnSubStart7710003(arg1)
    print("OnSubStart7710003")
    actorMgr:CreateActorWithPos("Q7710003Trigger", "Actor/Gadget/Q7710003Trigger", 70900002, 0, points._Q7710003TriggerPoint_.pos, points._Q7710003TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77100:OnSubFinish7710003(arg1)
    print("OnSubFinish7710003")
end

function Quest77100:OnSubStart7710005(arg1)
    print("OnSubStart7710005")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710005, 0, 10, 1, npcs.Npc22280.id)
end

function Quest77100:OnSubFinish7710005(arg1)
    print("OnSubFinish7710005")
    this:SafeDestroyQuestNpc(npcs.Npc22280.alias, 3)
end

function Quest77100:OnSubStart7710029(arg1)
    print("OnSubStart7710029")
    actorMgr:CreateActorWithPos("Q7710029Trigger", "Actor/Gadget/Q7710029Trigger", 70900002, 0, points._Q7710029TriggerPoint_.pos, points._Q7710029TriggerPoint_.rot, true, false, 3, nil, 0, 77100)
end

function Quest77100:OnSubFinish7710029(arg1)
    print("OnSubFinish7710029")
end

function Quest77100:OnSubStart7710030(arg1)
    print("OnSubStart7710030")
    actorMgr:CreateActorWithPos("Q7710030Trigger", "Actor/Gadget/Q7710030Trigger", 70900002, 0, points._Q7710030TriggerPoint_.pos, points._Q7710030TriggerPoint_.rot, true, false, 3, nil, 0, 77100)
end

function Quest77100:OnSubFinish7710030(arg1)
    print("OnSubFinish7710030")
end

function Quest77100:OnSubStart7710006(arg1)
    print("OnSubStart7710006")
    actorMgr:CreateActorWithPos("Q7710006Trigger", "Actor/Gadget/Q7710006Trigger", 70900002, 0, points._Q7710006TriggerPoint_.pos, points._Q7710006TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77100:OnSubFinish7710006(arg1)
    print("OnSubFinish7710006")
end

function Quest77100:OnSubStart7710007(arg1)
    print("OnSubStart7710007")
    actorMgr:CreateActorWithPos("Q7710007Trigger", "Actor/Gadget/Q7710007Trigger", 70900002, 0, points._Q7710007TriggerPoint_.pos, points._Q7710007TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77100:OnSubFinish7710007(arg1)
    print("OnSubFinish7710007")
end

function Quest77100:OnSubStart7710008(arg1)
    print("OnSubStart7710008")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710008, 0, 15, 1, npcs.Npc22280.id)
end

function Quest77100:OnSubFinish7710008(arg1)
    print("OnSubFinish7710008")
    this:SafeDestroyQuestNpc(npcs.Npc22280.alias, 3)
end

function Quest77100:OnSubStart7710023(arg1)
    print("OnSubStart7710023")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710023, 0, 20, 1, npcs.Npc22280.id)
end

function Quest77100:OnSubFinish7710023(arg1)
    print("OnSubFinish7710023")
    this:SafeDestroyQuestNpc(npcs.Npc22280.alias, 3)
end

function Quest77100:OnSubStart7710009(arg1)
    print("OnSubStart7710009")
end

function Quest77100:OnSubFinish7710009(arg1)
    print("OnSubFinish7710009")
end

function Quest77100:OnSubStart7710011(arg1)
    print("OnSubStart7710011")
    actorMgr:CreateActorWithPos("Q7710011igger", "Actor/Gadget/Q7710011igger", 70900002, 0, points._Q7710011iggerPoint_.pos, points._Q7710011iggerPoint_.rot, true, false, 3, nil, 0, 77100)
end

function Quest77100:OnSubFinish7710011(arg1)
    print("OnSubFinish7710011")
end

function Quest77100:OnSubStart7710024(arg1)
    print("OnSubStart7710024")
    this:CreateQuestNpc(arg1, npcs.Npc22531.id, 0, false, 0)
end

function Quest77100:OnSubFinish7710024(arg1)
    print("OnSubFinish7710024")
    this:SafeDestroyQuestNpc(npcs.Npc22531.alias, 3)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77100:OnSubStart7710012(arg1)
    print("OnSubStart7710012")
    this:CreateQuestNpc(arg1, npcs.Npc22281.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22351.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710012, 0, 20, 1, npcs.Npc22352.id)
    this:CreateQuestNpc(arg1, npcs.Npc22612.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710012Trigger", "Actor/Gadget/Q7710012Trigger", 70900002, 0, points._Q7710012TriggerPoint_.pos, points._Q7710012TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorUtils.SetQuestPostEffect("PostEffect_Scene_PhotoFilter_Blessing01", true, 3, true)
end

function Quest77100:OnSubFinish7710012(arg1)
    print("OnSubFinish7710012")
end

function Quest77100:OnSubStart7710013(arg1)
    print("OnSubStart7710013")
    this:CreateQuestNpc(arg1, npcs.Npc22283.id, 0, false, 0)
end

function Quest77100:OnSubFinish7710013(arg1)
    print("OnSubFinish7710013")
end

function Quest77100:OnSubStart7710019(arg1)
    print("OnSubStart7710019")
end

function Quest77100:OnSubFinish7710019(arg1)
    print("OnSubFinish7710019")
end

function Quest77100:OnSubStart7710027(arg1)
    print("OnSubStart7710027")
end

function Quest77100:OnSubFinish7710027(arg1)
    print("OnSubFinish7710027")
end

function Quest77100:OnSubStart7710014(arg1)
    print("OnSubStart7710014")
    this:CreateQuestNpc(arg1, npcs.Npc22284.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22369.id, 0, false, 0)
end

function Quest77100:OnSubFinish7710014(arg1)
    print("OnSubFinish7710014")
    this:SafeDestroyQuestNpc(npcs.Npc22284.alias, 3)
end

function Quest77100:OnSubStart7710033(arg1)
    print("OnSubStart7710033")
    this:CreateQuestNpc(arg1, npcs.Npc22369.id, 0, false, 0)
end

function Quest77100:OnSubFinish7710033(arg1)
    print("OnSubFinish7710033")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc22369.alias, 0)
    this:NpcRunToRouteTaskEasy(questNpcActor, datas.Route7710033, nil)
end

function Quest77100:OnSubStart7710031(arg1)
    print("OnSubStart7710031")
    this:CreateQuestNpc(arg1, npcs.Npc22292.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22285.id, 0, false, 0)
end

function Quest77100:OnSubFinish7710031(arg1)
    print("OnSubFinish7710031")
end

function Quest77100:OnSubStart7710015(arg1)
    print("OnSubStart7710015")
    this:CreateQuestNpc(arg1, npcs.Npc22285.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22292.id, 0, false, 0)
end

function Quest77100:OnSubFinish7710015(arg1)
    print("OnSubFinish7710015")
    this:SafeDestroyQuestNpc(npcs.Npc22285.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22292.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_7710015, nil)
end

function Quest77100:OnSubStart7710028(arg1)
    print("OnSubStart7710028")
    this:CreateQuestNpc(arg1, npcs.Npc22369.id, 0, false, 0)
end

function Quest77100:OnSubFinish7710028(arg1)
    print("OnSubFinish7710028")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc22369.alias, 77100)
    this:NpcWalkToRouteTaskEasy(questNpcActor, datas.Cat1, nil)
end

function Quest77100:OnSubStart7710021(arg1)
    print("OnSubStart7710021")
    this:CreateQuestNpc(arg1, npcs.Npc22281.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710021Trigger", "Actor/Gadget/Q7710021Trigger", 70900002, 0, points._Q7710021TriggerPoint_.pos, points._Q7710021TriggerPoint_.rot, true, false, 3, nil, 0, 77100)
end

function Quest77100:OnSubFinish7710021(arg1)
    print("OnSubFinish7710021")
end

function Quest77100:OnSubStart7710025(arg1)
    print("OnSubStart7710025")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710025, 0, 20, 1, npcs.Npc22369.id)
    this:CreateQuestNpc(arg1, npcs.Npc22281.id, 0, false, 0)
end

function Quest77100:OnSubFinish7710025(arg1)
    print("OnSubFinish7710025")
end

function Quest77100:OnSubStart7710016(arg1)
    print("OnSubStart7710016")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710016, 0, 19, 1, npcs.Npc22279_1.id)
    this:CreateQuestNpc(arg1, npcs.Npc22281.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22281.alias, 77100):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest77100:OnSubFinish7710016(arg1)
    print("OnSubFinish7710016")
    this:SafeDestroyQuestNpc(npcs.Npc22279_1.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22369.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22283.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22612.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22281.alias, 3)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    actorUtils.SetQuestPostEffect("PostEffect_Scene_PhotoFilter_Blessing01", false, 0, false)
end

function Quest77100:OnSubStart7710017(arg1)
    print("OnSubStart7710017")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7710017, 0, 20, 1, npcs.Npc22280.id)
end

function Quest77100:OnSubFinish7710017(arg1)
    print("OnSubFinish7710017")
    this:SafeDestroyQuestNpc(npcs.Npc22280.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22351.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22352.alias, 3)
end

function Quest77100:OnSubStart7710018(arg1)
    print("OnSubStart7710018")
    actorMgr:CreateActorWithPos("Q7710018Trigger", "Actor/Gadget/Q7710018Trigger", 70900002, 0, points._Q7710018TriggerPoint_.pos, points._Q7710018TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77100:OnSubFinish7710018(arg1)
    print("OnSubFinish7710018")
    this:SetNavigationByMainId(77101, true)
end

function Quest77100:OnSubStart7710026(arg1)
    print("OnSubStart7710026")
    this:NpcCreateWithNpcTrigger(npcs.Npc22292.id, 0, 8, 7710026)
end

function Quest77100:OnSubFinish7710026(arg1)
    print("OnSubFinish7710026")
    this:SafeDestroyQuestNpc(npcs.Npc22292.alias, 3)
end

function Quest77100:OnSubStart7710022(arg1)
    print("OnSubStart7710022")
end

function Quest77100:OnSubFinish7710022(arg1)
    print("OnSubFinish7710022")
end

function Quest77100:OnSubStart7710020(arg1)
    print("OnSubStart7710020")
end

function Quest77100:OnSubFinish7710020(arg1)
    print("OnSubFinish7710020")
end

function Quest77100:OnSubStart7710010(arg1)
    print("OnSubStart7710010")
end

function Quest77100:OnSubFinish7710010(arg1)
    print("OnSubFinish7710010")
end

function Quest77100:OnSubStart7710032(arg1)
    print("OnSubStart7710032")
    this:CreateQuestNpc(arg1, npcs.Npc22351.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22352.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22369.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22554.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22612.id, 0, false, 0)
end

function Quest77100:OnSubFinish7710032(arg1)
    print("OnSubFinish7710032")
    this:SafeDestroyQuestNpc(npcs.Npc22554.alias, 3)
end

return Quest77100
