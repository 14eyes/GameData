require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77143 = class("Quest77143", QuestActorProxy)
Quest77143.defaultAlias = "Quest77143"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest77143:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77143:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7714301"] = self.OnSubStart7714301,
        ["7714302"] = self.OnSubStart7714302,
        ["7714304"] = self.OnSubStart7714304,
        ["7714305"] = self.OnSubStart7714305,
        ["7714306"] = self.OnSubStart7714306,
        ["7714307"] = self.OnSubStart7714307,
        ["7714308"] = self.OnSubStart7714308,
        ["7714309"] = self.OnSubStart7714309,
        ["7714310"] = self.OnSubStart7714310,
        ["7714324"] = self.OnSubStart7714324,
        ["7714311"] = self.OnSubStart7714311,
        ["7714325"] = self.OnSubStart7714325,
        ["7714312"] = self.OnSubStart7714312,
        ["7714313"] = self.OnSubStart7714313,
        ["7714314"] = self.OnSubStart7714314,
        ["7714315"] = self.OnSubStart7714315,
        ["7714316"] = self.OnSubStart7714316,
        ["7714317"] = self.OnSubStart7714317,
        ["7714318"] = self.OnSubStart7714318,
        ["7714319"] = self.OnSubStart7714319,
        ["7714320"] = self.OnSubStart7714320,
        ["7714326"] = self.OnSubStart7714326,
        ["7714321"] = self.OnSubStart7714321,
        ["7714323"] = self.OnSubStart7714323,
        ["7714322"] = self.OnSubStart7714322,
        ["7714303"] = self.OnSubStart7714303
    }
end

function Quest77143:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7714301"] = self.OnSubFinish7714301,
        ["7714302"] = self.OnSubFinish7714302,
        ["7714304"] = self.OnSubFinish7714304,
        ["7714305"] = self.OnSubFinish7714305,
        ["7714306"] = self.OnSubFinish7714306,
        ["7714307"] = self.OnSubFinish7714307,
        ["7714308"] = self.OnSubFinish7714308,
        ["7714309"] = self.OnSubFinish7714309,
        ["7714310"] = self.OnSubFinish7714310,
        ["7714324"] = self.OnSubFinish7714324,
        ["7714311"] = self.OnSubFinish7714311,
        ["7714325"] = self.OnSubFinish7714325,
        ["7714312"] = self.OnSubFinish7714312,
        ["7714313"] = self.OnSubFinish7714313,
        ["7714314"] = self.OnSubFinish7714314,
        ["7714315"] = self.OnSubFinish7714315,
        ["7714316"] = self.OnSubFinish7714316,
        ["7714317"] = self.OnSubFinish7714317,
        ["7714318"] = self.OnSubFinish7714318,
        ["7714319"] = self.OnSubFinish7714319,
        ["7714320"] = self.OnSubFinish7714320,
        ["7714326"] = self.OnSubFinish7714326,
        ["7714321"] = self.OnSubFinish7714321,
        ["7714323"] = self.OnSubFinish7714323,
        ["7714322"] = self.OnSubFinish7714322,
        ["7714303"] = self.OnSubFinish7714303
    }
end

function Quest77143:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7714304"] = self.OnSubFailed7714304,
        ["7714306"] = self.OnSubFailed7714306,
        ["7714307"] = self.OnSubFailed7714307
    }
end

function Quest77143:Start()
    print("Start")
end

function Quest77143:OnDestroy()
    print("OnDestroy")
end

function Quest77143:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77143:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77143:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77143:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7714304Trigger", nil)
    this:ActorDestroy("Q7714306Trigger", nil)
    this:ActorDestroy("Q7714306Trigger", nil)
    this:ActorDestroy("Q7714307Trigger", nil)
    this:ActorDestroy("Q7714307Trigger", nil)
    this:ActorDestroy("Q7714312Trigger", nil)
    this:ActorDestroy("Q7714312Trigger", nil)
    this:ActorDestroy("Q7714313Trigger", nil)
    this:ActorDestroy("Q7714313Trigger", nil)
    this:ActorDestroy("Q7714316Trigger", nil)
    this:ActorDestroy("Q7714316Trigger", nil)
    this:ActorDestroy("Q7714321Trigger", nil)
