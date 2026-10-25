require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7013 = class("Quest7013", QuestActorProxy)
Quest7013.defaultAlias = "Quest7013"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7013:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["701329"] = self.OnSubStart701329,
        ["701301"] = self.OnSubStart701301,
        ["701317"] = self.OnSubStart701317,
        ["701326"] = self.OnSubStart701326,
        ["701321"] = self.OnSubStart701321,
        ["701302"] = self.OnSubStart701302,
        ["701327"] = self.OnSubStart701327,
        ["701303"] = self.OnSubStart701303,
        ["701324"] = self.OnSubStart701324,
        ["701325"] = self.OnSubStart701325,
        ["701304"] = self.OnSubStart701304,
        ["701305"] = self.OnSubStart701305,
        ["701306"] = self.OnSubStart701306,
        ["701307"] = self.OnSubStart701307,
        ["701308"] = self.OnSubStart701308,
        ["701309"] = self.OnSubStart701309,
        ["701310"] = self.OnSubStart701310,
        ["701322"] = self.OnSubStart701322,
        ["701311"] = self.OnSubStart701311,
        ["701323"] = self.OnSubStart701323,
        ["701312"] = self.OnSubStart701312,
        ["701313"] = self.OnSubStart701313,
        ["701314"] = self.OnSubStart701314,
        ["701315"] = self.OnSubStart701315,
        ["701316"] = self.OnSubStart701316,
        ["701318"] = self.OnSubStart701318,
        ["701319"] = self.OnSubStart701319,
        ["701328"] = self.OnSubStart701328,
        ["701320"] = self.OnSubStart701320
    }
end

function Quest7013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["701329"] = self.OnSubFinish701329,
        ["701301"] = self.OnSubFinish701301,
        ["701317"] = self.OnSubFinish701317,
        ["701326"] = self.OnSubFinish701326,
        ["701321"] = self.OnSubFinish701321,
        ["701302"] = self.OnSubFinish701302,
        ["701327"] = self.OnSubFinish701327,
        ["701303"] = self.OnSubFinish701303,
        ["701324"] = self.OnSubFinish701324,
        ["701325"] = self.OnSubFinish701325,
        ["701304"] = self.OnSubFinish701304,
        ["701305"] = self.OnSubFinish701305,
        ["701306"] = self.OnSubFinish701306,
        ["701307"] = self.OnSubFinish701307,
        ["701308"] = self.OnSubFinish701308,
        ["701309"] = self.OnSubFinish701309,
        ["701310"] = self.OnSubFinish701310,
        ["701322"] = self.OnSubFinish701322,
        ["701311"] = self.OnSubFinish701311,
        ["701323"] = self.OnSubFinish701323,
        ["701312"] = self.OnSubFinish701312,
        ["701313"] = self.OnSubFinish701313,
        ["701314"] = self.OnSubFinish701314,
        ["701315"] = self.OnSubFinish701315,
        ["701316"] = self.OnSubFinish701316,
        ["701318"] = self.OnSubFinish701318,
        ["701319"] = self.OnSubFinish701319,
        ["701328"] = self.OnSubFinish701328,
        ["701320"] = self.OnSubFinish701320
    }
end

function Quest7013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["701329"] = self.OnSubFailed701329,
        ["701301"] = self.OnSubFailed701301,
        ["701317"] = self.OnSubFailed701317,
        ["701321"] = self.OnSubFailed701321,
        ["701302"] = self.OnSubFailed701302,
        ["701327"] = self.OnSubFailed701327,
        ["701324"] = self.OnSubFailed701324,
        ["701310"] = self.OnSubFailed701310,
        ["701322"] = self.OnSubFailed701322,
        ["701311"] = self.OnSubFailed701311,
        ["701323"] = self.OnSubFailed701323,
        ["701316"] = self.OnSubFailed701316,
        ["701318"] = self.OnSubFailed701318
    }
end

function Quest7013:Start()
    print("Start")
end

function Quest7013:OnDestroy()
    print("OnDestroy")
end

function Quest7013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7013:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7013:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q701313Trigger", 7013)
    this:ActorDestroy("Q701323Trigger", 7013)
    this:ActorDestroy("Q701327Trigger", 7013)
    this:ActorDestroy("Q701328Trigger", 7013)
    this:ActorDestroy("Q701329Trigger", 7013)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1158
    local n2 = 1
    local tbl = {}
    local n3 = 10025
    local n4 = 10024
    tbl[1] = 10022
    tbl[2] = n3
    tbl[3] = n4
    banCrowdNpc(v2, n, n2, tbl, false, true)
    this:BanCrowdNpc(3712, 17, datas.InstanceIDList, false, true)
end

