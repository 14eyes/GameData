require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40089 = class("Quest40089", QuestActorProxy)
Quest40089.defaultAlias = "Quest40089"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest40089:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest40089:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4008901"] = self.OnSubStart4008901,
        ["4008902"] = self.OnSubStart4008902,
        ["4008903"] = self.OnSubStart4008903,
        ["4008904"] = self.OnSubStart4008904,
        ["4008905"] = self.OnSubStart4008905,
        ["4008906"] = self.OnSubStart4008906,
        ["4008907"] = self.OnSubStart4008907,
        ["4008908"] = self.OnSubStart4008908,
        ["4008923"] = self.OnSubStart4008923,
        ["4008928"] = self.OnSubStart4008928,
        ["4008914"] = self.OnSubStart4008914,
        ["4008915"] = self.OnSubStart4008915,
        ["4008919"] = self.OnSubStart4008919,
        ["4008920"] = self.OnSubStart4008920,
        ["4008921"] = self.OnSubStart4008921,
        ["4008922"] = self.OnSubStart4008922,
        ["4008916"] = self.OnSubStart4008916,
        ["4008924"] = self.OnSubStart4008924,
        ["4008925"] = self.OnSubStart4008925,
        ["4008926"] = self.OnSubStart4008926,
        ["4008927"] = self.OnSubStart4008927,
        ["4008917"] = self.OnSubStart4008917,
        ["4008929"] = self.OnSubStart4008929,
        ["4008930"] = self.OnSubStart4008930,
        ["4008931"] = self.OnSubStart4008931,
        ["4008932"] = self.OnSubStart4008932,
        ["4008909"] = self.OnSubStart4008909,
        ["4008918"] = self.OnSubStart4008918,
        ["4008910"] = self.OnSubStart4008910,
        ["4008911"] = self.OnSubStart4008911,
        ["4008912"] = self.OnSubStart4008912,
        ["4008913"] = self.OnSubStart4008913,
        ["4008933"] = self.OnSubStart4008933
    }
end

function Quest40089:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4008901"] = self.OnSubFinish4008901,
        ["4008902"] = self.OnSubFinish4008902,
        ["4008903"] = self.OnSubFinish4008903,
        ["4008904"] = self.OnSubFinish4008904,
        ["4008905"] = self.OnSubFinish4008905,
        ["4008906"] = self.OnSubFinish4008906,
        ["4008907"] = self.OnSubFinish4008907,
        ["4008908"] = self.OnSubFinish4008908,
        ["4008923"] = self.OnSubFinish4008923,
        ["4008928"] = self.OnSubFinish4008928,
        ["4008914"] = self.OnSubFinish4008914,
        ["4008915"] = self.OnSubFinish4008915,
        ["4008919"] = self.OnSubFinish4008919,
        ["4008920"] = self.OnSubFinish4008920,
        ["4008921"] = self.OnSubFinish4008921,
        ["4008922"] = self.OnSubFinish4008922,
        ["4008916"] = self.OnSubFinish4008916,
        ["4008924"] = self.OnSubFinish4008924,
        ["4008925"] = self.OnSubFinish4008925,
        ["4008926"] = self.OnSubFinish4008926,
        ["4008927"] = self.OnSubFinish4008927,
        ["4008917"] = self.OnSubFinish4008917,
        ["4008929"] = self.OnSubFinish4008929,
        ["4008930"] = self.OnSubFinish4008930,
        ["4008931"] = self.OnSubFinish4008931,
        ["4008932"] = self.OnSubFinish4008932,
        ["4008909"] = self.OnSubFinish4008909,
        ["4008918"] = self.OnSubFinish4008918,
        ["4008910"] = self.OnSubFinish4008910,
        ["4008911"] = self.OnSubFinish4008911,
        ["4008912"] = self.OnSubFinish4008912,
        ["4008913"] = self.OnSubFinish4008913,
        ["4008933"] = self.OnSubFinish4008933
    }
end

function Quest40089:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4008915"] = self.OnSubFailed4008915,
        ["4008916"] = self.OnSubFailed4008916,
        ["4008917"] = self.OnSubFailed4008917
    }
end

function Quest40089:Start()
    print("Start")
end

function Quest40089:OnDestroy()
    print("OnDestroy")
end

function Quest40089:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40089:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40089:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:DisableMainPageWithConfig(false, "DisableActionPanel")
    self:RemoveLocalGadget(70900201, "1")
    self:RemoveLocalGadget(70710962, "1")
    self:RemoveLocalGadget(70290870, "1")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1039Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1032Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12945Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1036Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12944Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13101Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13011Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40089BackRoad", 0, false)
    actorMgr:DestroyEntityActor("Q40089RestartFollow", 0, false)
    actorMgr:DestroyEntityActor("Q40089Scary1", 3, false)
    actorMgr:DestroyEntityActor("Q40089Scary2", 0, false)
    actorMgr:DestroyEntityActor("Q40089Scary3", 0, false)
    actorMgr:DestroyEntityActor("Q40089Scary4", 0, false)
    actorMgr:DestroyEntityActor("Q40089Scary5", 0, false)
    actorMgr:DestroyEntityActor("Q40089Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q40089Trigger1", 0, false)
    actorMgr:DestroyEntityActor("Q40089Trigger2", 0, false)
    actorMgr:DestroyEntityActor("Q40089Trigger3", 3, false)
    actorMgr:DestroyEntityActor("Q40089Trigger4", 0, false)
    actorMgr:DestroyEntityActor("Q40089Trigger5", 0, false)
    actorMgr:DestroyEntityActor("Q40089Warning", 0, false)
    actorMgr:DestroyEntityActor("Q4008902Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q4008918", 3, false)
    this:ActorDestroy("Q40089FollowFail")
    self:RemoveLocalGadget(70710470, "1")
    self:RemoveLocalGadget(70710470, "2")
    self:RemoveLocalGadget(70710470, "3")
    self:CancelPlayGuide()
