require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76203 = class("Quest76203", QuestActorProxy)
Quest76203.defaultAlias = "Quest76203"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76203:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76203:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7620308"] = self.OnSubStart7620308,
        ["7620301"] = self.OnSubStart7620301,
        ["7620309"] = self.OnSubStart7620309,
        ["7620302"] = self.OnSubStart7620302,
        ["7620311"] = self.OnSubStart7620311,
        ["7620303"] = self.OnSubStart7620303,
        ["7620312"] = self.OnSubStart7620312,
        ["7620304"] = self.OnSubStart7620304,
        ["7620310"] = self.OnSubStart7620310,
        ["7620307"] = self.OnSubStart7620307,
        ["7620305"] = self.OnSubStart7620305,
        ["7620306"] = self.OnSubStart7620306
    }
end

function Quest76203:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7620308"] = self.OnSubFinish7620308,
        ["7620301"] = self.OnSubFinish7620301,
        ["7620309"] = self.OnSubFinish7620309,
        ["7620302"] = self.OnSubFinish7620302,
        ["7620311"] = self.OnSubFinish7620311,
        ["7620303"] = self.OnSubFinish7620303,
        ["7620312"] = self.OnSubFinish7620312,
        ["7620304"] = self.OnSubFinish7620304,
        ["7620310"] = self.OnSubFinish7620310,
        ["7620307"] = self.OnSubFinish7620307,
        ["7620305"] = self.OnSubFinish7620305,
        ["7620306"] = self.OnSubFinish7620306
    }
end

function Quest76203:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7620302"] = self.OnSubFailed7620302,
        ["7620311"] = self.OnSubFailed7620311,
        ["7620303"] = self.OnSubFailed7620303,
        ["7620312"] = self.OnSubFailed7620312,
        ["7620304"] = self.OnSubFailed7620304,
        ["7620307"] = self.OnSubFailed7620307,
        ["7620305"] = self.OnSubFailed7620305,
        ["7620306"] = self.OnSubFailed7620306
    }
end

function Quest76203:Start()
    print("Start")
end

function Quest76203:OnDestroy()
    print("OnDestroy")
end

function Quest76203:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76203:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76203:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76203:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7620303Trigger", 76203)
    this:ActorDestroy("Q7620304Trigger", 76203)
    this:ActorDestroy("Q7620308Trigger", 76203)
    this:ActorDestroy("Q7620310Trigger", 76203)
    this:ActorDestroy("Q7620311Trigger", 76203)
    this:ActorDestroy("Q7620312Trigger", 76203)
end

function Quest76203:ActorDestroy(arg1, arg2)
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

function Quest76203:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest76203:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76203:OnSubStart7620308(arg1)
    print("OnSubStart7620308")
    actorMgr:CreateActorWithPos("Q7620308Trigger", "Actor/Gadget/Q7620308Trigger", 70900002, 0, points._Q7620308TriggerPoint_.pos, points._Q7620308TriggerPoint_.rot, true, false, 3, nil, 0, 76203)
end

function Quest76203:OnSubFinish7620308(arg1)
    print("OnSubFinish7620308")
    this:ActorDestroy("Q7620308Trigger", 76203)
end

function Quest76203:OnSubStart7620301(arg1)
    print("OnSubStart7620301")
    this:NpcCreateWithNoBlack(npcs.Npc1322_2.id, 0, 15, 7620301, true, 7620301)
end

function Quest76203:OnSubFinish7620301(arg1)
    print("OnSubFinish7620301")
    this:NpcDestroyImmediately(1156, npcs.Npc1322_2.alias)
    this:PlayerEnterDungeonPointWithDialogs(4, 1331, 7620301, 1, nil, 1, nil, nil)
end

function Quest76203:OnSubStart7620309(arg1)
    print("OnSubStart7620309")
end

function Quest76203:OnSubFinish7620309(arg1)
    print("OnSubFinish7620309")
end

function Quest76203:OnSubStart7620302(arg1)
    print("OnSubStart7620302")
    this:NpcCreateWithNoBlack(npcs.Npc16600.id, 0, 15, 7620302, true, 7620302)
    this:QuestNarratorTask(datas.NarratorWithId7620301, nil)
end

function Quest76203:OnSubFinish7620302(arg1)
    print("OnSubFinish7620302")
    this:NpcDestroyImmediately(20360, npcs.Npc16600.alias)
    this:ClearNarratorTask()
end

