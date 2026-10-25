require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12034 = class("Quest12034", QuestActorProxy)
Quest12034.defaultAlias = "Quest12034"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest12034:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest12034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1203401"] = self.OnSubStart1203401,
        ["1203402"] = self.OnSubStart1203402,
        ["1203403"] = self.OnSubStart1203403,
        ["1203404"] = self.OnSubStart1203404,
        ["1203405"] = self.OnSubStart1203405,
        ["1203406"] = self.OnSubStart1203406,
        ["1203407"] = self.OnSubStart1203407,
        ["1203408"] = self.OnSubStart1203408,
        ["1203409"] = self.OnSubStart1203409,
        ["1203410"] = self.OnSubStart1203410,
        ["1203411"] = self.OnSubStart1203411,
        ["1203412"] = self.OnSubStart1203412,
        ["1203413"] = self.OnSubStart1203413,
        ["1203414"] = self.OnSubStart1203414
    }
end

function Quest12034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1203401"] = self.OnSubFinish1203401,
        ["1203402"] = self.OnSubFinish1203402,
        ["1203403"] = self.OnSubFinish1203403,
        ["1203404"] = self.OnSubFinish1203404,
        ["1203405"] = self.OnSubFinish1203405,
        ["1203406"] = self.OnSubFinish1203406,
        ["1203407"] = self.OnSubFinish1203407,
        ["1203408"] = self.OnSubFinish1203408,
        ["1203409"] = self.OnSubFinish1203409,
        ["1203410"] = self.OnSubFinish1203410,
        ["1203411"] = self.OnSubFinish1203411,
        ["1203412"] = self.OnSubFinish1203412,
        ["1203413"] = self.OnSubFinish1203413,
        ["1203414"] = self.OnSubFinish1203414
    }
end

function Quest12034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1203413"] = self.OnSubFailed1203413}
end

function Quest12034:Start()
    print("Start")
end

function Quest12034:OnDestroy()
    print("OnDestroy")
end

function Quest12034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest12034:NormalCheck()
    print("NormalCheck")
    this:CheckDistance()
end

function Quest12034:CheckDistance()
    print("CheckDistance")
    if self:GetSubQuestState(1203413) == 2 then
        local avatarPos = actorUtils.GetAvatarPos()
        local pos = self:GetQuestNpcActor(npcs.Npc12521Data.alias):GetPos()
        local dist = M.Dist(pos, avatarPos)
        if 20 < dist then
            self:ShowTextMapWithParam("QUEST_Message_Q12034")
        end

        if 25 < dist then
            self:ClearNarratorTask()
            self:StopNarrator()
            self:FinishQuestID(true, 1203413)
            self:GetQuestNpcActor(npcs.Npc12521Data.alias):DestroyWithDither(false, 2)
            self:NarratorOnlyTaskByData(datas.NarratorFailFar, 12034)
        else
            self:CallDelay(1, self.NormalCheck)
        end
    end
end

function Quest12034:OnSubStart1203401(arg1)
    print("OnSubStart1203401")
end

function Quest12034:OnSubFinish1203401(arg1)
    print("OnSubFinish1203401")
end

function Quest12034:OnSubStart1203402(arg1)
    print("OnSubStart1203402")
end

function Quest12034:OnSubFinish1203402(arg1)
    print("OnSubFinish1203402")
end

function Quest12034:OnSubStart1203403(arg1)
    print("OnSubStart1203403")
    self:ActionSafeCall(function(arg1_2)
        actorMgr:CreateActorWithPos("Q12034Trigger1", "Actor/Gadget/Q12034Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203403_guide").pos, sceneData:GetDummyPoint(3, "Q1203403_guide").rot, true, false, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12485Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12486Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3173Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12485Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
        arg1_2:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    end)
end

function Quest12034:OnSubFinish1203403(arg1)
    print("OnSubFinish1203403")
end