end

function Quest40089:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40089:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        local questVar = self:GetQuestVar(4008908, 0)
        if questVar == 0 then
            self:SetQuestVarByMainId(0, 1)
        elseif questVar == 2 then
            self:SetQuestVarByMainId(0, 4)
        elseif questVar == 3 then
            self:SetQuestVarByMainId(0, 5)
        elseif questVar == 6 then
            self:SetQuestVarByMainId(0, 7)
        end
    end

    if arg1 == 2 then
        local questVar = self:GetQuestVar(4008908, 0)
        if questVar == 0 then
            self:SetQuestVarByMainId(0, 2)
        elseif questVar == 1 then
            self:SetQuestVarByMainId(0, 4)
        elseif questVar == 3 then
            self:SetQuestVarByMainId(0, 6)
        elseif questVar == 5 then
            self:SetQuestVarByMainId(0, 7)
        end
    end

    if arg1 == 3 then
        local questVar = self:GetQuestVar(4008908, 0)
        if questVar == 0 then
            self:SetQuestVarByMainId(0, 3)
        elseif questVar == 1 then
            self:SetQuestVarByMainId(0, 5)
        elseif questVar == 2 then
            self:SetQuestVarByMainId(0, 6)
        elseif questVar == 4 then
            self:SetQuestVarByMainId(0, 7)
        end
    end

    if arg1 == 4 then
        actorUtils.FinishQuestID(false, 4008908)
        self:SetQuestVarByMainId(1, 1)
    end

    if arg1 == 5 then
        actorUtils.FinishQuestID(false, 4008908)
        self:SetQuestVarByMainId(1, 2)
    end

    if arg1 == 6 then
        actorUtils.FinishQuestID(false, 4008908)
        self:SetQuestVarByMainId(1, 3)
    end

    if arg1 == 11 then
        self:GetQuestNpcActor(npcs.Npc1013Data.alias):ClearNpcFollowTask()
        self:RemoveLocalGadget(70900201, "1")
        self:RemoveLocalGadget(70710470, "3")
    end

    if arg1 == 12 then
        self:GetQuestNpcActor(npcs.Npc1039Data.alias):ClearNpcFollowTask()
        self:RemoveLocalGadget(70900201, "1")
        self:RemoveLocalGadget(70710470, "3")
    end

    if arg1 == 13 then
        self:GetQuestNpcActor(npcs.Npc1032Data.alias):ClearNpcFollowTask()
        self:RemoveLocalGadget(70900201, "1")
        self:RemoveLocalGadget(70710470, "3")
    end
end

function Quest40089:DestoryScaryTrigger()
    print("DestoryScaryTrigger")
    this:ActorDestroy("Q40089Scary1")
    this:ActorDestroy("Q40089Scary2")
    this:ActorDestroy("Q40089Scary3")
    this:ActorDestroy("Q40089Scary4")
end

function Quest40089:DestoryScaryTrigger()
    print("DestoryScaryTrigger")
    this:ActorDestroy("Q40089Scary1")
    this:ActorDestroy("Q40089Scary2")
    this:ActorDestroy("Q40089Scary3")
    this:ActorDestroy("Q40089Scary4")
end