function Quest76203:OnSubFailed7620302(arg1)
    print("OnSubFailed7620302")
    this:RecycleAllRes()
end

function Quest76203:OnSubStart7620311(arg1)
    print("OnSubStart7620311")
    actorMgr:CreateActorWithPos("Q7620311Trigger", "Actor/Gadget/Q7620311Trigger", 70900002, 0, points._Q7620311TriggerPoint_.pos, points._Q7620311TriggerPoint_.rot, true, false, 20360, nil, 0, 76203)
end

function Quest76203:OnSubFinish7620311(arg1)
    print("OnSubFinish7620311")
    this:QuestNarratorTask(datas.NarratorWithId7620302, nil)
end

function Quest76203:OnSubFailed7620311(arg1)
    print("OnSubFailed7620311")
    this:RecycleAllRes()
end

function Quest76203:OnSubStart7620303(arg1)
    print("OnSubStart7620303")
    this:NpcCreateWithNoBlack(npcs.Npc16600.id, 0, 15, 7620303, true, 7620303)
end

function Quest76203:OnSubFinish7620303(arg1)
    print("OnSubFinish7620303")
    this:NpcDestroyImmediately(20360, npcs.Npc16600.alias)
end

function Quest76203:OnSubFailed7620303(arg1)
    print("OnSubFailed7620303")
    this:RecycleAllRes()
end

function Quest76203:OnSubStart7620312(arg1)
    print("OnSubStart7620312")
    actorMgr:CreateActorWithPos("Q7620312Trigger", "Actor/Gadget/Q7620312Trigger", 70900002, 0, points._Q7620312TriggerPoint_.pos, points._Q7620312TriggerPoint_.rot, true, false, 20360, nil, 0, 76203)
end

function Quest76203:OnSubFinish7620312(arg1)
    print("OnSubFinish7620312")
end

function Quest76203:OnSubFailed7620312(arg1)
    print("OnSubFailed7620312")
    this:RecycleAllRes()
end

function Quest76203:OnSubStart7620304(arg1)
    print("OnSubStart7620304")
    this:NpcCreateWithNoBlack(npcs.Npc16600.id, 0, 15, 7620304, true, 7620304)
end

function Quest76203:OnSubFinish7620304(arg1)
    print("OnSubFinish7620304")
    this:NpcDestroyImmediately(20360, npcs.Npc16600.alias)
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
end

function Quest76203:OnSubFailed7620304(arg1)
    print("OnSubFailed7620304")
    this:RecycleAllRes()
end

function Quest76203:OnSubStart7620310(arg1)
    print("OnSubStart7620310")
    actorMgr:CreateActorWithPos("Q7620310Trigger", "Actor/Gadget/Q7620310Trigger", 70900002, 0, points._Q7620310TriggerPoint_.pos, points._Q7620310TriggerPoint_.rot, true, false, 20360, nil, 0, 76203)
end

function Quest76203:OnSubFinish7620310(arg1)
    print("OnSubFinish7620310")
end

function Quest76203:OnSubStart7620307(arg1)
    print("OnSubStart7620307")
end

function Quest76203:OnSubFinish7620307(arg1)
    print("OnSubFinish7620307")
end

function Quest76203:OnSubFailed7620307(arg1)
    print("OnSubFailed7620307")
    this:RecycleAllRes()
end

function Quest76203:OnSubStart7620305(arg1)
    print("OnSubStart7620305")
    this:NpcCreateWithNoBlack(npcs.Npc1322_2.id, 0, 15, 7620305, true, 7620305)
end

function Quest76203:OnSubFinish7620305(arg1)
    print("OnSubFinish7620305")
    this:NpcDestroyImmediately(1156, npcs.Npc1322_2.alias)
end

function Quest76203:OnSubFailed7620305(arg1)
    print("OnSubFailed7620305")
    this:RecycleAllRes()
end

function Quest76203:OnSubStart7620306(arg1)
    print("OnSubStart7620306")
    this:DeployStoryByQuest(147620304)
    this:DeployStoryByQuest(147620300)
end

function Quest76203:OnSubFinish7620306(arg1)
    print("OnSubFinish7620306")
    this:QuestNarratorTask(datas.NarratorWithId7620304, nil)
    this:CancelStoryByQuest(147620304)
end

function Quest76203:OnSubFailed7620306(arg1)
    print("OnSubFailed7620306")
    this:RecycleAllRes()
end

return Quest76203