function Quest7013:ActorDestroy(arg1, arg2)
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

function Quest7013:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7013:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7013:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7013:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7013:OnSubStart701329(arg1)
    print("OnSubStart701329")
    actorMgr:CreateActorWithPos("Q701329Trigger", "Actor/Gadget/Q701329Trigger", 70900002, 0, points._Q701329TriggerPoint_.pos, points._Q701329TriggerPoint_.rot, true, false, 3, nil, 0, 7013)
end

function Quest7013:OnSubFinish701329(arg1)
    print("OnSubFinish701329")
end

function Quest7013:OnSubFailed701329(arg1)
    print("OnSubFailed701329")
    this:RecycleAllRes()
    this:ActorDestroy("Q701329Trigger", 7013)
end

function Quest7013:OnSubStart701301(arg1)
    print("OnSubStart701301")
    this:CancelStoryByQuest(110701301)
    this:DeployStoryByQuest(110701301)
end

function Quest7013:OnSubFinish701301(arg1)
    print("OnSubFinish701301")
end

function Quest7013:OnSubFailed701301(arg1)
    print("OnSubFailed701301")
    this:RecycleAllRes()
    this:CancelStoryByQuest(110701301)
end

function Quest7013:OnSubStart701317(arg1)
    print("OnSubStart701317")
    this:DeployStoryByQuest(110701301)
end

function Quest7013:OnSubFinish701317(arg1)
    print("OnSubFinish701317")
end

function Quest7013:OnSubFailed701317(arg1)
    print("OnSubFailed701317")
    this:RecycleAllRes()
    this:CancelStoryByQuest(110701301)
end

function Quest7013:OnSubStart701326(arg1)
    print("OnSubStart701326")
end

function Quest7013:OnSubFinish701326(arg1)
    print("OnSubFinish701326")
    this:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "QUEST_Black_Clear", false, true)
    this:SetNavigationByMainId(7013, true)
    actorUtils.InterruptReminder()
end

function Quest7013:OnSubStart701321(arg1)
    print("OnSubStart701321")
    this:DeployStoryByQuest(110701301)
end

function Quest7013:OnSubFinish701321(arg1)
    print("OnSubFinish701321")
    this:CancelStoryByQuest(110701301)
end

function Quest7013:OnSubFailed701321(arg1)
    print("OnSubFailed701321")
    this:RecycleAllRes()
    this:CancelStoryByQuest(110701301)
end

function Quest7013:OnSubStart701302(arg1)
    print("OnSubStart701302")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701302, 0, 38, 1, npcs.Npc1331.id)
end

function Quest7013:OnSubFinish701302(arg1)
    print("OnSubFinish701302")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
end

function Quest7013:OnSubFailed701302(arg1)
    print("OnSubFailed701302")
    this:RecycleAllRes()
end

function Quest7013:OnSubStart701327(arg1)
    print("OnSubStart701327")
    actorMgr:CreateActorWithPos("Q701327Trigger", "Actor/Gadget/Q701327Trigger", 70900002, 0, points._Q701327TriggerPoint_.pos, points._Q701327TriggerPoint_.rot, true, false, 3, nil, 0, 7013)
end

function Quest7013:OnSubFinish701327(arg1)
    print("OnSubFinish701327")
end

function Quest7013:OnSubFailed701327(arg1)
    print("OnSubFailed701327")
    this:RecycleAllRes()
end

function Quest7013:OnSubStart701303(arg1)
    print("OnSubStart701303")
    this:DeployStoryByQuest(110701302)
end

function Quest7013:OnSubFinish701303(arg1)
    print("OnSubFinish701303")
end

function Quest7013:OnSubStart701324(arg1)
    print("OnSubStart701324")
    this:DeployStoryByQuest(110701302)
end

function Quest7013:OnSubFinish701324(arg1)
    print("OnSubFinish701324")
end

function Quest7013:OnSubFailed701324(arg1)
    print("OnSubFailed701324")
    this:RecycleAllRes()
    this:CancelStoryByQuest(110701302)
end

function Quest7013:OnSubStart701325(arg1)
    print("OnSubStart701325")
    this:DeployStoryByQuest(110701302)
end

function Quest7013:OnSubFinish701325(arg1)
    print("OnSubFinish701325")
    this:CancelStoryByQuest(110701302)
end

function Quest7013:OnSubStart701304(arg1)
    print("OnSubStart701304")
    this:NpcCreateWithNpcTrigger(npcs.Npc1331.id, 0, 10, 701304)
    this:NotifyTo(npcs.Npc7445.alias, 1, true)
end

function Quest7013:OnSubFinish701304(arg1)
    print("OnSubFinish701304")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
    this:LightNotifyTo(npcs.Npc7445.alias, 0, true)
