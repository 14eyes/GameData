require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76131 = class("Quest76131", QuestActorProxy)
Quest76131.defaultAlias = "Quest76131"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76131:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76131:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7613128"] = self.OnSubStart7613128,
        ["7613125"] = self.OnSubStart7613125,
        ["7613102"] = self.OnSubStart7613102,
        ["7613103"] = self.OnSubStart7613103,
        ["7613104"] = self.OnSubStart7613104,
        ["7613105"] = self.OnSubStart7613105,
        ["7613123"] = self.OnSubStart7613123,
        ["7613106"] = self.OnSubStart7613106,
        ["7613132"] = self.OnSubStart7613132,
        ["7613133"] = self.OnSubStart7613133,
        ["7613107"] = self.OnSubStart7613107,
        ["7613101"] = self.OnSubStart7613101,
        ["7613108"] = self.OnSubStart7613108,
        ["7613112"] = self.OnSubStart7613112,
        ["7613113"] = self.OnSubStart7613113,
        ["7613115"] = self.OnSubStart7613115,
        ["7613109"] = self.OnSubStart7613109,
        ["7613110"] = self.OnSubStart7613110,
        ["7613111"] = self.OnSubStart7613111,
        ["7613114"] = self.OnSubStart7613114,
        ["7613130"] = self.OnSubStart7613130,
        ["7613117"] = self.OnSubStart7613117,
        ["7613118"] = self.OnSubStart7613118,
        ["7613119"] = self.OnSubStart7613119,
        ["7613124"] = self.OnSubStart7613124,
        ["7613137"] = self.OnSubStart7613137,
        ["7613120"] = self.OnSubStart7613120,
        ["7613121"] = self.OnSubStart7613121,
        ["7613122"] = self.OnSubStart7613122,
        ["7613126"] = self.OnSubStart7613126,
        ["7613136"] = self.OnSubStart7613136,
        ["7613116"] = self.OnSubStart7613116,
        ["7613138"] = self.OnSubStart7613138
    }
end

function Quest76131:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7613128"] = self.OnSubFinish7613128,
        ["7613125"] = self.OnSubFinish7613125,
        ["7613102"] = self.OnSubFinish7613102,
        ["7613103"] = self.OnSubFinish7613103,
        ["7613104"] = self.OnSubFinish7613104,
        ["7613105"] = self.OnSubFinish7613105,
        ["7613123"] = self.OnSubFinish7613123,
        ["7613106"] = self.OnSubFinish7613106,
        ["7613132"] = self.OnSubFinish7613132,
        ["7613133"] = self.OnSubFinish7613133,
        ["7613107"] = self.OnSubFinish7613107,
        ["7613101"] = self.OnSubFinish7613101,
        ["7613108"] = self.OnSubFinish7613108,
        ["7613112"] = self.OnSubFinish7613112,
        ["7613113"] = self.OnSubFinish7613113,
        ["7613115"] = self.OnSubFinish7613115,
        ["7613109"] = self.OnSubFinish7613109,
        ["7613110"] = self.OnSubFinish7613110,
        ["7613111"] = self.OnSubFinish7613111,
        ["7613114"] = self.OnSubFinish7613114,
        ["7613130"] = self.OnSubFinish7613130,
        ["7613117"] = self.OnSubFinish7613117,
        ["7613118"] = self.OnSubFinish7613118,
        ["7613119"] = self.OnSubFinish7613119,
        ["7613124"] = self.OnSubFinish7613124,
        ["7613137"] = self.OnSubFinish7613137,
        ["7613120"] = self.OnSubFinish7613120,
        ["7613121"] = self.OnSubFinish7613121,
        ["7613122"] = self.OnSubFinish7613122,
        ["7613126"] = self.OnSubFinish7613126,
        ["7613136"] = self.OnSubFinish7613136,
        ["7613116"] = self.OnSubFinish7613116,
        ["7613138"] = self.OnSubFinish7613138
    }
end

