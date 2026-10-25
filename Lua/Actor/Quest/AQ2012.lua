require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2012 = class("Quest2012", QuestActorProxy)
Quest2012.defaultAlias = "Quest2012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas
local followNPCData

function Quest2012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
    followNPCData = clientData.FollowNPCData
end

function Quest2012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["201201"] = self.OnSubStart201201,
        ["201202"] = self.OnSubStart201202,
        ["201203"] = self.OnSubStart201203,
        ["201204"] = self.OnSubStart201204,
        ["201205"] = self.OnSubStart201205,
        ["201206"] = self.OnSubStart201206,
        ["201210"] = self.OnSubStart201210,
        ["201211"] = self.OnSubStart201211,
        ["201216"] = self.OnSubStart201216,
        ["201217"] = self.OnSubStart201217,
        ["201212"] = self.OnSubStart201212,
        ["201207"] = self.OnSubStart201207,
        ["201213"] = self.OnSubStart201213,
        ["201208"] = self.OnSubStart201208,
        ["201214"] = self.OnSubStart201214,
        ["201209"] = self.OnSubStart201209,
        ["201215"] = self.OnSubStart201215
    }
end

function Quest2012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["201201"] = self.OnSubFinish201201,
        ["201202"] = self.OnSubFinish201202,
        ["201203"] = self.OnSubFinish201203,
        ["201204"] = self.OnSubFinish201204,
        ["201205"] = self.OnSubFinish201205,
        ["201206"] = self.OnSubFinish201206,
        ["201210"] = self.OnSubFinish201210,
        ["201211"] = self.OnSubFinish201211,
        ["201216"] = self.OnSubFinish201216,
        ["201217"] = self.OnSubFinish201217,
        ["201212"] = self.OnSubFinish201212,
        ["201207"] = self.OnSubFinish201207,
        ["201213"] = self.OnSubFinish201213,
        ["201208"] = self.OnSubFinish201208,
        ["201214"] = self.OnSubFinish201214,
        ["201209"] = self.OnSubFinish201209,
        ["201215"] = self.OnSubFinish201215
    }
end

function Quest2012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["201201"] = self.OnSubFailed201201,
        ["201202"] = self.OnSubFailed201202,
        ["201203"] = self.OnSubFailed201203,
        ["201204"] = self.OnSubFailed201204,
        ["201205"] = self.OnSubFailed201205,
        ["201206"] = self.OnSubFailed201206,
        ["201210"] = self.OnSubFailed201210,
        ["201211"] = self.OnSubFailed201211,
        ["201212"] = self.OnSubFailed201212,
        ["201207"] = self.OnSubFailed201207,
        ["201213"] = self.OnSubFailed201213,
        ["201208"] = self.OnSubFailed201208,
        ["201214"] = self.OnSubFailed201214,
        ["201209"] = self.OnSubFailed201209,
        ["201215"] = self.OnSubFailed201215
    }
end

function Quest2012:Start()
    print("Start")
end

function Quest2012:OnDestroy()
    print("OnDestroy")
end

function Quest2012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2012:CheckDistance()
    if self:GetSubQuestState(201207) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = self:GetQuestNpcActor(npcs.Npc12051Data.alias):GetPos()
        if 16 < M.Dist(pos, avatarPos) then
            self:NarratorOnlyTaskByData(datas.NarratorWarnFar)
            self:CallDelay(6, self.WarnCheck)
        else
            self:CallDelay(1, self.NormalCheck)
        end
    end
end

function Quest2012:WarnCheck()
    local avatarPos = actorUtils.GetAvatarPos()
    local pos = self:GetQuestNpcActor(npcs.Npc12051Data.alias):GetPos()
    if 18 < M.Dist(pos, avatarPos) then
        self:ClearNarratorTask()
        self:StopNarrator()
        self:NarratorOnlyTaskByData(datas.NarratorFailFar)
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(true, nil)
            print("2012 Follow Fail...")
        end
    else
        self:CheckDistance()
    end
end

function Quest2012:NormalCheck()
    self:CheckDistance()
end

function Quest2012:Narrator01()
    print("Narrator01")
    self:NarratorOnlyTaskByData(datas.NarratorWithId01)
end

function Quest2012:Narrator02()
    print("Narrator02")
    self:NarratorOnlyTaskByData(datas.NarratorWithId02)
end

