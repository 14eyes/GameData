require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77650 = class("Quest77650", QuestActorProxy)
Quest77650.defaultAlias = "Quest77650"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77650:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77650:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7765001"] = self.OnSubStart7765001,
        ["7765002"] = self.OnSubStart7765002,
        ["7765022"] = self.OnSubStart7765022,
        ["7765003"] = self.OnSubStart7765003,
        ["7765004"] = self.OnSubStart7765004,
        ["7765005"] = self.OnSubStart7765005,
        ["7765006"] = self.OnSubStart7765006,
        ["7765007"] = self.OnSubStart7765007,
        ["7765020"] = self.OnSubStart7765020,
        ["7765008"] = self.OnSubStart7765008,
        ["7765009"] = self.OnSubStart7765009,
        ["7765011"] = self.OnSubStart7765011,
        ["7765010"] = self.OnSubStart7765010,
        ["7765012"] = self.OnSubStart7765012,
        ["7765013"] = self.OnSubStart7765013,
        ["7765014"] = self.OnSubStart7765014,
        ["7765015"] = self.OnSubStart7765015,
        ["7765021"] = self.OnSubStart7765021,
        ["7765016"] = self.OnSubStart7765016,
        ["7765017"] = self.OnSubStart7765017,
        ["7765018"] = self.OnSubStart7765018,
        ["7765024"] = self.OnSubStart7765024,
        ["7765025"] = self.OnSubStart7765025,
        ["7765023"] = self.OnSubStart7765023,
        ["7765019"] = self.OnSubStart7765019,
        ["7765026"] = self.OnSubStart7765026
    }
end

function Quest77650:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7765001"] = self.OnSubFinish7765001,
        ["7765002"] = self.OnSubFinish7765002,
        ["7765022"] = self.OnSubFinish7765022,
        ["7765003"] = self.OnSubFinish7765003,
        ["7765004"] = self.OnSubFinish7765004,
        ["7765005"] = self.OnSubFinish7765005,
        ["7765006"] = self.OnSubFinish7765006,
        ["7765007"] = self.OnSubFinish7765007,
        ["7765020"] = self.OnSubFinish7765020,
        ["7765008"] = self.OnSubFinish7765008,
        ["7765009"] = self.OnSubFinish7765009,
        ["7765011"] = self.OnSubFinish7765011,
        ["7765010"] = self.OnSubFinish7765010,
        ["7765012"] = self.OnSubFinish7765012,
        ["7765013"] = self.OnSubFinish7765013,
        ["7765014"] = self.OnSubFinish7765014,
        ["7765015"] = self.OnSubFinish7765015,
        ["7765021"] = self.OnSubFinish7765021,
        ["7765016"] = self.OnSubFinish7765016,
        ["7765017"] = self.OnSubFinish7765017,
        ["7765018"] = self.OnSubFinish7765018,
        ["7765024"] = self.OnSubFinish7765024,
        ["7765025"] = self.OnSubFinish7765025,
        ["7765023"] = self.OnSubFinish7765023,
        ["7765019"] = self.OnSubFinish7765019,
        ["7765026"] = self.OnSubFinish7765026
    }
end

function Quest77650:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7765004"] = self.OnSubFailed7765004,
        ["7765011"] = self.OnSubFailed7765011,
        ["7765012"] = self.OnSubFailed7765012
    }
end

function Quest77650:Start()
    print("Start")
end

function Quest77650:OnDestroy()
    print("OnDestroy")
end

function Quest77650:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77650:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77650:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77650:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q77650Trigger", 77650)
    this:ActorDestroy("Q77650Trigger_11", 77650)
    this:ActorDestroy("Q77650Trigger_10", 77650)
    this:ActorDestroy("Q77650Trigger_1", 77650)
    this:ActorDestroy("Q77650Trigger_6", 77650)
    this:ActorDestroy("Q77650Trigger_12", 77650)
    this:ActorDestroy("Q77650Trigger_9", 77650)
    this:ActorDestroy("Q77650Trigger_2", 77650)
    this:ActorDestroy("Q77650Trigger_8", 77650)
    this:ActorDestroy("Q77650Trigger_3", 77650)
    this:ActorDestroy("Q77650Trigger_4", 77650)
    this:ActorDestroy("Q77650Trigger_7", 77650)
    this:ActorDestroy("Q77650Trigger_5", 77650)