end

function Quest77143:ActorDestroy(arg1, arg2)
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

function Quest77143:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest77143:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77143:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest77143:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest77143:OnSubStart7714301(arg1)
    print("OnSubStart7714301")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714301, 0, 10, 1, npcs.Npc7700.id)
    this:CreateQuestNpc(arg1, npcs.Npc7699.id, 0, false, 0)
end

function Quest77143:OnSubFinish7714301(arg1)
    print("OnSubFinish7714301")
    this:NpcDestroyImmediately(3, npcs.Npc7700.alias)
    this:NpcDestroyImmediately(3, npcs.Npc7699.alias)
end

function Quest77143:OnSubStart7714302(arg1)
    print("OnSubStart7714302")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714302, 0, 20, 1, npcs.Npc22469.id)
end

function Quest77143:OnSubFinish7714302(arg1)
    print("OnSubFinish7714302")
    this:NpcDestroyImmediately(3, npcs.Npc22469.alias)
end

function Quest77143:OnSubStart7714304(arg1)
    print("OnSubStart7714304")
    actorMgr:CreateActorWithPos("Q7714304Trigger", "Actor/Gadget/Q7714304Trigger", 70900002, 0, points._Q7714304TriggerPoint_.pos, points._Q7714304TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77143:OnSubFinish7714304(arg1)
    print("OnSubFinish7714304")
end

function Quest77143:OnSubFailed7714304(arg1)
    print("OnSubFailed7714304")
    this:RecycleAllRes()
end

function Quest77143:OnSubStart7714305(arg1)
    print("OnSubStart7714305")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714305, 0, 15, 1, npcs.Npc22469.id)
end

function Quest77143:OnSubFinish7714305(arg1)
    print("OnSubFinish7714305")
    this:NpcDestroyImmediately(3, npcs.Npc22469.alias)
end

function Quest77143:OnSubStart7714306(arg1)
    print("OnSubStart7714306")
    this:CreateQuestNpc(arg1, npcs.Npc22467.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22625.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22570.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22571.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7714306Trigger", "Actor/Gadget/Q7714306Trigger", 70900002, 0, points._Q7714306TriggerPoint_.pos, points._Q7714306TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7714306Trigger", "Actor/Gadget/Q7714306Trigger", 70900002, 0, points._Q7714306TriggerPoint_.pos, points._Q7714306TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:GetQuestNpcActor(npcs.Npc22467.alias, 77143):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc22625.alias, 77143):DisableInteeHeadCtrl(true)
end

function Quest77143:OnSubFinish7714306(arg1)
    print("OnSubFinish7714306")
end

function Quest77143:OnSubFailed7714306(arg1)
    print("OnSubFailed7714306")
    this:RecycleAllRes()
end

function Quest77143:OnSubStart7714307(arg1)
    print("OnSubStart7714307")
    this:CreateQuestNpc(arg1, npcs.Npc22467.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22625.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7714307Trigger", "Actor/Gadget/Q7714307Trigger", 70900002, 0, points._Q7714307TriggerPoint_.pos, points._Q7714307TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7714307Trigger", "Actor/Gadget/Q7714307Trigger", 70900002, 0, points._Q7714307TriggerPoint_.pos, points._Q7714307TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:GetQuestNpcActor(npcs.Npc22467.alias, 77143):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc22625.alias, 77143):DisableInteeHeadCtrl(true)
end

function Quest77143:OnSubFinish7714307(arg1)
    print("OnSubFinish7714307")
end

function Quest77143:OnSubFailed7714307(arg1)
    print("OnSubFailed7714307")
    this:RecycleAllRes()
end

function Quest77143:OnSubStart7714308(arg1)
    print("OnSubStart7714308")
    this:CreateQuestNpc(arg1, npcs.Npc7723_1.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22467.alias, 77143):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc22625.alias, 77143):DisableInteeHeadCtrl(true)
end

