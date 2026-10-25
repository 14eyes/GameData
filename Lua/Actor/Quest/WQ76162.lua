require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76162 = class("Quest76162", QuestActorProxy)
Quest76162.defaultAlias = "Quest76162"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76162:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76162:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7616201"] = self.OnSubStart7616201,
        ["7616202"] = self.OnSubStart7616202,
        ["7616203"] = self.OnSubStart7616203,
        ["7616204"] = self.OnSubStart7616204,
        ["7616205"] = self.OnSubStart7616205,
        ["7616206"] = self.OnSubStart7616206,
        ["7616207"] = self.OnSubStart7616207
    }
end

function Quest76162:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7616201"] = self.OnSubFinish7616201,
        ["7616202"] = self.OnSubFinish7616202,
        ["7616203"] = self.OnSubFinish7616203,
        ["7616204"] = self.OnSubFinish7616204,
        ["7616205"] = self.OnSubFinish7616205,
        ["7616206"] = self.OnSubFinish7616206,
        ["7616207"] = self.OnSubFinish7616207
    }
end

function Quest76162:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7616205"] = self.OnSubFailed7616205}
end

function Quest76162:Start()
    print("Start")
end

function Quest76162:OnDestroy()
    print("OnDestroy")
end

function Quest76162:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76162:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76162:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76162:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7616202Trigger", 0)
    this:ActorDestroy("Q7616204Trigger", 0)
    this:ActorDestroy("Q7616204Trigger_pose", 0)
    this:ActorDestroy("Q7616207Trigger_pose", 76162)
end

function Quest76162:ActorDestroy(arg1, arg2)
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

function Quest76162:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76162:OnSubStart7616201(arg1)
    print("OnSubStart7616201")
end

function Quest76162:OnSubFinish7616201(arg1)
    print("OnSubFinish7616201")
    this:SetNavigationByMainId(76162, true)
end

function Quest76162:OnSubStart7616202(arg1)
    print("OnSubStart7616202")
    this:CreateQuestNpc(arg1, npcs.Npc7182.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76162):DoFreeStyle(4122, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7608.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7608.alias, 76162):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc22382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76162):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc22385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76162):DoFreeStyle(1080, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7616202Trigger", "Actor/Gadget/Q7616202Trigger", 70900002, 0, points._Q7616202TriggerPoint_.pos, points._Q7616202TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76162:OnSubFinish7616202(arg1)
    print("OnSubFinish7616202")
end

function Quest76162:OnSubStart7616203(arg1)
    print("OnSubStart7616203")
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76162):DoFreeStyle(4122, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7608.alias, 76162):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76162):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76162):DoFreeStyle(1080, true, nil, true, true, false, true)
    this:RequestInteraction(npcs.Npc7181.alias, "", true)
end

function Quest76162:OnSubFinish7616203(arg1)
    print("OnSubFinish7616203")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
end

function Quest76162:OnSubStart7616204(arg1)
    print("OnSubStart7616204")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc7182.id, arg1)
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76162):DoFreeStyle(4122, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7608.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7608.alias, 76162):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc22382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76162):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc22385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76162):DoFreeStyle(1080, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q7616204Trigger", "Actor/Gadget/Q7616204Trigger", 70900002, 0, points._Q7616204TriggerPoint_.pos, points._Q7616204TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7616204Trigger_pose", "Actor/Gadget/Q7616204Trigger_pose", 70900002, 0, points._Q7616204Trigger_posePoint_.pos, points._Q7616204Trigger_posePoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76162:OnSubFinish7616204(arg1)
    print("OnSubFinish7616204")
    this:ActorDestroy("Q7616204Trigger_pose", nil)
end

function Quest76162:OnSubStart7616205(arg1)
    print("OnSubStart7616205")
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76162):DoFreeStyle(4122, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7608.alias, 76162):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76162):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76162):DoFreeStyle(1080, true, nil, true, true, false, true)
    actorUtils.BanUIByQuest(12, true, 76100)
    actorUtils.BanUIByQuest(10, true, 76100)
end

function Quest76162:OnSubFinish7616205(arg1)
    print("OnSubFinish7616205")
    actorUtils.BanUIByQuest(12, false, 76100)
    actorUtils.BanUIByQuest(10, false, 76100)
end

function Quest76162:OnSubFailed7616205(arg1)
    print("OnSubFailed7616205")
    this:RecycleAllRes()
    actorUtils.BanUIByQuest(12, false, 76100)
    actorUtils.BanUIByQuest(10, false, 76100)
end

function Quest76162:OnSubStart7616206(arg1)
    print("OnSubStart7616206")
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76162):DoFreeStyle(4122, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7608.alias, 76162):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76162):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76162):DoFreeStyle(4120, true, nil, true, true, false, true)
    this:RequestInteraction(npcs.Npc7608.alias, "", true)
end

function Quest76162:OnSubFinish7616206(arg1)
    print("OnSubFinish7616206")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
end

function Quest76162:OnSubStart7616207(arg1)
    print("OnSubStart7616207")
    this:CreateQuestNpc(arg1, npcs.Npc7182.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76162):DoFreeStyle(4122, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7608.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7608.alias, 76162):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc22382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76162):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc22385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76162):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76162):PlayEmoSync("", "", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76162):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q7616207Trigger_pose", "Actor/Gadget/Q7616207Trigger_pose", 70900002, 0, points._Q7616207Trigger_posePoint_.pos, points._Q7616207Trigger_posePoint_.rot, true, false, 3, nil, 0, 76162)
end

function Quest76162:OnSubFinish7616207(arg1)
    print("OnSubFinish7616207")
    this:CallDelayByQuest("delay1", 2, function(arg1)
        this:SetNavigationByMainId(76100, true)
        this:ActorDestroy("Q7616207Trigger_pose", 0)
    end)
end

return Quest76162