function Quest40089:PlayGuide()
    self:CreateLocalGadget(70710470, "10", {x = -2709.93, y = 241.456, z = -4491.166}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
    self:CreateLocalGadget(70710470, "11", {x = -2724.537, y = 238.43, z = -4489.402}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
    self:CreateLocalGadget(70710470, "12", {x = -2735.96, y = 235.325, z = -4497.417}, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
    self:ShowTextMapWithParam("QUEST_Message_Q4008901")
end

function Quest40089:CancelPlayGuide()
    self:RemoveLocalGadget(70710470, "10")
    self:RemoveLocalGadget(70710470, "11")
    self:RemoveLocalGadget(70710470, "12")
end

function Quest40089:AyakaFollowGadget()
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1013Data.alias)
    local actor = actorMgr:GetActor("40089")
    local pos = questNpcActor:GetPos()
    pos.y = pos.y + 1.8
    actor:CreateLocalGadget(70900201, "1", pos, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
end

function Quest40089:AyakaFollow()
    print("AyakaFollow")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1013Data.alias)
    local actor = actorMgr:GetActor("40089")
    questNpcActor:NpcFollowTask(40089, "", {
        isWalkOnly = false,
        tickInternal = 0.5,
        walkToPathLength = 2,
        waitPathLength = 1,
        npcSafePolygon = "Inazuma_kimota_001",
        npcSafeResumeDist = 10,
        warningLength = 40,
        accessFailLength = 50,
        maxFailLength = 60,
        failMaxCount = 5,
        playerIdleTime = 5
    }, nil, nil, function()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1013Data.alias)
        if datas.NarratorTag == 0 then
            questNpcActor:NarratorOnlyTaskByData(datas.IdleNarrator)
        end
    end, function()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1013Data.alias)
        local pos = questNpcActor:GetPos()
        actor:UnCallFunc(self.AyakaFollowGadget)
        actor:NpcResetForceAvatarWalk(questNpcActor)
        questNpcActor:NarratorOnlyTaskByData(datas.WarningNarrator)
        actorMgr:CreateActorWithPos("Q40089FollowFail", "Actor/Gadget/Q40089FollowFail", 70900002, 0, pos, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        self:ShowTextMapWithParam("QUEST_Message_Q4008902")
        actor:CallDelay(1, function()
            actor:AyakaFollowGadget()
        end)
    end, function()
        datas.NarratorTag = 0
        actorMgr:DestroyEntityActor("Q40089FollowFail", 0, false)
        actor:RemoveLocalGadget(70900201, "1")
        actor:CallDelay(1.2, function()
            actor:RemoveLocalGadget(70900201, "1")
        end)
    end)
end

function Quest40089:KazuhaFollowGadget()
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1032Data.alias)
    local actor = actorMgr:GetActor("40089")
    local pos = questNpcActor:GetPos()
    pos.y = pos.y + 1.8
    actor:CreateLocalGadget(70900201, "1", pos, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
end

function Quest40089:KazuhaFollow()
    print("KazuhaFollow")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1032Data.alias)
    local actor = actorMgr:GetActor("40089")
    questNpcActor:NpcFollowTask(40089, "", {
        isWalkOnly = false,
        tickInternal = 0.5,
        walkToPathLength = 2,
        waitPathLength = 1,
        npcSafePolygon = "Inazuma_kimota_001",
        npcSafeResumeDist = 10,
        warningLength = 40,
        accessFailLength = 50,
        maxFailLength = 60,
        failMaxCount = 5,
        playerIdleTime = 5
    }, nil, nil, function()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1032Data.alias)
        if datas.NarratorTag == 0 then
            questNpcActor:NarratorOnlyTaskByData(datas.IdleNarrator_Kazuha)
        end
    end, function()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1032Data.alias)
        actor:UnCallFunc(self.KazuhaFollowGadget)
        actor:NpcResetForceAvatarWalk(questNpcActor)
        local pos = questNpcActor:GetPos()
        questNpcActor:NarratorOnlyTaskByData(datas.WarningNarrator_Kazuha)
        self:ShowTextMapWithParam("QUEST_Message_Q4008902")
        actorMgr:CreateActorWithPos("Q40089FollowFail", "Actor/Gadget/Q40089FollowFail", 70900002, 0, pos, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        actor:CallDelay(1, function()
            actor:KazuhaFollowGadget()
        end)
    end, function()
        datas.NarratorTag = 0
        actorMgr:DestroyEntityActor("Q40089FollowFail", 0, false)
        actor:RemoveLocalGadget(70900201, "1")
        actor:CallDelay(1.2, function()
            actor:RemoveLocalGadget(70900201, "1")
        end)
    end)
end

function Quest40089:GorouFollowGadget()
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1039Data.alias)
    local actor = actorMgr:GetActor("40089")
    local pos = questNpcActor:GetPos()
    pos.y = pos.y + 1.8
    actor:CreateLocalGadget(70900201, "1", pos, {x = 0.0, y = 0.0, z = 0.0}, 3, nil, nil, true)
end

function Quest40089:GorouFollow()
    print("GorouFollow")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1039Data.alias)
    local actor = actorMgr:GetActor("40089")
    questNpcActor:NpcFollowTask(40089, "", {
        isWalkOnly = false,
        tickInternal = 0.5,
        walkToPathLength = 2,
        waitPathLength = 1,
        npcSafePolygon = "Inazuma_kimota_001",
        npcSafeResumeDist = 10,
        warningLength = 40,
        accessFailLength = 50,
        maxFailLength = 60,
        failMaxCount = 5,
        playerIdleTime = 5
    }, nil, nil, function()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1039Data.alias)
        if datas.NarratorTag == 0 then
            questNpcActor:NarratorOnlyTaskByData(datas.IdleNarrator_Gorou)
        end
    end, function()
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc1039Data.alias)
        actor:UnCallFunc(self.GorouFollowGadget)
        actor:NpcResetForceAvatarWalk(questNpcActor)
        local pos = questNpcActor:GetPos()
        questNpcActor:NarratorOnlyTaskByData(datas.WarningNarrator_Gorou)
        self:ShowTextMapWithParam("QUEST_Message_Q4008902")
        actorMgr:CreateActorWithPos("Q40089FollowFail", "Actor/Gadget/Q40089FollowFail", 70900002, 0, pos, {x = 0.0, y = 0.0, z = 0.0}, true, false)
        actor:CallDelay(1, function()
            actor:GorouFollowGadget()
        end)
    end, function()
        datas.NarratorTag = 0
        actorMgr:DestroyEntityActor("Q40089FollowFail", 0, false)
        actor:RemoveLocalGadget(70900201, "1")
        actor:CallDelay(1.2, function()
            actor:RemoveLocalGadget(70900201, "1")
        end)
    end)
end