function Quest2012:OnSubStart201201(arg1)
    print("OnSubStart201201")
    self:CreateQuestNpc(arg1, npcs.Npc3075Data.id, 1)
end

function Quest2012:OnSubFinish201201(arg1)
    print("OnSubFinish201201")
    self:ActionSafeCall(self.Narrator01)
end

function Quest2012:OnSubFailed201201(arg1)
    print("OnSubFailed201201")
end

function Quest2012:OnSubStart201202(arg1)
    print("OnSubStart201202")
    self:CreateQuestNpc(arg1, npcs.Npc3089Data.id, 1)
end

function Quest2012:OnSubFinish201202(arg1)
    print("OnSubFinish201202")
    self:SafeDestroyQuestNpc(npcs.Npc3089Data.alias, 3)
end

function Quest2012:OnSubFailed201202(arg1)
    print("OnSubFailed201202")
end

function Quest2012:OnSubStart201203(arg1)
    print("OnSubStart201203")
    self:CreateQuestNpc(arg1, npcs.Npc3084Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 2)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc1033Data.alias):DoFreeStyle(1120)
    end)
end

function Quest2012:OnSubFinish201203(arg1)
    print("OnSubFinish201203")
end

function Quest2012:OnSubFailed201203(arg1)
    print("OnSubFailed201203")
end

function Quest2012:OnSubStart201204(arg1)
    print("OnSubStart201204")
    self:CreateQuestNpc(arg1, npcs.Npc12043Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3084Data.id, 2)
end

function Quest2012:OnSubFinish201204(arg1)
    print("OnSubFinish201204")
    self:SafeDestroyQuestNpc(npcs.Npc3084Data.alias, 3)
end

function Quest2012:OnSubFailed201204(arg1)
    print("OnSubFailed201204")
end

function Quest2012:OnSubStart201205(arg1)
    print("OnSubStart201205")
    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 1)
end

function Quest2012:OnSubFinish201205(arg1)
    print("OnSubFinish201205")
end

function Quest2012:OnSubFailed201205(arg1)
    print("OnSubFailed201205")
end

function Quest2012:OnSubStart201206(arg1)
    print("OnSubStart201206")
    self:CreateQuestNpc(arg1, npcs.Npc12043Data.id, 1)
end

function Quest2012:OnSubFinish201206(arg1)
    print("OnSubFinish201206")
    self:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest2012:OnSubFailed201206(arg1)
    print("OnSubFailed201206")
end

function Quest2012:OnSubFinish201217(arg1)
    print("OnSubFinish201206")
    self:SafeDestroyQuestNpc(npcs.Npc12043Data.alias, 3)
end

function Quest2012:OnSubStart201210(arg1)
    print("OnSubStart201210")
end

function Quest2012:OnSubFinish201210(arg1)
    print("OnSubFinish201210")
end

function Quest2012:OnSubFailed201210(arg1)
    print("OnSubFailed201210")
end

function Quest2012:OnSubStart201211(arg1)
    print("OnSubStart201211")
end

function Quest2012:OnSubFinish201211(arg1)
    print("OnSubFinish201211")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest2012:OnSubFailed201211(arg1)
    print("OnSubFailed201211")
end

function Quest2012:OnSubStart201212(arg1)
    print("OnSubStart201212")
    actorMgr:CreateActorWithPos("Q201207PreTrigger", "Actor/Gadget/Q201207PreTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2012Heishang03").pos, sceneData:GetDummyPoint(3, "Q2012Heishang03").rot, true, false, 3)
end

function Quest2012:OnSubFinish201212(arg1)
    print("OnSubFinish201212")
    self:SafeDestroyQuestNpc(npcs.Npc12043Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12044Data.alias, 3)
end

function Quest2012:OnSubFailed201212(arg1)
    print("OnSubFailed201212")
end

function Quest2012:OnSubStart201207(arg1)
    print("OnSubStart201207")
    self:CreateQuestNpc(arg1, 3078, 3)
    actorMgr:CreateActorWithPos("Q2012FollowFailTrigger", "Actor/Gadget/Q2012FollowFailTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2012NpcFollow08").pos, sceneData:GetDummyPoint(3, "Q2012NpcFollow08").rot, true, false, 3)
    self:EnterTailMode(11)
    local questNpc = self:CreateQuestNpc(arg1, npcs.Npc12051Data.id, 1)
    self:CheckDistance()
    questNpc:CallOnStart(function(arg1)
        arg1.PatrolPosNum = followNPCData.PatrolPosNum
        arg1.PatrolPos = followNPCData.PatrolPos
        arg1.PatrolDir = followNPCData.PatrolDir
        arg1.PatrolNext = 0
        arg1:Start()
        arg1:ThreatTask(arg1.Discover, arg1.Aware, arg1.ReturnToPatrol, arg1.OnLure)
    end)