end

function Quest7013:OnSubStart701305(arg1)
    print("OnSubStart701305")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16846.id, 0, 701305, 20, true)
end

function Quest7013:OnSubFinish701305(arg1)
    print("OnSubFinish701305")
    this:NpcDestroyImmediately(1158, npcs.Npc16846.alias)
    this:QuestNarratorTask(datas.NarratorWithId_701306, nil)
end

function Quest7013:OnSubStart701306(arg1)
    print("OnSubStart701306")
    this:CreateQuestNpc(arg1, npcs.Npc16847.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7869.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7465.alias, 1, true)
    this:NpcCreateWithNpcTrigger(npcs.Npc16888.id, 0, 15, 701306)
end

function Quest7013:OnSubFinish701306(arg1)
    print("OnSubFinish701306")
    this:NpcDestroyImmediately(3, npcs.Npc16847.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7869.alias)
    this:LightNotifyTo(npcs.Npc7465.alias, 0, true)
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
end

function Quest7013:OnSubStart701307(arg1)
    print("OnSubStart701307")
    this:NpcCreateWithNpcTrigger(npcs.Npc1336.id, 0, 7.9, 701307)
end

function Quest7013:OnSubFinish701307(arg1)
    print("OnSubFinish701307")
    this:NpcDestroyImmediately(3, npcs.Npc1336.alias)
end

function Quest7013:OnSubStart701308(arg1)
    print("OnSubStart701308")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701308, 0, 20, 1, npcs.Npc1336.id)
end

function Quest7013:OnSubFinish701308(arg1)
    print("OnSubFinish701308")
    this:NpcDestroyImmediately(3, npcs.Npc1336.alias)
end

function Quest7013:OnSubStart701309(arg1)
    print("OnSubStart701309")
    this:NpcCreateWithNpcTrigger(npcs.Npc1332.id, 0, 20, 701309)
end

function Quest7013:OnSubFinish701309(arg1)
    print("OnSubFinish701309")
    this:NpcDestroyImmediately(3, npcs.Npc1332.alias)
end

function Quest7013:OnSubStart701310(arg1)
    print("OnSubStart701310")
    this:DeployStoryByQuest(110701303)
end

function Quest7013:OnSubFinish701310(arg1)
    print("OnSubFinish701310")
end

function Quest7013:OnSubFailed701310(arg1)
    print("OnSubFailed701310")
    this:RecycleAllRes()
    this:CancelStoryByQuest(110701303)
end

function Quest7013:OnSubStart701322(arg1)
    print("OnSubStart701322")
    this:DeployStoryByQuest(110701303)
end

function Quest7013:OnSubFinish701322(arg1)
    print("OnSubFinish701322")
end

function Quest7013:OnSubFailed701322(arg1)
    print("OnSubFailed701322")
    this:RecycleAllRes()
    this:CancelStoryByQuest(110701303)
end

function Quest7013:OnSubStart701311(arg1)
    print("OnSubStart701311")
    this:DeployStoryByQuest(110701303)
end

function Quest7013:OnSubFinish701311(arg1)
    print("OnSubFinish701311")
end

function Quest7013:OnSubFailed701311(arg1)
    print("OnSubFailed701311")
    this:RecycleAllRes()
    this:CancelStoryByQuest(110701303)
end

function Quest7013:OnSubStart701323(arg1)
    print("OnSubStart701323")
    actorMgr:CreateActorWithPos("Q701323Trigger", "Actor/Gadget/Q701323Trigger", 70900002, 0, points._Q701323TriggerPoint_.pos, points._Q701323TriggerPoint_.rot, true, false, 3, nil, 0, 7013)
end

function Quest7013:OnSubFinish701323(arg1)
    print("OnSubFinish701323")
end

function Quest7013:OnSubFailed701323(arg1)
    print("OnSubFailed701323")
    this:RecycleAllRes()
end

function Quest7013:OnSubStart701312(arg1)
    print("OnSubStart701312")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701312, 0, 20, 1, npcs.Npc1332.id)
    this:DeployStoryByQuest(110701303)
end

function Quest7013:OnSubFinish701312(arg1)
    print("OnSubFinish701312")
    this:NpcDestroyImmediately(3, npcs.Npc1332.alias)
    this:CancelStoryByQuest(110701303)
end

function Quest7013:OnSubStart701313(arg1)
    print("OnSubStart701313")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701313, 0, 25, 1, npcs.Npc1336.id)
    actorMgr:CreateActorWithPos("Q701313Trigger", "Actor/Gadget/Q701313Trigger", 70900002, 0, points._Q701313TriggerPoint_.pos, points._Q701313TriggerPoint_.rot, true, false, 3, nil, 0, 7013)