function Quest40089:CreateScaryTrigger()
    print("CreateScaryTrigger")
    actorMgr:CreateActorWithPos("Q40089Scary1", "Actor/Gadget/Q40089Scary1", 70900002, 0, {x = -2732.155, y = 234.459, z = -4494.504}, {x = 0.0, y = 228.578, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q40089Scary2", "Actor/Gadget/Q40089Scary2", 70900002, 0, {x = -2759.776, y = 227.933, z = -4511.711}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q40089Scary3", "Actor/Gadget/Q40089Scary3", 70900002, 0, {x = -2791.842, y = 226.37, z = -4481.202}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q40089Scary4", "Actor/Gadget/Q40089Scary4", 70900002, 0, {x = -2754.63, y = 226.447, z = -4460.275}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest40089:NarratorNoSafeFinish(arg1, callback, arg3)
    print("NarratorNoSafeFinish")
    self:NarratorOnlyTaskByData(arg1, function(arg1, arg2)
        if callback ~= nil then
            callback()
        end
    end, 40089)
end

function Quest40089:ClearAllScaryThings()
    self.RemoveLocalGadget(self, 70900201, "1")
    self.CallDelay(self, 1.2, function()
        self:RemoveLocalGadget(70900201, "1")
    end)

    self.RemoveLocalGadget(self, 70710962, "1")
    self.RemoveLocalGadget(self, 70290870, "1")
    self.RemoveLocalGadget(self, 70710470, "1")
    self.RemoveLocalGadget(self, 70710470, "2")
    self.RemoveLocalGadget(self, 70710470, "3")
end

function Quest40089:FollowPrepare()
    this:CreateLocalGadget(70290870, "1", {x = -2727.806, y = 237.283, z = -4535.362}, {x = -67.385, y = -34.966, z = -4.732}, 3, nil, nil, false)
    if self:GetSubQuestState(4008923) == 2 then
        self:CreateLocalGadget(70710470, "1", {x = -2790.114, y = 225.7809, z = -4464.298}, {x = 0, y = 0, z = 0}, 3, nil, nil, false)
    end

    if self:GetSubQuestState(4008928) == 2 then
        self:CreateLocalGadget(70710470, "2", {x = -2753.72, y = 228.0041, z = -4440.607}, {x = 0, y = 0, z = 0}, 3, nil, nil, false)
    end

    self:CreateLocalGadget(70710470, "3", {x = -2728.478, y = 236.7902, z = -4534.608}, {x = 0, y = 0, z = 0}, 3, nil, nil, false)
end

function Quest40089:OnSubStart4008901(arg1)
    print("OnSubStart4008901")
    this:CreateQuestNpc(arg1, npcs.Npc1047Data.id, 1)
    actorMgr:CreateActorWithPos("Q40089Trigger", "Actor/Gadget/Q40089Trigger", 70900002, 0, {x = -2565.351, y = 281.651, z = -4614.174}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    if self:GetQuestVar(4008901, 2) ~= 1 then
        if self:GetSubQuestState(302901) ~= 2 then
            self:NarratorOnlyTaskByData(datas.NarratorWithId)
        end
    end
end

function Quest40089:OnSubFinish4008901(arg1)
    print("OnSubFinish4008901")
end

function Quest40089:OnSubStart4008902(arg1)
    print("OnSubStart4008902")
    actorMgr:CreateActorWithPos("Q4008902Trigger1", "Actor/Gadget/Q4008902Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008901_N1047").pos, sceneData:GetDummyPoint(3, "Q4008901_N1047").rot, true, false, 3)
end

function Quest40089:OnSubFinish4008902(arg1)
    print("OnSubFinish4008902")
    self:ClearNarratorTask()
    self:StopNarrator()
    this:SafeDestroyQuestNpc(npcs.Npc1047Data.alias, 3)
end

function Quest40089:OnSubStart4008903(arg1)
    print("OnSubStart4008903")
    this:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 1)
    actorMgr:CreateActorWithPos("Q40089Trigger1", "Actor/Gadget/Q40089Trigger1", 70900002, 0, {x = -2569.085, y = 273.733, z = -4579.255}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest40089:OnSubFinish4008903(arg1)
    print("OnSubFinish4008903")
end

function Quest40089:OnSubStart4008904(arg1)
    print("OnSubStart4008904")
    this:RequestInteraction(npcs.Npc1044Data.alias)
end

function Quest40089:OnSubFinish4008904(arg1)
    print("OnSubFinish4008904")
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
end

function Quest40089:OnSubStart4008905(arg1)
    print("OnSubStart4008905")
    this:CreateQuestNpc(arg1, npcs.Npc12945Data.id)
    actorMgr:CreateActorWithPos("Q40089Trigger2", "Actor/Gadget/Q40089Trigger2", 70900002, 0, {x = -2689.322, y = 248.903, z = -4504.824}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest40089:OnSubFinish4008905(arg1)
    print("OnSubFinish4008905")
end

function Quest40089:OnSubStart4008906(arg1)
    print("OnSubStart4008906")
    this:ShowBlackScreenWithDialogText(0.5, 0.5, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 1)
        this:RequestInteraction(npcs.Npc1044Data.alias)
    end, nil, nil, 0, false, true)
end

function Quest40089:OnSubFinish4008906(arg1)
    print("OnSubFinish4008906")
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
end

function Quest40089:OnSubStart4008907(arg1)
    print("OnSubStart4008907")
end

function Quest40089:OnSubFinish4008907(arg1)
    print("OnSubFinish4008907")
end

function Quest40089:OnSubStart4008908(arg1)
    print("OnSubStart4008908")
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id)
end

function Quest40089:OnSubFinish4008908(arg1)
    print("OnSubFinish4008908")
    self:ActionSafeCall(function()
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
            this:DestroyQuestNpcActor(npcs.Npc1013Data.alias, 3)
            this:DestroyQuestNpcActor(npcs.Npc1039Data.alias, 3)
            this:DestroyQuestNpcActor(npcs.Npc1032Data.alias, 3)
        end, nil, nil, 0, false, true)
    end)
end

function Quest40089:OnSubStart4008923(arg1)
    print("OnSubStart4008923")
end

function Quest40089:OnSubFinish4008923(arg1)
    print("OnSubFinish4008923")
    self:RemoveLocalGadget(70710470, "1")
    if datas.NarratorTag == 0 then
        self:NarratorOnlyTaskByData(datas.OpenChest1)
    end
end

function Quest40089:OnSubStart4008928(arg1)
    print("OnSubStart4008928")
end

function Quest40089:OnSubFinish4008928(arg1)
    print("OnSubFinish4008928")
    self:RemoveLocalGadget(70710470, "2")
    if datas.NarratorTag == 0 then
        self:NarratorOnlyTaskByData(datas.OpenChest2)
    end
end

function Quest40089:OnSubStart4008914(arg1)
    print("OnSubStart4008914")
end