end

function Quest77650:ActorDestroy(arg1, arg2)
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

function Quest77650:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest77650:OnSubStart7765001(arg1)
    print("OnSubStart7765001")
    actorMgr:CreateActorWithPos("Q77650Trigger", "Actor/Gadget/Q77650Trigger", 70900002, 0, points._Q77650TriggerPoint_.pos, points._Q77650TriggerPoint_.rot, true, false, 3, nil, 0, 77650)
end

function Quest77650:OnSubFinish7765001(arg1)
    print("OnSubFinish7765001")
end

function Quest77650:OnSubStart7765002(arg1)
    print("OnSubStart7765002")
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 77650):DoFreeStyle(4816, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17050.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17050.alias, 77650):DoFreeStyle(6, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16927.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16927.alias, 77650):DoFreeStyle(7, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17051.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17052.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17052.alias, 77650):DoFreeStyle(1171, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17053.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17053.alias, 77650):DoFreeStyle(7, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q77650Trigger_11", "Actor/Gadget/Q77650Trigger_11", 70900002, 0, points._Q77650Trigger_11Point_.pos, points._Q77650Trigger_11Point_.rot, true, false, 3, nil, 0, 77650)
end

function Quest77650:OnSubFinish7765002(arg1)
    print("OnSubFinish7765002")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
end

function Quest77650:OnSubStart7765022(arg1)
    print("OnSubStart7765022")
    this:GetQuestNpcActor(npcs.Npc17050.alias, 77650):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc17052.alias, 77650):DoFreeStyle(1171, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc17053.alias, 77650):DoFreeStyle(7, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc16949.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:DeployStoryByQuest(147765001)
end

function Quest77650:OnSubFinish7765022(arg1)
    print("OnSubFinish7765022")
end

function Quest77650:OnSubStart7765003(arg1)
    print("OnSubStart7765003")
    this:GetQuestNpcActor(npcs.Npc17050.alias, 77650):DoFreeStyle(7, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc17052.alias, 77650):DoFreeStyle(1171, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc17053.alias, 77650):DoFreeStyle(7, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q77650Trigger_10", "Actor/Gadget/Q77650Trigger_10", 70900002, 0, points._Q77650Trigger_10Point_.pos, points._Q77650Trigger_10Point_.rot, true, false, 3, nil, 0, 77650)
end

function Quest77650:OnSubFinish7765003(arg1)
    print("OnSubFinish7765003")
    this:NpcDestroyImmediately(3, npcs.Npc17050.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16927.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17051.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17052.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17053.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16949.alias)
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
end

function Quest77650:OnSubStart7765004(arg1)
    print("OnSubStart7765004")
end

function Quest77650:OnSubFinish7765004(arg1)
    print("OnSubFinish7765004")
    this:QuestNarratorTask(datas.NarratorWithId_7765002, nil)
end

function Quest77650:OnSubFailed7765004(arg1)
    print("OnSubFailed7765004")
    this:RecycleAllRes()
end

function Quest77650:OnSubStart7765005(arg1)
    print("OnSubStart7765005")
end

function Quest77650:OnSubFinish7765005(arg1)
    print("OnSubFinish7765005")
end

function Quest77650:OnSubStart7765006(arg1)
    print("OnSubStart7765006")
    this:CallDelayByQuest("3", 3, function(arg1)
        actorMgr:CreateActorWithPos("Q77650Trigger_1", "Actor/Gadget/Q77650Trigger_1", 70900002, 0, points._Q77650Trigger_1Point_.pos, points._Q77650Trigger_1Point_.rot, true, false, 3, nil, 0, 77650)
    end)
end

function Quest77650:OnSubFinish7765006(arg1)
    print("OnSubFinish7765006")
    this:NpcDestroyImmediately(3, npcs.Npc17287.alias)
end

function Quest77650:OnSubStart7765007(arg1)
    print("OnSubStart7765007")
end

function Quest77650:OnSubFinish7765007(arg1)
    print("OnSubFinish7765007")
end

function Quest77650:OnSubStart7765020(arg1)
    print("OnSubStart7765020")
    this:CallDelayByQuest("1", 1, function(arg1)
        actorMgr:CreateActorWithPos("Q77650Trigger_7", "Actor/Gadget/Q77650Trigger_7", 70900002, 0, points._Q77650Trigger_7Point_.pos, points._Q77650Trigger_7Point_.rot, true, false, 3, nil, 0, 77650)
    end)
end

function Quest77650:OnSubFinish7765020(arg1)
    print("OnSubFinish7765020")
    this:NpcDestroyImmediately(3, npcs.Npc17287.alias)
end

function Quest77650:OnSubStart7765008(arg1)
    print("OnSubStart7765008")
end

function Quest77650:OnSubFinish7765008(arg1)
    print("OnSubFinish7765008")
    this:QuestNarratorTask(datas.NarratorWithId_7765003, nil)
end

function Quest77650:OnSubStart7765009(arg1)
    print("OnSubStart7765009")
    this:CreateQuestNpc(arg1, npcs.Npc16928.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc17011.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17011.alias, 77650):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17058.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17058.alias, 77650):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17057.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17057.alias, 77650):DoFreeStyle(2, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17056.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17056.alias, 77650):DoFreeStyle(1, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17055.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17055.alias, 77650):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc17054.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17054.alias, 77650):DoFreeStyle(1, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q77650Trigger_6", "Actor/Gadget/Q77650Trigger_6", 70900002, 0, points._Q77650Trigger_6Point_.pos, points._Q77650Trigger_6Point_.rot, true, false, 3, nil, 0, 77650)
end

function Quest77650:OnSubFinish7765009(arg1)
    print("OnSubFinish7765009")
    this:QuestNarratorTask(datas.NarratorWithId_7765004, nil)
end

function Quest77650:OnSubStart7765011(arg1)
    print("OnSubStart7765011")
    this:GetQuestNpcActor(npcs.Npc17011.alias, 77650):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc17054.alias, 77650):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc17055.alias, 77650):DoFreeStyle(1060, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc17056.alias, 77650):DoFreeStyle(1, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc17057.alias, 77650):DoFreeStyle(2, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc17058.alias, 77650):DoFreeStyle(1, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q77650Trigger_9", "Actor/Gadget/Q77650Trigger_9", 70900002, 0, points._Q77650Trigger_9Point_.pos, points._Q77650Trigger_9Point_.rot, true, false, 3, nil, 0, 77650)
end

function Quest77650:OnSubFinish7765011(arg1)
    print("OnSubFinish7765011")
    this:NpcDestroyImmediately(3, npcs.Npc17287.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16928.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17011.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17054.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17055.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17056.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17057.alias)
    this:NpcDestroyImmediately(3, npcs.Npc17058.alias)
end

function Quest77650:OnSubFailed7765011(arg1)
    print("OnSubFailed7765011")
    this:RecycleAllRes()
end

function Quest77650:OnSubStart7765010(arg1)
    print("OnSubStart7765010")
    actorMgr:CreateActorWithPos("Q77650Trigger_12", "Actor/Gadget/Q77650Trigger_12", 70900002, 0, points._Q77650Trigger_12Point_.pos, points._Q77650Trigger_12Point_.rot, true, false, 3, nil, 0, 77650)
end

function Quest77650:OnSubFinish7765010(arg1)
    print("OnSubFinish7765010")
    this:QuestNarratorTask(datas.NarratorWithId_7765005, nil)
end

function Quest77650:OnSubStart7765012(arg1)
    print("OnSubStart7765012")
end

function Quest77650:OnSubFinish7765012(arg1)
    print("OnSubFinish7765012")
end

function Quest77650:OnSubFailed7765012(arg1)
    print("OnSubFailed7765012")
    this:RecycleAllRes()
end

function Quest77650:OnSubStart7765013(arg1)
    print("OnSubStart7765013")
    actorMgr:CreateActorWithPos("Q77650Trigger_2", "Actor/Gadget/Q77650Trigger_2", 70900002, 0, points._Q77650Trigger_2Point_.pos, points._Q77650Trigger_2Point_.rot, true, false, 3, nil, 0, 77650)
end

function Quest77650:OnSubFinish7765013(arg1)
    print("OnSubFinish7765013")
    this:NpcDestroyImmediately(3, npcs.Npc17287.alias)
end

function Quest77650:OnSubStart7765014(arg1)
    print("OnSubStart7765014")
    actorMgr:CreateActorWithPos("Q77650Trigger_8", "Actor/Gadget/Q77650Trigger_8", 70900002, 0, points._Q77650Trigger_8Point_.pos, points._Q77650Trigger_8Point_.rot, true, false, 3, nil, 0, 77650)
end

function Quest77650:OnSubFinish7765014(arg1)
    print("OnSubFinish7765014")
    this:NpcDestroyImmediately(3, npcs.Npc17287.alias)
end

function Quest77650:OnSubStart7765015(arg1)
    print("OnSubStart7765015")
end

function Quest77650:OnSubFinish7765015(arg1)
    print("OnSubFinish7765015")
end

function Quest77650:OnSubStart7765021(arg1)
    print("OnSubStart7765021")
    actorMgr:CreateActorWithPos("Q77650Trigger_5", "Actor/Gadget/Q77650Trigger_5", 70900002, 0, points._Q77650Trigger_5Point_.pos, points._Q77650Trigger_5Point_.rot, true, false, 3, nil, 0, 77650)
end

function Quest77650:OnSubFinish7765021(arg1)
    print("OnSubFinish7765021")
    this:NpcDestroyImmediately(3, npcs.Npc17287.alias)
end

function Quest77650:OnSubStart7765016(arg1)
    print("OnSubStart7765016")
end

function Quest77650:OnSubFinish7765016(arg1)
    print("OnSubFinish7765016")
end

function Quest77650:OnSubStart7765017(arg1)
    print("OnSubStart7765017")
    this:CallDelayByQuest("4", 2, function(arg1)
        actorMgr:CreateActorWithPos("Q77650Trigger_3", "Actor/Gadget/Q77650Trigger_3", 70900002, 0, points._Q77650Trigger_3Point_.pos, points._Q77650Trigger_3Point_.rot, true, false, 3, nil, 0, 77650)
    end)
end

function Quest77650:OnSubFinish7765017(arg1)
    print("OnSubFinish7765017")
    this:NpcDestroyImmediately(3, npcs.Npc17287.alias)
end

function Quest77650:OnSubStart7765018(arg1)
    print("OnSubStart7765018")
end

function Quest77650:OnSubFinish7765018(arg1)
    print("OnSubFinish7765018")
end

function Quest77650:OnSubStart7765024(arg1)
    print("OnSubStart7765024")
end

function Quest77650:OnSubFinish7765024(arg1)
    print("OnSubFinish7765024")
end

function Quest77650:OnSubStart7765025(arg1)
    print("OnSubStart7765025")
end

function Quest77650:OnSubFinish7765025(arg1)
    print("OnSubFinish7765025")
end

function Quest77650:OnSubStart7765023(arg1)
    print("OnSubStart7765023")
end

function Quest77650:OnSubFinish7765023(arg1)
    print("OnSubFinish7765023")
end

function Quest77650:OnSubStart7765019(arg1)
    print("OnSubStart7765019")
    actorMgr:CreateActorWithPos("Q77650Trigger_4", "Actor/Gadget/Q77650Trigger_4", 70900002, 0, points._Q77650Trigger_4Point_.pos, points._Q77650Trigger_4Point_.rot, true, false, 3, nil, 0, 77650)
end

function Quest77650:OnSubFinish7765019(arg1)
    print("OnSubFinish7765019")
    this:NpcDestroyImmediately(3, npcs.Npc17287.alias)
    this:CallDelayByQuest("2", 2, function(arg1)
        this:SetNavigationByMainId(77653, true)
    end)
end

function Quest77650:OnSubStart7765026(arg1)
    print("OnSubStart7765026")
end

function Quest77650:OnSubFinish7765026(arg1)
    print("OnSubFinish7765026")
end

return Quest77650