function Quest76131:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7613125"] = self.OnSubFailed7613125,
        ["7613102"] = self.OnSubFailed7613102,
        ["7613103"] = self.OnSubFailed7613103,
        ["7613108"] = self.OnSubFailed7613108,
        ["7613112"] = self.OnSubFailed7613112,
        ["7613113"] = self.OnSubFailed7613113,
        ["7613115"] = self.OnSubFailed7613115,
        ["7613122"] = self.OnSubFailed7613122,
        ["7613126"] = self.OnSubFailed7613126,
        ["7613136"] = self.OnSubFailed7613136,
        ["7613116"] = self.OnSubFailed7613116,
        ["7613138"] = self.OnSubFailed7613138
    }
end

function Quest76131:Start()
    print("Start")
end

function Quest76131:OnDestroy()
    print("OnDestroy")
end

function Quest76131:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76131:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76131:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("")
    this:DestroyNpcTrigger("Q7613104N22261Trigger")
    this:DestroyNpcTrigger("Q7613106N22261Trigger")
    this:DestroyNpcTrigger("Q7613111N22261Trigger")
    this:DestroyNpcTrigger("Q7613127N22262Trigger")
    this:DestroyNpcTrigger("Q7613136N22261Trigger")
    this:DestroyNpcTrigger("Q7613137N22261Trigger")
    this:ActorDestroy("Q7613102Trigger", nil)
    this:ActorDestroy("Q7613103Trigger", nil)
    this:ActorDestroy("Q7613105Trigger", nil)
    this:ActorDestroy("Q7613110Trigger", nil)
    this:ActorDestroy("Q7613114Trigger", nil)
    this:ActorDestroy("Q7613118Trigger", nil)
    this:ActorDestroy("Q7613121Trigger", nil)
    this:ActorDestroy("Q7613122Trigger", nil)
    this:ActorDestroy("Q7613127Trigger", nil)
    this:ActorDestroy("Q7613127Trigger", nil)
    this:ActorDestroy("Q7613128Trigger", nil)
    this:ActorDestroy("Q7613130Tigger", nil)
    this:ActorDestroy("Q7613132Trigger", nil)
    this:ActorDestroy("Q7613133Trigger", nil)
    this:ActorDestroy("Q7613138Trigger", nil)
    this:SafeDestroyQuestNpc(npcs.Npc22261.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22262.alias, 102)
    this:RecycleAllRes()
end

function Quest76131:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7613102Trigger", nil)
    this:ActorDestroy("Q7613103Trigger", nil)
    this:ActorDestroy("Q7613105Trigger", nil)
    this:ActorDestroy("Q7613110Trigger", nil)
    this:ActorDestroy("Q7613114Trigger", nil)
    this:ActorDestroy("Q7613118Trigger", nil)
    this:ActorDestroy("Q7613121Trigger", nil)
    this:ActorDestroy("Q7613122Trigger", nil)
    this:ActorDestroy("Q7613127Trigger", nil)
    this:ActorDestroy("Q7613128Trigger", nil)
    this:ActorDestroy("Q7613130Tigger", nil)
    this:ActorDestroy("Q7613132Trigger", nil)
    this:ActorDestroy("Q7613133Trigger", nil)
    this:ActorDestroy("Q7613138Trigger", nil)
    this:ActorDestroy("Q7613102Trigger")
    this:ActorDestroy("Q7613103Trigger")
    this:ActorDestroy("Q7613105Trigger")
    this:ActorDestroy("Q7613110Trigger")
    this:ActorDestroy("Q7613113Trigger")
    this:ActorDestroy("Q7613114Trigger")
    this:ActorDestroy("Q7613116Trigger")
    this:ActorDestroy("Q7613118Trigger")
    this:ActorDestroy("Q7613121Trigger")
    this:ActorDestroy("Q7613122Trigger")
    this:ActorDestroy("Q7613123Trigger")
    this:ActorDestroy("Q7613127Trigger")
    this:ActorDestroy("Q7613128Trigger")
    this:ActorDestroy("Q7613132Trigger")
    this:ActorDestroy("Q7613133Trigger")
    this:ActorDestroy("Q7613130Tigger")
end

function Quest76131:ActorDestroy(arg1, arg2)
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

function Quest76131:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76131:NpcCreateWithNoBlack(arg1, arg2, arg3, arg4, arg5, arg6)
    this:CreateNpcWithCameraLookTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, arg6, arg5)
end