function Quest40089:OnSubFinish4008914(arg1)
    print("OnSubFinish4008914")
end

function Quest40089:OnSubStart4008915(arg1)
    print("OnSubStart4008915")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, function()
            arg1_2:PlayGuide()
            arg1_2:CallDelay(3, function()
                arg1_2:CancelPlayGuide()
            end)
        end, function()
            this:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 0)
            this:AyakaFollow()
            arg1_2:DisableMainPageWithConfig(true, "DisableActionPanel")
            this:CreateScaryTrigger()
        end)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc13101Data.id, 2)
    self:FollowPrepare()
end

function Quest40089:OnSubFinish4008915(arg1)
    print("OnSubFinish4008915")
    this:DestoryScaryTrigger()
    self:ClearAllScaryThings()
    this:RequestInteraction(npcs.Npc1013Data.alias)
    self:DisableMainPageWithConfig(false, "DisableActionPanel")
    this:GetQuestNpcActor(npcs.Npc1013Data.alias):ClearNpcFollowTask()
end

function Quest40089:OnSubFailed4008915(arg1)
    print("OnSubFailed4008915")
    this:ShowBlackScreenWithDialogText(0.5, 3, 0.5, function(arg1)
        arg1:ClearNarratorTask()
        arg1:StopNarrator()
        this:DestroyQuestNpcActor(npcs.Npc1013Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1032Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1039Data.alias, 3)
        arg1:ClearAllScaryThings()
        this:DestoryScaryTrigger()
        this:DestroyQuestNpcActor(npcs.Npc13011Data.alias, 3)
        arg1:DisableMainPageWithConfig(false, "DisableActionPanel")
        this:ActorDestroy("Q40089FollowFail")
    end, nil, nil, 400899904, false, true)
end

function Quest40089:OnSubStart4008919(arg1)
    print("OnSubStart4008919")
end

function Quest40089:OnSubFinish4008919(arg1)
    print("OnSubFinish4008919")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1013Data.alias, 40089)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.ScaryNarrator1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
        self:NpcResetForceAvatarWalk(questNpcActor)
        datas.NarratorTag = 0
    end)
end

function Quest40089:OnSubStart4008920(arg1)
    print("OnSubStart4008920")
end

function Quest40089:OnSubFinish4008920(arg1)
    print("OnSubFinish4008920")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1013Data.alias, 40089)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.ScaryNarrator2, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
        questNpcActor:ClearNpcFollowTask()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {}
        tbl.x = -2756.647
        tbl.y = 229.957
        tbl.z = -4512.647
        forward.x = forward.x * -1
        forward.z = forward.z * -1
        self:EnterSceneLookCamera({x = pos.x, y = pos.y + 0.8, z = pos.z}, 0, 3, true, true)
        self:CreateLocalGadget(70710962, "1", tbl, forward, 3, nil, nil, true)
        self:CallDelay(0.86, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
            actorUtils.SetPostEffect("PostEffect_Monster_Thoarder_MuddyBullet_ScreenEffect", true)
            questNpcActor:DoFreeStyle(1070)
        end)

        self:NarratorNoSafeFinish(datas.ScaryNarrator2_2, function()
            self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089):DoFreeStateTrigger()
            actorUtils.SetPostEffect("PostEffect_Monster_Thoarder_MuddyBullet_ScreenEffect", false)
            self:AyakaFollow()
            self:RemoveLocalGadget(70710962, "1")
            self:PlayEffect("Eff_Avatar_Male_Claymore_Itto_ElementalArt_OniBull_Die", tbl)
            self:NarratorNoSafeFinish(datas.ScaryNarrator2_3, function()
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
                self:NpcResetForceAvatarWalk(questNpcActor)
            end)
        end)
    end)
end

function Quest40089:OnSubStart4008921(arg1)
    print("OnSubStart4008921")
end

function Quest40089:OnSubFinish4008921(arg1)
    print("OnSubFinish4008921")
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1013Data.alias, 40089)
    datas.NarratorTag = 1
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 2.2, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
        questNpcActor:ClearFollowTask()
        questNpcActor:DoFreeStyle(1070)
    end)

    self.CallDelay(self, 4, function()
        self:AyakaFollow()
    end)

    self.CallDelay(self, 1.5, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {x = pos.x + forward.x * 2.3, y = pos.y, z = pos.z + forward.z * 2.1}
        self:CreateLocalGadget(70290746, "1", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
        self:EnterSceneLookCamera({x = pos.x, y = pos.y + 0.8, z = pos.z}, 0, 3, true, true)
        self:NarratorNoSafeFinish(datas.ScaryNarrator3, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
            self:NpcResetForceAvatarWalk(questNpcActor)
            datas.NarratorTag = 0
        end)
    end)

    self.CallDelay(self, 1.8, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {x = avatarPos.x + avatarForward.x * 2.3, y = avatarPos.y, z = avatarPos.z + avatarForward.z * 2.1}
        self:CreateLocalGadget(70290746, "2", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 2.5, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {x = pos.x + forward.x * -2.5, y = pos.y, z = pos.z + forward.z * -2.2}
        self:CreateLocalGadget(70290746, "3", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 3.0, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {x = pos.x + forward.x + -2.1, y = pos.y, z = pos.z + forward.z + -2.6}
        self:CreateLocalGadget(70290746, "4", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
    end)
end

function Quest40089:OnSubStart4008922(arg1)
    print("OnSubStart4008922")
end

function Quest40089:OnSubFinish4008922(arg1)
    print("OnSubFinish4008922")
    datas.NarratorTag = 1
    self.CreateQuestNpc(self, arg1, npcs.Npc13011Data.id)
    self.GetQuestNpcActor(self, npcs.Npc13011Data.alias, 40089):DoFreeStyle(1280)
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1013Data.alias, 40089)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.ScaryNarrator4, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1013Data.alias, 40089)
        datas.NarratorTag = 0
        self:NpcResetForceAvatarWalk(questNpcActor)
    end)
end

function Quest40089:OnSubStart4008916(arg1)
    print("OnSubStart4008916")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, function()
            arg1_2:PlayGuide()
            arg1_2:CallDelay(3, function()
                arg1_2:CancelPlayGuide()
            end)
        end, function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc1039Data.id, 0)
            this:GorouFollow()
            arg1_2:DisableMainPageWithConfig(true, "DisableActionPanel")
            this:CreateScaryTrigger()
        end)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc13101Data.id, 2)
    self:FollowPrepare()