end

function Quest2012:OnSubFinish201207(arg1)
    print("OnSubFinish201207")
    self:SafeDestroyQuestNpc("Npc3078", 3)
    self:ExitTailMode()
end

function Quest2012:OnSubFailed201207(arg1)
    print("OnSubFailed201207")
    self:ExitTailMode()
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc12051Data.alias, 3)
        arg1:DestroyQuestNpcActor("Npc3078", 3)
    end)
end

function Quest2012:OnSubStart201213(arg1)
    print("OnSubStart201213")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:CreateQuestNpc(arg1, npcs.Npc12043Data.id, 1)
end

function Quest2012:OnSubFinish201213(arg1)
    print("OnSubFinish201213")
    self:SafeDestroyQuestNpc(npcs.Npc12043Data.alias, 3)
end

function Quest2012:OnSubFailed201213(arg1)
    print("OnSubFailed201213")
end

function Quest2012:OnSubStart201208(arg1)
    print("OnSubStart201208")
    self:UnSpawn(gadgets.Gadget71700283Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700283Data.id, 1, 0)
end

function Quest2012:OnSubFinish201208(arg1)
    print("OnSubFinish201208")
    self:UnSpawn(gadgets.Gadget71700283Data.alias)
end

function Quest2012:OnSubFailed201208(arg1)
    print("OnSubFailed201208")
end

function Quest2012:OnSubStart201214(arg1)
    print("OnSubStart201214")
    self:ShowBlackScreen(0.2, 2, 0.5, function(arg1)
        arg1:CreateQuestNpcById(201214, npcs.Npc12043Data.id, 0)
        arg1:RequestInteraction("Npc12043")
    end, nil, nil)
end

function Quest2012:OnSubFinish201214(arg1)
    print("OnSubFinish201214")
    self:SafeDestroyQuestNpc(npcs.Npc12043Data.alias, 3)
end

function Quest2012:OnSubFailed201214(arg1)
    print("OnSubFailed201214")
end

function Quest2012:OnSubStart201209(arg1)
    print("OnSubStart201209")
    self:NotifyTo("Npc3097", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12044Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc3084Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc3083Data.id)
    actorMgr:CreateActorWithPos("Q201209InTrigger", "Actor/Gadget/Q201209InTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2012NarraTrigger").pos, sceneData:GetDummyPoint(3, "Q2012NarraTrigger").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q2012NarraTrigger", "Actor/Gadget/Q2012NarraTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q2012NarraTrigger").pos, sceneData:GetDummyPoint(3, "Q2012NarraTrigger").rot, true, false, 3)
end

function Quest2012:OnSubFinish201209(arg1)
    print("OnSubFinish201209")
    self:SafeDestroyQuestNpc(npcs.Npc12044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12045Data.alias, 3)
end

function Quest2012:OnSubFailed201209(arg1)
    print("OnSubFailed201209")
end

function Quest2012:OnSubStart201215(arg1)
    print("OnSubStart201215")
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc3083Data.alias):DoFreeStyle(1120)
    end)

    self:CreateQuestNpc(arg1, npcs.Npc1033Data.id, 1)
    self:NotifyTo("Npc3091", 1, true)
    self:NotifyTo("Npc3073", 1, true)
    self:NotifyTo("Npc3074", 1, true)
    self:NotifyTo("Npc3097", 1, true)
end

function Quest2012:OnSubFinish201215(arg1)
    print("OnSubFinish201215")
    self:LightNotifyTo("Npc3091", 0, true)
    self:LightNotifyTo("Npc3097", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc1033Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3084Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3083Data.alias, 3)
end

function Quest2012:OnSubFailed201215(arg1)
    print("OnSubFailed201215")
end

function Quest2012:InvokeOnInteraction(arg1)
    if arg1 == 11 then
        print("Invoke quest finish")
        self:ShowQuestPictureDialog(2012)
    end
end

return Quest2012