function Quest76131:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76131:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76131:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76131:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76131:OnSubStart7613128(arg1)
    print("OnSubStart7613128")
    this:CreateQuestNpc(arg1, npcs.Npc22262.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7613128Trigger", "Actor/Gadget/Q7613128Trigger", 70900002, 0, points._Q7613128TriggerPoint_.pos, points._Q7613128TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76131:OnSubFinish7613128(arg1)
    print("OnSubFinish7613128")
    this:NpcDestroyWithBlackscreen(102, npcs.Npc22262.alias)
end

function Quest76131:OnSubStart7613125(arg1)
    print("OnSubStart7613125")
end

function Quest76131:OnSubFinish7613125(arg1)
    print("OnSubFinish7613125")
end

function Quest76131:OnSubFailed7613125(arg1)
    print("OnSubFailed7613125")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613102(arg1)
    print("OnSubStart7613102")
    actorUtils.ShowContext("ChapterBeginDialog", 10228)
    actorMgr:CreateActorWithPos("Q7613102Trigger", "Actor/Gadget/Q7613102Trigger", 70900002, 0, points._Q7613102TriggerPoint_.pos, points._Q7613102TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    this:SetNavigationByMainId(76131, true)
    actorUtils.BanUIByQuest(1, false, 76131)
end

function Quest76131:OnSubFinish7613102(arg1)
    print("OnSubFinish7613102")
end

function Quest76131:OnSubFailed7613102(arg1)
    print("OnSubFailed7613102")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613103(arg1)
    print("OnSubStart7613103")
    actorMgr:CreateActorWithPos("Q7613103Trigger", "Actor/Gadget/Q7613103Trigger", 70900002, 0, points._Q7613103TriggerPoint_.pos, points._Q7613103TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    actorUtils.BanUIByQuest(1, false, 76131)
end

function Quest76131:OnSubFinish7613103(arg1)
    print("OnSubFinish7613103")
end

function Quest76131:OnSubFailed7613103(arg1)
    print("OnSubFailed7613103")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613104(arg1)
    print("OnSubStart7613104")
    this:NpcCreateWithNoBlack(npcs.Npc22628.id, 0, 80, 7613104, false, 7613104)
end

function Quest76131:OnSubFinish7613104(arg1)
    print("OnSubFinish7613104")
    this:NpcDestroyWithBlackscreen(102, npcs.Npc22261.alias)
    this:SafeDestroyQuestNpc(npcs.Npc22262.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22628.alias, 102)
    this:SetNavigationByMainId(76131, true)
end

function Quest76131:OnSubStart7613105(arg1)
    print("OnSubStart7613105")
    actorMgr:CreateActorWithPos("Q7613105Trigger", "Actor/Gadget/Q7613105Trigger", 70900002, 0, points._Q7613105TriggerPoint_.pos, points._Q7613105TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76131:OnSubFinish7613105(arg1)
    print("OnSubFinish7613105")
end

function Quest76131:OnSubStart7613123(arg1)
    print("OnSubStart7613123")
end

function Quest76131:OnSubFinish7613123(arg1)
    print("OnSubFinish7613123")
end

function Quest76131:OnSubStart7613106(arg1)
    print("OnSubStart7613106")
    this:NpcCreateWithNoBlack(npcs.Npc22628.id, 0, 60, 7613106, false, 7613106)
end

function Quest76131:OnSubFinish7613106(arg1)
    print("OnSubFinish7613106")
    this:SafeDestroyQuestNpc(npcs.Npc22261.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22628.alias, 102)
end

function Quest76131:OnSubStart7613132(arg1)
    print("OnSubStart7613132")
    actorMgr:CreateActorWithPos("Q7613132Trigger", "Actor/Gadget/Q7613132Trigger", 70900002, 0, points._Q7613132TriggerPoint_.pos, points._Q7613132TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76131:OnSubFinish7613132(arg1)
    print("OnSubFinish7613132")
end

function Quest76131:OnSubStart7613133(arg1)
    print("OnSubStart7613133")
    actorMgr:CreateActorWithPos("Q7613133Trigger", "Actor/Gadget/Q7613133Trigger", 70900002, 0, points._Q7613133TriggerPoint_.pos, points._Q7613133TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76131:OnSubFinish7613133(arg1)
    print("OnSubFinish7613133")
end

function Quest76131:OnSubStart7613107(arg1)
    print("OnSubStart7613107")
end

function Quest76131:OnSubFinish7613107(arg1)
    print("OnSubFinish7613107")
end

function Quest76131:OnSubStart7613101(arg1)
    print("OnSubStart7613101")
    this:NpcCreateWithNoBlack(npcs.Npc22628.id, 0, 80, 7613101, false, 7613109)
end

function Quest76131:OnSubFinish7613101(arg1)
    print("OnSubFinish7613101")
    this:SafeDestroyQuestNpc(npcs.Npc22261.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22628.alias, 102)
end

function Quest76131:OnSubStart7613108(arg1)
    print("OnSubStart7613108")
end

function Quest76131:OnSubFinish7613108(arg1)
    print("OnSubFinish7613108")
end

function Quest76131:OnSubFailed7613108(arg1)
    print("OnSubFailed7613108")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613112(arg1)
    print("OnSubStart7613112")
end

function Quest76131:OnSubFinish7613112(arg1)
    print("OnSubFinish7613112")
end

function Quest76131:OnSubFailed7613112(arg1)
    print("OnSubFailed7613112")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613113(arg1)
    print("OnSubStart7613113")
end

function Quest76131:OnSubFinish7613113(arg1)
    print("OnSubFinish7613113")
end

function Quest76131:OnSubFailed7613113(arg1)
    print("OnSubFailed7613113")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613115(arg1)
    print("OnSubStart7613115")
end

function Quest76131:OnSubFinish7613115(arg1)
    print("OnSubFinish7613115")
end

function Quest76131:OnSubFailed7613115(arg1)
    print("OnSubFailed7613115")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613109(arg1)
    print("OnSubStart7613109")
    this:PlayCutsceneIndex(7613109, function(arg1)
        actorUtils.FinishQuestID(false, 7613109)
    end, nil, nil, false)
end

function Quest76131:OnSubFinish7613109(arg1)
    print("OnSubFinish7613109")
end

function Quest76131:OnSubStart7613110(arg1)
    print("OnSubStart7613110")
    actorMgr:CreateActorWithPos("Q7613110Trigger", "Actor/Gadget/Q7613110Trigger", 70900002, 0, points._Q7613110TriggerPoint_.pos, points._Q7613110TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76131:OnSubFinish7613110(arg1)
    print("OnSubFinish7613110")
end

function Quest76131:OnSubStart7613111(arg1)
    print("OnSubStart7613111")
    this:NpcCreateWithNoBlack(npcs.Npc22628.id, 0, 150, 7613111, false, 7613111)
end

function Quest76131:OnSubFinish7613111(arg1)
    print("OnSubFinish7613111")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:SafeDestroyQuestNpc(npcs.Npc22261.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22628.alias, 102)
end

function Quest76131:OnSubStart7613114(arg1)
    print("OnSubStart7613114")
    actorMgr:CreateActorWithPos("Q7613114Trigger", "Actor/Gadget/Q7613114Trigger", 70900002, 0, points._Q7613114TriggerPoint_.pos, points._Q7613114TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76131:OnSubFinish7613114(arg1)
    print("OnSubFinish7613114")
end

function Quest76131:OnSubStart7613130(arg1)
    print("OnSubStart7613130")
    actorMgr:CreateActorWithPos("Q7613130Tigger", "Actor/Gadget/Q7613130Tigger", 70900002, 0, points._Q7613130TiggerPoint_.pos, points._Q7613130TiggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76131:OnSubFinish7613130(arg1)
    print("OnSubFinish7613130")
end

function Quest76131:OnSubStart7613117(arg1)
    print("OnSubStart7613117")
end

function Quest76131:OnSubFinish7613117(arg1)
    print("OnSubFinish7613117")
end

function Quest76131:OnSubStart7613118(arg1)
    print("OnSubStart7613118")
    actorMgr:CreateActorWithPos("Q7613118Trigger", "Actor/Gadget/Q7613118Trigger", 70900002, 0, points._Q7613118TriggerPoint_.pos, points._Q7613118TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76131:OnSubFinish7613118(arg1)
    print("OnSubFinish7613118")
end

function Quest76131:OnSubStart7613119(arg1)
    print("OnSubStart7613119")
end

function Quest76131:OnSubFinish7613119(arg1)
    print("OnSubFinish7613119")
end

function Quest76131:OnSubStart7613124(arg1)
    print("OnSubStart7613124")
end

function Quest76131:OnSubFinish7613124(arg1)
    print("OnSubFinish7613124")
end

function Quest76131:OnSubStart7613137(arg1)
    print("OnSubStart7613137")
    this:NpcCreateWithNoBlack(npcs.Npc22628.id, 0, 60, 7613137, false, 7613107)
end

function Quest76131:OnSubFinish7613137(arg1)
    print("OnSubFinish7613137")
    this:SafeDestroyQuestNpc(npcs.Npc22261.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22628.alias, 102)
end

function Quest76131:OnSubStart7613120(arg1)
    print("OnSubStart7613120")
end

function Quest76131:OnSubFinish7613120(arg1)
    print("OnSubFinish7613120")
end

function Quest76131:OnSubStart7613121(arg1)
    print("OnSubStart7613121")
    actorMgr:CreateActorWithPos("Q7613121Trigger", "Actor/Gadget/Q7613121Trigger", 70900002, 0, points._Q7613121TriggerPoint_.pos, points._Q7613121TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    actorUtils.BanUIByQuest(1, false, 76131)
end

function Quest76131:OnSubFinish7613121(arg1)
    print("OnSubFinish7613121")
end

function Quest76131:OnSubStart7613122(arg1)
    print("OnSubStart7613122")
    actorMgr:CreateActorWithPos("Q7613122Trigger", "Actor/Gadget/Q7613122Trigger", 70900002, 0, points._Q7613122TriggerPoint_.pos, points._Q7613122TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    actorUtils.BanUIByQuest(1, true, 76131)
end

function Quest76131:OnSubFinish7613122(arg1)
    print("OnSubFinish7613122")
end

function Quest76131:OnSubFailed7613122(arg1)
    print("OnSubFailed7613122")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613126(arg1)
    print("OnSubStart7613126")
    actorMgr:CreateActorWithPos("Q7613127Trigger", "Actor/Gadget/Q7613127Trigger", 70900002, 0, points._Q7613127TriggerPoint_.pos, points._Q7613127TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    actorUtils.BanUIByQuest(1, true, 76131)
end

function Quest76131:OnSubFinish7613126(arg1)
    print("OnSubFinish7613126")
end

function Quest76131:OnSubFailed7613126(arg1)
    print("OnSubFailed7613126")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613136(arg1)
    print("OnSubStart7613136")
    this:NpcCreateWithNoBlack(npcs.Npc22628.id, 0, 60, 7613136, false, 7613105)
    actorUtils.BanUIByQuest(1, true, 76131)
end

function Quest76131:OnSubFinish7613136(arg1)
    print("OnSubFinish7613136")
    this:SafeDestroyQuestNpc(npcs.Npc22261.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22628.alias, 102)
end

function Quest76131:OnSubFailed7613136(arg1)
    print("OnSubFailed7613136")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613116(arg1)
    print("OnSubStart7613116")
    this:DeployStoryByQuest(147613100)
    actorUtils.BanUIByQuest(1, true, 76131)
    this:CallDelayByQuest("7613116", 2, function(arg1)
        this:SetNavigationByMainId(76131, true)
    end)
end

function Quest76131:OnSubFinish7613116(arg1)
    print("OnSubFinish7613116")
end

function Quest76131:OnSubFailed7613116(arg1)
    print("OnSubFailed7613116")
    this:RecycleAllRes()
end

function Quest76131:OnSubStart7613138(arg1)
    print("OnSubStart7613138")
    actorMgr:CreateActorWithPos("Q7613138Trigger", "Actor/Gadget/Q7613138Trigger", 70900002, 0, points._Q7613138TriggerPoint_.pos, points._Q7613138TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    actorUtils.BanUIByQuest(1, true, 76131)
end

function Quest76131:OnSubFinish7613138(arg1)
    print("OnSubFinish7613138")
    this:SetNavigationByMainId(76143, true)
    this:CancelAllStory()
    actorUtils.BanUIByQuest(1, false, 76131)
end

function Quest76131:OnSubFailed7613138(arg1)
    print("OnSubFailed7613138")
    this:RecycleAllRes()
end

return Quest76131