end

function Quest7013:OnSubFinish701313(arg1)
    print("OnSubFinish701313")
    this:NpcDestroyImmediately(3, npcs.Npc1336.alias)
    this:ActorDestroy("Q701313Trigger", 7013)
    this:QuestNarratorTask(datas.NarratorWithId_701312, nil)
end

function Quest7013:OnSubStart701314(arg1)
    print("OnSubStart701314")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701314, 0, 23, 1, npcs.Npc10200.id)
end

function Quest7013:OnSubFinish701314(arg1)
    print("OnSubFinish701314")
    this:NpcDestroyImmediately(3, npcs.Npc10200.alias)
    this:ClearNarratorTask()
end

function Quest7013:OnSubStart701315(arg1)
    print("OnSubStart701315")
    this:NpcCreateWithNpcTrigger(npcs.Npc16888.id, 0, 18, 701315)
end

function Quest7013:OnSubFinish701315(arg1)
    print("OnSubFinish701315")
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
    this:SetNavigationByMainId(7013, true)
end

function Quest7013:OnSubStart701316(arg1)
    print("OnSubStart701316")
end

function Quest7013:OnSubFinish701316(arg1)
    print("OnSubFinish701316")
    this:QuestNarratorTask(datas.NarratorWithId_701313, nil)
end

function Quest7013:OnSubFailed701316(arg1)
    print("OnSubFailed701316")
    this:RecycleAllRes()
end

function Quest7013:OnSubStart701318(arg1)
    print("OnSubStart701318")
end

function Quest7013:OnSubFinish701318(arg1)
    print("OnSubFinish701318")
    this:ClearNarratorTask()
end

function Quest7013:OnSubFailed701318(arg1)
    print("OnSubFailed701318")
    this:RecycleAllRes()
end

function Quest7013:OnSubStart701319(arg1)
    print("OnSubStart701319")
    this:CreateQuestNpc(arg1, npcs.Npc16863.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc16888.id, 0, 6.2, 701319)
    this:BanCrowdNpc(3712, 17, datas.InstanceIDList, true, true)
end

function Quest7013:OnSubFinish701319(arg1)
    print("OnSubFinish701319")
    this:NpcDestroyImmediately(3, npcs.Npc16863.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16888.alias)
    this:BanCrowdNpc(3712, 17, datas.InstanceIDList, false, true)
end

function Quest7013:OnSubStart701328(arg1)
    print("OnSubStart701328")
    this:CreateQuestNpc(arg1, npcs.Npc16849.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16849.alias, 7013):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc16851.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16852.id, 0, false, 0)
    this:NotifyTo(npcs.Npc3528.alias, 1, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1158
    local n2 = 1
    local tbl = {}
    local n3 = 10025
    local n4 = 10024
    tbl[1] = 10022
    tbl[2] = n3
    tbl[3] = n4
    banCrowdNpc(v2, n, n2, tbl, true, true)
    actorMgr:CreateActorWithPos("Q701328Trigger", "Actor/Gadget/Q701328Trigger", 70900002, 0, points._Q701328TriggerPoint_.pos, points._Q701328TriggerPoint_.rot, true, false, 1158, nil, 0, 7013)
end

function Quest7013:OnSubFinish701328(arg1)
    print("OnSubFinish701328")
end

function Quest7013:OnSubStart701320(arg1)
    print("OnSubStart701320")
    this:NpcCreateWithNpcTrigger(npcs.Npc1332.id, 0, 20, 701320)
    this:NotifyTo(npcs.Npc3528.alias, 1, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1158
    local n2 = 1
    local tbl = {}
    local n3 = 10025
    local n4 = 10024
    tbl[1] = 10022
    tbl[2] = n3
    tbl[3] = n4
    banCrowdNpc(v2, n, n2, tbl, true, true)
end

function Quest7013:OnSubFinish701320(arg1)
    print("OnSubFinish701320")
    this:NpcDestroyImmediately(1158, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(1158, npcs.Npc16849.alias)
    this:LightNotifyTo(npcs.Npc3528.alias, 0, true)
    local v = this
    local v2 = v
    local banCrowdNpc = v.BanCrowdNpc
    local n = 1158
    local n2 = 1
    local tbl = {}
    local n3 = 10025
    local n4 = 10024
    tbl[1] = 10022
    tbl[2] = n3
    tbl[3] = n4
    banCrowdNpc(v2, n, n2, tbl, false, true)
    this:NpcDestroyImmediately(1158, npcs.Npc16851.alias)
    this:NpcDestroyImmediately(1158, npcs.Npc16852.alias)
end

return Quest7013