function Quest12034:OnSubStart1203404(arg1)
    print("OnSubStart1203404")
    actorMgr:CreateActorWithPos("Q12034Trigger", "Actor/Gadget/Q12034Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203404_guide").pos, sceneData:GetDummyPoint(3, "Q1203404_guide").rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc12485Data.alias):DoFreeStyle(4190, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
end

function Quest12034:OnSubFinish1203404(arg1)
    print("OnSubFinish1203404")
    self:DestroyQuestNpcActor(npcs.Npc1047Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12486Data.alias, 3)
end

function Quest12034:OnSubStart1203405(arg1)
    print("OnSubStart1203405")
    self:GetQuestNpcActor(npcs.Npc12485Data.alias):DoFreeStyle(1270, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
end

function Quest12034:OnSubFinish1203405(arg1)
    print("OnSubFinish1203405")
    self:GetQuestNpcActor(npcs.Npc12485Data.alias):DoFreeStateTrigger()
end

function Quest12034:OnSubStart1203406(arg1)
    print("OnSubStart1203406")
    self:CallDelay(2, function(arg1)
        arg1:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
            arg1:RequestInteraction(npcs.Npc12485Data.alias)
        end, nil, nil, "", false, true)
    end)

    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
end

function Quest12034:OnSubFinish1203406(arg1)
    print("OnSubFinish1203406")
    self:DestroyQuestNpcActor(npcs.Npc12532Data.alias, 3)
end

function Quest12034:OnSubStart1203407(arg1)
    print("OnSubStart1203407")
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
end

function Quest12034:OnSubFinish1203407(arg1)
    print("OnSubFinish1203407")
end

function Quest12034:OnSubStart1203408(arg1)
    print("OnSubStart1203408")
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
end

function Quest12034:OnSubFinish1203408(arg1)
    print("OnSubFinish1203408")
end

function Quest12034:OnSubStart1203409(arg1)
    print("OnSubStart1203409")
    actorMgr:CreateActorWithPos("Q12034Trigger6", "Actor/Gadget/Q12034Trigger6", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203403_N3016").pos, sceneData:GetDummyPoint(3, "Q1203403_N3016").rot, true, false, 3)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
end

function Quest12034:OnSubFinish1203409(arg1)
    print("OnSubFinish1203409")
    self:DestroyQuestNpcActor(npcs.Npc12485Data.alias, 3)
end

function Quest12034:OnSubStart1203410(arg1)
    print("OnSubStart1203410")
    self:CreateQuestNpc(arg1, npcs.Npc12528Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12529Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12523Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12451Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3023Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3005Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12487Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc12488Data.id, 0)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3023Data.alias)
    questNpcActor:DoFreeStyle(1141, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc3005Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12487Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q12034Trigger5", "Actor/Gadget/Q12034Trigger5", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203410_N3023").pos, sceneData:GetDummyPoint(3, "Q1203410_N3023").rot, true, false, 3)
end

function Quest12034:OnSubFinish1203410(arg1)
    print("OnSubFinish1203410")
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator1, nil, 12034)
        arg1:GetQuestNpcActor(npcs.Npc3023Data.alias):DisableInteeHeadCtrl(false)
        arg1:GetQuestNpcActor(npcs.Npc3005Data.alias):DisableInteeHeadCtrl(false)
    end)
end

function Quest12034:OnSubStart1203411(arg1)
    print("OnSubStart1203411")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3054Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc3016Data.alias, 1, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12487Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc3023Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc3054Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    end)
end

function Quest12034:OnSubFinish1203411(arg1)
    print("OnSubFinish1203411")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc3054Data.alias):DoFreeStateTrigger()
        arg1:DestroyQuestNpcActor(npcs.Npc3054Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3005Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3023Data.alias, 3)
    end)
end

function Quest12034:OnSubStart1203412(arg1)
    print("OnSubStart1203412")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:ExitTailMode()
        arg1_2:NotifyTo(npcs.Npc3054Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q12034Trigger2", "Actor/Gadget/Q12034Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203412_N1047").pos, sceneData:GetDummyPoint(3, "Q1203412_N1047").rot, true, false, 3)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12489Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12491Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3037Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3036Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12492Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12545Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc12546Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc3016Data.alias, 1, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12489Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc12491Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc3037Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc3036Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:NotifyTo(npcs.Npc3042Data.alias, 1, true)
        arg1_2:NotifyTo(npcs.Npc3047Data.alias, 1, true)
        if arg1_2:GetQuestVar(1203412, 1) == 0 then
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12448Data.id, 0)
        end

        local actor = actorMgr:GetActor("Npc12133")
        if actor ~= nil then
            actor:EnableInteraction(false)
        end

        local v = actorMgr:GetActor("Npc12134")
        if v ~= nil then
            v:EnableInteraction(false)
        end

        arg1_2:GetQuestNpcActor(npcs.Npc12487Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
        arg1_2:GetQuestNpcActor(npcs.Npc3023Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3041Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3035Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3049Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3050Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3048Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3052Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3051Data.id, 0)
        arg1_2:NotifyTo(npcs.Npc3066Data.alias, 1, true)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3005Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc3023Data.id, 0)
    end)
end

function Quest12034:OnSubFinish1203412(arg1)
    print("OnSubFinish1203412")
    self:DestroyQuestNpcActor(npcs.Npc1047Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12448Data.alias, 3)
end