end

function Quest40089:OnSubFinish4008916(arg1)
    print("OnSubFinish4008916")
    this:DestoryScaryTrigger()
    this:RequestInteraction(npcs.Npc1039Data.alias)
    self:DisableMainPageWithConfig(false, "DisableActionPanel")
    this:GetQuestNpcActor(npcs.Npc1039Data.alias):ClearNpcFollowTask()
    self:ClearAllScaryThings()
end

function Quest40089:OnSubFailed4008916(arg1)
    print("OnSubFailed4008916")
    this:ShowBlackScreenWithDialogText(0.5, 3, 0.5, function(arg1)
        arg1:ClearNarratorTask()
        arg1:StopNarrator()
        this:DestroyQuestNpcActor(npcs.Npc1013Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1032Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1039Data.alias, 3)
        arg1:ClearAllScaryThings()
        this:DestoryScaryTrigger()
        this:DestroyQuestNpcActor(npcs.Npc13011Data.alias, 3)
        arg1:DisableMainPageWithConfig(false, "DisableActionPanel")
        this:ActorDestroy("Q40089FollowFail")
    end, nil, nil, 400899904, false, true)
end

function Quest40089:OnSubStart4008924(arg1)
    print("OnSubStart4008924")
end

function Quest40089:OnSubFinish4008924(arg1)
    print("OnSubFinish4008924")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1039Data.alias, 40089)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.ScaryNarrator1_Gorou, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
        datas.NarratorTag = 0
        self:NpcResetForceAvatarWalk(questNpcActor)
    end)
end

function Quest40089:OnSubStart4008925(arg1)
    print("OnSubStart4008925")
end

function Quest40089:OnSubFinish4008925(arg1)
    print("OnSubFinish4008925")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1039Data.alias, 40089)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.ScaryNarrator2_Gorou, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
        questNpcActor:ClearNpcFollowTask()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {}
        tbl.x = -2753.872
        tbl.y = 231.057
        tbl.z = -4513.91
        forward.x = forward.x * -1
        forward.z = forward.z * -1
        self:CreateLocalGadget(70710962, "1", tbl, forward, 3, nil, nil, true)
        self:EnterSceneLookCamera({x = pos.x, y = pos.y + 0.8, z = pos.z}, 0, 3, true, true)
        self:CallDelay(0.86, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
            actorUtils.SetPostEffect("PostEffect_Monster_Thoarder_MuddyBullet_ScreenEffect", true)
            questNpcActor:DoFreeStyle(1080)
        end)

        self:CallDelay(4, function()
            actorUtils.SetPostEffect("PostEffect_Monster_Thoarder_MuddyBullet_ScreenEffect", false)
            self:RemoveLocalGadget(70710962, "1")
            self:PlayEffect("Eff_Avatar_Male_Claymore_Itto_ElementalArt_OniBull_Die", tbl)
        end)

        self:NarratorNoSafeFinish(datas.ScaryNarrator2_2Gorou, function()
            self:GorouFollow()
            self:NarratorNoSafeFinish(datas.ScaryNarrator2_3Gorou, function()
                local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
                self:NpcResetForceAvatarWalk(questNpcActor)
            end)
        end)
    end)
end

function Quest40089:OnSubStart4008926(arg1)
    print("OnSubStart4008926")
end

function Quest40089:OnSubFinish4008926(arg1)
    print("OnSubFinish4008926")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1039Data.alias, 40089)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.ScaryNarrator3_Gorou, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
        datas.NarratorTag = 0
        self:NpcResetForceAvatarWalk(questNpcActor)
    end)

    self.CallDelay(self, 2.9, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
        questNpcActor:ClearNpcFollowTask()
        questNpcActor:DoFreeStyle(1080, true, nil, true, true, false, false)
    end)

    self.CallDelay(self, 2.5, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        self:EnterSceneLookCamera({x = pos.x, y = pos.y + 0.8, z = pos.z}, 0, 3, true, true)
        local tbl = {x = pos.x + forward.x * 2.3, y = pos.y, z = pos.z + forward.z * 2.1}
        self:CreateLocalGadget(70290746, "1", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 2.8, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {x = avatarPos.x + avatarForward.x * 2.3, y = avatarPos.y, z = avatarPos.z + avatarForward.z * -2.1}
        self:CreateLocalGadget(70290746, "2", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 3.5, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {x = pos.x + forward.x * -2.5, y = pos.y, z = pos.z + forward.z * -2.2}
        self:CreateLocalGadget(70290746, "3", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 4.0, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {x = pos.x + forward.x * -2.8, y = pos.y, z = pos.z + forward.z * 2.6}
        self:CreateLocalGadget(70290746, "4", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 5, function()
        self:GorouFollow()
    end)
end

function Quest40089:OnSubStart4008927(arg1)
    print("OnSubStart4008927")
end

function Quest40089:OnSubFinish4008927(arg1)
    print("OnSubFinish4008927")
    datas.NarratorTag = 1
    self.CreateQuestNpc(self, arg1, npcs.Npc13011Data.id)
    self.GetQuestNpcActor(self, npcs.Npc13011Data.alias, 40089):DoFreeStyle(1280)
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1039Data.alias, 40089)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.ScaryNarrator4_Gorou, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1039Data.alias, 40089)
        datas.NarratorTag = 0
        self:NpcResetForceAvatarWalk(questNpcActor)
    end)
end

function Quest40089:OnSubStart4008917(arg1)
    print("OnSubStart4008917")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerById(arg1, 1, function()
            arg1_2:PlayGuide()
            arg1_2:CallDelay(3, function()
                arg1_2:CancelPlayGuide()
            end)
        end, function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc1032Data.id, 0)
            this:KazuhaFollow()
            arg1_2:DisableMainPageWithConfig(true, "DisableActionPanel")
            this:CreateScaryTrigger()
        end)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc13101Data.id, 2)
    self:FollowPrepare()