function Quest77143:OnSubFinish7714308(arg1)
    print("OnSubFinish7714308")
    this:NpcDestroyImmediately(3, npcs.Npc22467.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22625.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22570.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22571.alias)
end

function Quest77143:OnSubStart7714309(arg1)
    print("OnSubStart7714309")
    this:CreateQuestNpc(arg1, npcs.Npc22468.id, 0, false, 0)
end

function Quest77143:OnSubFinish7714309(arg1)
    print("OnSubFinish7714309")
    this:NpcDestroyImmediately(3, npcs.Npc7723_1.alias)
end

function Quest77143:OnSubStart7714310(arg1)
    print("OnSubStart7714310")
    this:CreateQuestNpc(arg1, npcs.Npc22561.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22458.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22626.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22626.alias, 77143):DoFreeStyle(4124, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22626.alias, 77143):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc22626.alias, 77143):PlayEmoSync("", "", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB04", 0, false, true, true)
end

function Quest77143:OnSubFinish7714310(arg1)
    print("OnSubFinish7714310")
    this:NpcDestroyImmediately(3, npcs.Npc22561.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22458.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77143:OnSubStart7714324(arg1)
    print("OnSubStart7714324")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc22469.id, 0, 7714324, 15, true)
    this:CreateQuestNpc(arg1, npcs.Npc22626.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22626.alias, 77143):DoFreeStyle(4124, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22626.alias, 77143):PlayEmoSync("", "", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB04", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc22626.alias, 77143):DisableInteeHeadCtrl(true)
end

function Quest77143:OnSubFinish7714324(arg1)
    print("OnSubFinish7714324")
    this:NpcDestroyImmediately(3, npcs.Npc22469.alias)
end

function Quest77143:OnSubStart7714311(arg1)
    print("OnSubStart7714311")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714311, 0, 12, 1, npcs.Npc7699.id)
    this:CreateQuestNpc(arg1, npcs.Npc7700.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22626.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22626.alias, 77143):DoFreeStyle(4124, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22626.alias, 77143):PlayEmoSync("", "", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB04", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc22626.alias, 77143):DisableInteeHeadCtrl(true)
end

function Quest77143:OnSubFinish7714311(arg1)
    print("OnSubFinish7714311")
    this:NpcDestroyImmediately(3, npcs.Npc7700.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22626.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest77143:OnSubStart7714325(arg1)
    print("OnSubStart7714325")
    this:NpcCreateWithNpcTrigger(npcs.Npc7699.id, 0, 10, 7714325)
end

function Quest77143:OnSubFinish7714325(arg1)
    print("OnSubFinish7714325")
    this:NpcDestroyImmediately(3, npcs.Npc7699.alias)
end

function Quest77143:OnSubStart7714312(arg1)
    print("OnSubStart7714312")
    this:CreateQuestNpc(arg1, npcs.Npc22714_1.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7714312Trigger", "Actor/Gadget/Q7714312Trigger", 70900002, 0, points._Q7714312TriggerPoint_.pos, points._Q7714312TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7714312Trigger", "Actor/Gadget/Q7714312Trigger", 70900002, 0, points._Q7714312TriggerPoint_.pos, points._Q7714312TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77143:OnSubFinish7714312(arg1)
    print("OnSubFinish7714312")
    this:NpcDestroyImmediately(3, npcs.Npc22714_1.alias)
end

function Quest77143:OnSubStart7714313(arg1)
    print("OnSubStart7714313")
    actorMgr:CreateActorWithPos("Q7714313Trigger", "Actor/Gadget/Q7714313Trigger", 70900002, 0, points._Q7714313TriggerPoint_.pos, points._Q7714313TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7714313Trigger", "Actor/Gadget/Q7714313Trigger", 70900002, 0, points._Q7714313TriggerPoint_.pos, points._Q7714313TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77143:OnSubFinish7714313(arg1)
    print("OnSubFinish7714313")
end

function Quest77143:OnSubStart7714314(arg1)
    print("OnSubStart7714314")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714314, 0, 15, 1, npcs.Npc22456.id)
end

function Quest77143:OnSubFinish7714314(arg1)
    print("OnSubFinish7714314")
    this:NpcDestroyImmediately(3, npcs.Npc22456.alias)
end

function Quest77143:OnSubStart7714315(arg1)
    print("OnSubStart7714315")
end

function Quest77143:OnSubFinish7714315(arg1)
    print("OnSubFinish7714315")
end

function Quest77143:OnSubStart7714316(arg1)
    print("OnSubStart7714316")
    this:CreateQuestNpc(arg1, npcs.Npc22456.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7714316Trigger", "Actor/Gadget/Q7714316Trigger", 70900002, 0, points._Q7714316TriggerPoint_.pos, points._Q7714316TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7714316Trigger", "Actor/Gadget/Q7714316Trigger", 70900002, 0, points._Q7714316TriggerPoint_.pos, points._Q7714316TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77143:OnSubFinish7714316(arg1)
    print("OnSubFinish7714316")
end

function Quest77143:OnSubStart7714317(arg1)
    print("OnSubStart7714317")
    this:CreateQuestNpc(arg1, npcs.Npc22456.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714317, 0, 15, 0, npcs.Npc22469.id)
end

function Quest77143:OnSubFinish7714317(arg1)
    print("OnSubFinish7714317")
    this:NpcDestroyImmediately(3, npcs.Npc22456.alias)
    this:NpcDestroyImmediately(3, npcs.Npc22469.alias)
end

function Quest77143:OnSubStart7714318(arg1)
    print("OnSubStart7714318")
end

function Quest77143:OnSubFinish7714318(arg1)
    print("OnSubFinish7714318")
end

function Quest77143:OnSubStart7714319(arg1)
    print("OnSubStart7714319")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714319, 0, 18, 1, npcs.Npc7700.id)
end

function Quest77143:OnSubFinish7714319(arg1)
    print("OnSubFinish7714319")
    this:NpcDestroyImmediately(3, npcs.Npc7700.alias)
end

function Quest77143:OnSubStart7714320(arg1)
    print("OnSubStart7714320")
    this:CreateQuestNpc(arg1, npcs.Npc22469.id, 0, false, 0)
end

function Quest77143:OnSubFinish7714320(arg1)
    print("OnSubFinish7714320")
    this:NpcDestroyImmediately(3, npcs.Npc22469.alias)
end

function Quest77143:OnSubStart7714326(arg1)
    print("OnSubStart7714326")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714326, 0, 15, 1, npcs.Npc7700.id)
end

function Quest77143:OnSubFinish7714326(arg1)
    print("OnSubFinish7714326")
    this:NpcDestroyImmediately(3, npcs.Npc7700.alias)
end

function Quest77143:OnSubStart7714321(arg1)
    print("OnSubStart7714321")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7714321, 0, 13, 0, npcs.Npc7698.id)
    actorMgr:CreateActorWithPos("Q7714321Trigger", "Actor/Gadget/Q7714321Trigger", 70900002, 0, points._Q7714321TriggerPoint_.pos, points._Q7714321TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77143:OnSubFinish7714321(arg1)
    print("OnSubFinish7714321")
    this:NpcDestroyImmediately(3, npcs.Npc7698.alias)
end

function Quest77143:OnSubStart7714323(arg1)
    print("OnSubStart7714323")
    this:CreateQuestNpc(arg1, npcs.Npc22492.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22561.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22469.id, 0, false, 0)
end

function Quest77143:OnSubFinish7714323(arg1)
    print("OnSubFinish7714323")
end

function Quest77143:OnSubStart7714322(arg1)
    print("OnSubStart7714322")
    this:NpcCreateWithNpcTrigger(npcs.Npc22469.id, 0, 20, 7714322)
end

function Quest77143:OnSubFinish7714322(arg1)
    print("OnSubFinish7714322")
    this:NpcDestroyImmediately(3, npcs.Npc22469.alias)
end

function Quest77143:OnSubStart7714303(arg1)
    print("OnSubStart7714303")
end

function Quest77143:OnSubFinish7714303(arg1)
    print("OnSubFinish7714303")
end

return Quest77143