function Quest12034:OnSubStart1203413(arg1)
    print("OnSubStart1203413")
    self:CreateQuestNpc(arg1, npcs.Npc3027Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3028Data.id, 0)
    self:CreateQuestNpc(arg1, npcs.Npc3044Data.id, 0)
    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q12034Trigger3", "Actor/Gadget/Q12034Trigger3", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203413Fail").pos, sceneData:GetDummyPoint(3, "Q1203413Fail").rot, true, false, 3)
    self:EnterTailMode(11)
    local questNpc = self:CreateQuestNpc(arg1, npcs.Npc12521Data.id, 0)
    self:CheckDistance()
    self:ClearNarratorTask()
    self:StopNarrator()
    local actor = actorMgr:GetActor("Npc12133")
    if actor ~= nil then
        actor:EnableInteraction(false)
    end

    local v = actorMgr:GetActor("Npc12134")
    if v ~= nil then
        v:EnableInteraction(false)
    end

    self:GetQuestNpcActor(npcs.Npc12521Data.alias):EnableInteraction(false)
    self:GetQuestNpcActor(npcs.Npc12489Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12491Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc3037Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc3036Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3042Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3047Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12487Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc3023Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
end

function Quest12034:OnSubFinish1203413(arg1)
    print("OnSubFinish1203413")
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        arg1:ExitTailMode()
        arg1:ClearNarratorTask()
        arg1:StopNarrator()
        arg1:DestroyQuestNpcActor(npcs.Npc3041Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3028Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3027Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3035Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3049Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3050Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3048Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3052Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3051Data.alias, 3)
        local actor = actorMgr:GetActor("Npc12133")
        if actor ~= nil then
            actor:EnableInteraction(true)
        end

        local v = actorMgr:GetActor("Npc12134")
        if v ~= nil then
            v:EnableInteraction(true)
        end

        arg1:DestroyQuestNpcActor(npcs.Npc3044Data.alias, 3)
        arg1:GetQuestNpcActor(npcs.Npc12521Data.alias):EnableInteraction(true)
        arg1:DestroyQuestNpcActor(npcs.Npc12521Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc3042Data.alias, 0, true)
    end, nil, nil, "", false, true)
end

function Quest12034:OnSubFailed1203413(arg1)
    print("OnSubFailed1203413")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:DestroyQuestNpcActor(npcs.Npc3044Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3028Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3027Data.alias, 3)
    self:ExitTailMode()
    self:SetQuestVar(1203413, 1, 1)
    self:GetQuestNpcActor(npcs.Npc12521Data.alias):EnableInteraction(true)
end

function Quest12034:OnSubStart1203414(arg1)
    print("OnSubStart1203414")
    self:NotifyTo(npcs.Npc3016Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3054Data.alias, 1, true)
    self:ClearNarratorTask()
    self:StopNarrator()
    local questVar = self:GetQuestVar(1203414, 0)
    if questVar == 0 then
        self:RequestInteraction(npcs.Npc12492Data.alias)
    elseif questVar == 1 then
        actorMgr:CreateActorWithPos("Q12034Trigger4", "Actor/Gadget/Q12034Trigger4", 70900002, 0, sceneData:GetDummyPoint(3, "Q1203414_N1047").pos, sceneData:GetDummyPoint(3, "Q1203414_N1047").rot, true, false, 3)
    end

    self:NotifyTo(npcs.Npc3066Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12489Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc12491Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc3037Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc3036Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:NotifyTo(npcs.Npc3047Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc12487Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:GetQuestNpcActor(npcs.Npc3023Data.alias):DoFreeStyle(1170, true, nil, true, true, false)
end

function Quest12034:OnSubFinish1203414(arg1)
    print("OnSubFinish1203414")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc12491Data.alias):DoFreeStateTrigger()
        arg1:GetQuestNpcActor(npcs.Npc12487Data.alias):DoFreeStateTrigger()
        arg1:GetQuestNpcActor(npcs.Npc12489Data.alias):DoFreeStateTrigger()
        arg1:LightNotifyTo(npcs.Npc3066Data.alias, 0, true)
        arg1:GetQuestNpcActor(npcs.Npc3023Data.alias):DoFreeStateTrigger()
        arg1:DestroyQuestNpcActor(npcs.Npc12529Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12523Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12451Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12448Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3023Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3005Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12487Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12488Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12489Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12491Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3037Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3036Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12492Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc3173Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12545Data.alias, 3)
        arg1:DestroyQuestNpcActor(npcs.Npc12546Data.alias, 3)
        arg1:LightNotifyTo(npcs.Npc3016Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc3054Data.alias, 0, true)
        arg1:LightNotifyTo(npcs.Npc3047Data.alias, 0, true)
        arg1:GetQuestNpcActor(npcs.Npc3037Data.alias):DoFreeStateTrigger()
        arg1:GetQuestNpcActor(npcs.Npc3036Data.alias):DoFreeStateTrigger()
        arg1:DestroyQuestNpcActor(npcs.Npc12528Data.alias, 3)
    end)
end

return Quest12034