end

function Quest40089:OnSubFinish4008917(arg1)
    print("OnSubFinish4008917")
    this:DestoryScaryTrigger()
    self:ClearAllScaryThings()
    this:RequestInteraction(npcs.Npc1032Data.alias)
    self:DisableMainPageWithConfig(false, "DisableActionPanel")
    this:GetQuestNpcActor(npcs.Npc1032Data.alias):ClearNpcFollowTask()
end

function Quest40089:OnSubFailed4008917(arg1)
    print("OnSubFailed4008917")
    this:ShowBlackScreenWithDialogText(0.5, 3, 0.5, function(arg1)
        arg1:ClearNarratorTask()
        arg1:StopNarrator()
        this:DestroyQuestNpcActor(npcs.Npc1013Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1032Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1039Data.alias, 3)
        arg1:ClearAllScaryThings()
        this:DestoryScaryTrigger()
        this:DestroyQuestNpcActor(npcs.Npc13011Data.alias, 3)
        arg1:DisableMainPageWithConfig(false, "DisableActionPanel")
        this:ActorDestroy("Q40089FollowFail")
    end, nil, nil, 400899904, false, true)
end

function Quest40089:OnSubStart4008929(arg1)
    print("OnSubStart4008929")
end

function Quest40089:OnSubFinish4008929(arg1)
    print("OnSubFinish4008929")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1032Data.alias, 40089)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.ScaryNarrator1_Kazuha, function()
        datas.NarratorTag = 0
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
        self:NpcResetForceAvatarWalk(questNpcActor)
    end)
end

function Quest40089:OnSubStart4008930(arg1)
    print("OnSubStart4008930")
end

function Quest40089:OnSubFinish4008930(arg1)
    print("OnSubFinish4008930")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1032Data.alias, 40089)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.ScaryNarrator2_Kazuha, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
        questNpcActor:ClearNpcFollowTask()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {}
        tbl.x = -2756.692
        tbl.y = 229.948
        tbl.z = -4512.889
        forward.x = forward.x * -1
        forward.z = forward.z * -1
        self:EnterSceneLookCamera({x = pos.x, y = pos.y + 0.8, z = pos.z}, 0, 3, true, true)
        self:CreateLocalGadget(70710962, "1", tbl, forward, 3, nil, nil, true)
        self:CallDelay(0.86, function()
            self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089):DoFreeStyle(1310)
            actorUtils.SetPostEffect("PostEffect_Monster_Thoarder_MuddyBullet_ScreenEffect", true)
            self:CallDelay(2, function()
                actorUtils.SetPostEffect("PostEffect_Monster_Thoarder_MuddyBullet_ScreenEffect", false)
            end)
        end)

        self:NarratorNoSafeFinish(datas.ScaryNarrator2_2Kazuha, function()
            actorUtils.SetPostEffect("PostEffect_Monster_Thoarder_MuddyBullet_ScreenEffect", true)
            self:PlayEffect("Eff_Avatar_Male_Claymore_Itto_ElementalArt_OniBull_Born", tbl)
            self:CallDelay(0.86, function()
                self:PlayEffect("Eff_Avatar_Male_Claymore_Itto_ElementalArt_OniBull_Born", tbl)
            end)

            self:CallDelay(3, function()
                actorUtils.SetPostEffect("PostEffect_Monster_Thoarder_MuddyBullet_ScreenEffect", false)
                self:RemoveLocalGadget(70710962, "1")
                self:PlayEffect("Eff_Avatar_Male_Claymore_Itto_ElementalArt_OniBull_Die", tbl)
            end)

            self:NarratorNoSafeFinish(datas.ScaryNarrator2_3Kazuha, function()
                self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089):DoFreeStyle(1040)
                self:NarratorNoSafeFinish(datas.ScaryNarrator2_4Kazuha, function()
                    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
                    datas.NarratorTag = 0
                    self:NpcResetForceAvatarWalk(questNpcActor)
                    self:KazuhaFollow()
                end)
            end)
        end)
    end)
end

function Quest40089:OnSubStart4008931(arg1)
    print("OnSubStart4008931")
end

function Quest40089:OnSubFinish4008931(arg1)
    print("OnSubFinish4008931")
    datas.NarratorTag = 1
    local questNpcActor = self.GetQuestNpcActor(self, npcs.Npc1032Data.alias, 40089)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.CallDelay(self, 1, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
        questNpcActor:ClearNpcFollowTask()
        questNpcActor:DoFreeStyle(1080, true, nil, true, true, false, false)
        self:NarratorNoSafeFinish(datas.ScaryNarrator3_Kazuha, function()
            local questNpcActor = self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
            datas.NarratorTag = 0
            self:NpcResetForceAvatarWalk(questNpcActor)
        end)
    end)

    self.CallDelay(self, 1.5, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        self:EnterSceneLookCamera(pos, 0, 3, true, true)
        local tbl = {x = pos.x + forward.x * 2.3, y = pos.y, z = pos.z + forward.z * 2.1}
        self:CreateLocalGadget(70290746, "1", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 1.8, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {x = avatarPos.x + avatarForward.x * 1.8, y = avatarPos.y, z = avatarPos.z + avatarForward.z * 2.1}
        self:CreateLocalGadget(70290746, "2", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 2.5, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {x = pos.x + forward.x * -2.5, y = pos.y, z = pos.z + forward.z * -2.2}
        self:CreateLocalGadget(70290746, "3", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
        questNpcActor:DoFreeStyle(1310, true, nil, true, true, false, false)
    end)

    self.CallDelay(self, 3.0, function()
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
        local avatarPos = actorUtils.GetAvatarPos()
        local avatarForward = actorUtils.GetAvatarForward()
        local pos = questNpcActor:GetPos()
        local forward = questNpcActor:GetForward()
        local tbl = {x = pos.x + forward.x * -1.8, y = pos.y, z = pos.z + forward.z * 1.6}
        self:CreateLocalGadget(70290746, "4", tbl, {x = 0.0, y = -41.096, z = 0.0}, 3, nil, nil, 0, true)
    end)

    self.CallDelay(self, 8.0, function()
        self:KazuhaFollow()
    end)
end

function Quest40089:OnSubStart4008932(arg1)
    print("OnSubStart4008932")
end

function Quest40089:OnSubFinish4008932(arg1)
    print("OnSubFinish4008932")
    datas.NarratorTag = 1
    self.CreateQuestNpc(self, arg1, npcs.Npc13011Data.id)
    self.GetQuestNpcActor(self, npcs.Npc13011Data.alias, 40089):DoFreeStyle(1280)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
    questNpcActor.ClearNpcFollowTask(questNpcActor)
    questNpcActor.DoFreeStyle(questNpcActor, 1190)
    self.NpcForceAvatarWalkByDist(self, questNpcActor, 100, 100)
    self.NarratorNoSafeFinish(self, datas.ScaryNarrator4_Kazuha, function()
        datas.NarratorTag = 0
        self:NpcRunToTask(questNpcActor, {x = -2755.953, y = 225.9276, z = -4448.933}, function()
            local n = actorUtils.GetAvatarPos() - questNpcActor:GetPos()
            questNpcActor:SteerToTask(n, 1, true, true)
            self:CallDelay(3.0, function()
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
                questNpcActor.DoFreeStyle(questNpcActor, 1173, true, nil, true, true, false, false)
                self:CallDelay(3.0, function()
                    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, false)
                end)
            end)

            self:NarratorNoSafeFinish(datas.ScaryNarrator4_2Kazuha, function()
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc1032Data.alias, 40089)
                actorMgr:GetActor("40089"):KazuhaFollow()
                self:NpcResetForceAvatarWalk(questNpcActor)
            end)
        end)
    end)
end

function Quest40089:OnSubStart4008909(arg1)
    print("OnSubStart4008909")
    self:SafeDestroyQuestNpc(npcs.Npc12945Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc13101Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc13011Data.alias, 3)
end

function Quest40089:OnSubFinish4008909(arg1)
    print("OnSubFinish4008909")
    self:ClearNarratorTask()
    self:StopNarrator()
    this:SafeDestroyQuestNpc(npcs.Npc1036Data.alias, 3)
    this:RemoveLocalGadget(70290870, "1")
end

function Quest40089:OnSubStart4008918(arg1)
    print("OnSubStart4008918")
    this:CreateQuestNpcWithTrigger("Q4008918", 4008918, 1044, 0, 10)
end

function Quest40089:OnSubFinish4008918(arg1)
    print("OnSubFinish4008918")
    this:DestroyQuestNpcActor(npcs.Npc1044Data.alias, 3)
end

function Quest40089:OnSubStart4008910(arg1)
    print("OnSubStart4008910")
    actorMgr:CreateActorWithPos("Q40089Trigger3", "Actor/Gadget/Q40089Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008910_N1044").pos, sceneData:GetDummyPoint(3, "Q4008910_N1044").rot, true, false, 3)
end

function Quest40089:OnSubFinish4008910(arg1)
    print("OnSubFinish4008910")
end

function Quest40089:OnSubStart4008911(arg1)
    print("OnSubStart4008911")
    this:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 1)
    this:RequestInteraction(npcs.Npc1044Data.alias)
end

function Quest40089:OnSubFinish4008911(arg1)
    print("OnSubFinish4008911")
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
end

function Quest40089:OnSubStart4008912(arg1)
    print("OnSubStart4008912")
    this:CreateQuestNpc(arg1, npcs.Npc12944Data.id, 1)
    actorMgr:CreateActorWithPos("Q40089Trigger4", "Actor/Gadget/Q40089Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q4008913_N12944").pos, sceneData:GetDummyPoint(3, "Q4008913_N12944").rot, true, false, 3)
end

function Quest40089:OnSubFinish4008912(arg1)
    print("OnSubFinish4008912")
end

function Quest40089:OnSubStart4008913(arg1)
    print("OnSubStart4008913")
    this:RequestInteraction(npcs.Npc12944Data.alias)
end

function Quest40089:OnSubFinish4008913(arg1)
    print("OnSubFinish4008913")
    self:SafeDestroyQuestNpc(npcs.Npc12944Data.alias, 3)
end

function Quest40089:OnSubStart4008933(arg1)
    print("OnSubStart4008933")
end

function Quest40089:OnSubFinish4008933(arg1)
    print("OnSubFinish4008933")
end

return Quest40089
