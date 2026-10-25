require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11019 = class("Quest11019", QuestActorProxy)
Quest11019.defaultAlias = "Quest11019"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest11019:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1101901"] = self.OnSubStart1101901,
        ["1101902"] = self.OnSubStart1101902,
        ["1101905"] = self.OnSubStart1101905,
        ["1101903"] = self.OnSubStart1101903,
        ["1101904"] = self.OnSubStart1101904,
        ["1101906"] = self.OnSubStart1101906,
        ["1101907"] = self.OnSubStart1101907,
        ["1101908"] = self.OnSubStart1101908,
        ["1101909"] = self.OnSubStart1101909,
        ["1101910"] = self.OnSubStart1101910,
        ["1101932"] = self.OnSubStart1101932,
        ["1101911"] = self.OnSubStart1101911,
        ["1101912"] = self.OnSubStart1101912,
        ["1101933"] = self.OnSubStart1101933,
        ["1101913"] = self.OnSubStart1101913,
        ["1101914"] = self.OnSubStart1101914,
        ["1101916"] = self.OnSubStart1101916,
        ["1101915"] = self.OnSubStart1101915,
        ["1101918"] = self.OnSubStart1101918,
        ["1101919"] = self.OnSubStart1101919,
        ["1101920"] = self.OnSubStart1101920,
        ["1101921"] = self.OnSubStart1101921,
        ["1101922"] = self.OnSubStart1101922,
        ["1101925"] = self.OnSubStart1101925,
        ["1101926"] = self.OnSubStart1101926,
        ["1101927"] = self.OnSubStart1101927,
        ["1101928"] = self.OnSubStart1101928,
        ["1101929"] = self.OnSubStart1101929,
        ["1101923"] = self.OnSubStart1101923,
        ["1101924"] = self.OnSubStart1101924,
        ["1101931"] = self.OnSubStart1101931,
        ["1101930"] = self.OnSubStart1101930
    }
end

function Quest11019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1101901"] = self.OnSubFinish1101901,
        ["1101902"] = self.OnSubFinish1101902,
        ["1101905"] = self.OnSubFinish1101905,
        ["1101903"] = self.OnSubFinish1101903,
        ["1101904"] = self.OnSubFinish1101904,
        ["1101906"] = self.OnSubFinish1101906,
        ["1101907"] = self.OnSubFinish1101907,
        ["1101908"] = self.OnSubFinish1101908,
        ["1101909"] = self.OnSubFinish1101909,
        ["1101910"] = self.OnSubFinish1101910,
        ["1101932"] = self.OnSubFinish1101932,
        ["1101911"] = self.OnSubFinish1101911,
        ["1101912"] = self.OnSubFinish1101912,
        ["1101933"] = self.OnSubFinish1101933,
        ["1101913"] = self.OnSubFinish1101913,
        ["1101914"] = self.OnSubFinish1101914,
        ["1101916"] = self.OnSubFinish1101916,
        ["1101915"] = self.OnSubFinish1101915,
        ["1101918"] = self.OnSubFinish1101918,
        ["1101919"] = self.OnSubFinish1101919,
        ["1101920"] = self.OnSubFinish1101920,
        ["1101921"] = self.OnSubFinish1101921,
        ["1101922"] = self.OnSubFinish1101922,
        ["1101925"] = self.OnSubFinish1101925,
        ["1101926"] = self.OnSubFinish1101926,
        ["1101927"] = self.OnSubFinish1101927,
        ["1101928"] = self.OnSubFinish1101928,
        ["1101929"] = self.OnSubFinish1101929,
        ["1101923"] = self.OnSubFinish1101923,
        ["1101924"] = self.OnSubFinish1101924,
        ["1101931"] = self.OnSubFinish1101931,
        ["1101930"] = self.OnSubFinish1101930
    }
end

function Quest11019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1101903"] = self.OnSubFailed1101903}
end

function Quest11019:Start()
    print("Start")
end

function Quest11019:OnDestroy()
    print("OnDestroy")
end

function Quest11019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11019:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest11019:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest11019:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest11019:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 32 then
        actorUtils.FinishQuestID(false, 1101932)
    elseif arg1 == 33 then
        actorUtils.FinishQuestID(false, 1101933)
    elseif arg1 == 22 then
        this:UnSpawn(gadgets.Gadget70710689Data.alias)
    elseif arg1 == 15 then
        globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    end
end

function Quest11019:FuncLinlangFreestyle()
    print("FuncLinlangFreestyle")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc2023Data.alias)
    questNpcActor:DoFreeStyle(1120, true, nil, true, true, true)
    questNpcActor:DoFreeStyle(1130, true, nil, true, true, true)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, true)
    questNpcActor:DoFreeStyle(1170, true, nil, true, true, true)
    questNpcActor:DoFreeStyle(1200, true, nil, true, true, true)
end

function Quest11019:CheckGap()
    print("CheckGap")
    if self.GetSubQuestState(self, 1101903) ~= 2 then
        print("\229\143\150\230\182\136 CheckGap")
        return
    else
        self.CallDelay(self, 0.5, function()
            self:CheckNpcDistance()
        end)
    end
end

function Quest11019:CheckNpcDistance()
    print("CheckNpcDistance")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12507Data.alias)
    local pos = questNpcActor:GetPos()
    local avatarPos = actorUtils.GetAvatarPos()
    local dist = M.Dist(pos, avatarPos)
    if 12 < dist then
        print("\232\173\166\231\164\186-\229\164\170\232\191\156\228\186\134")
        self:ShowTextMapWithParam("QUEST_Black_Q110190502")
        if 16 < dist then
            print("\232\183\159\228\184\162\228\186\134")
            if self:GetSubQuestState(1101903) ~= 2 then
                print("1101903~=2\239\188\140\229\143\150\230\182\136 CheckNpcDistance")
                return
            else
                questNpcActor.PatrolPosNum = 0
                questNpcActor.NarratorTag = 0
                self:StopNarrator()
                self:ClearNarratorTask()
                globalActor:StopLocalAvatar()
                self:EnablePlayerInput(false)
                self:NarratorOnlyTaskByData(datas.NarratorWithId1101903, function()
                    print("\230\137\167\232\161\140\232\182\133\232\191\156\232\183\157\231\166\187\229\188\128\232\189\166\229\143\176\232\175\141\231\154\132\229\155\158\232\176\131")
                    actorUtils.FinishQuestID(true, 1101903)
                    actorMgr:GetActor("11019"):EnablePlayerInput(true)
                end, 11019)

                self:CallDelay(5, function()
                    actorUtils.FinishQuestID(true, 1101903)
                    actorMgr:GetActor("11019"):EnablePlayerInput(true)
                end)

                return
            end
        end

        self:CallDelay(1, self.CheckGap)
    else
        self:CheckGap()
    end
end

function Quest11019:FuncCreate1101905Trigger()
    print("FuncCreate1101905Trigger")
    actorMgr:CreateActorWithPos("Q1101905Trigger", "Actor/Gadget/Q1101905Trigger", 70900002, 0, {x = -515.32, y = 212.573, z = 332.862}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest11019:FuncCreate1101905NPC1048()
    print("FuncCreate1101905NPC1048")
    this:CallDelay(1, function(arg1)
        actorMgr:CreateActorWithPos("Q1101905NPCtrigger", "Actor/Gadget/Q1101905NPCtrigger", 70900002, 0, {x = -515.32, y = 212.573, z = 332.862}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest11019:FuncFinish1101903()
    print("FuncFinish1101903")
    actorUtils.FinishQuestID(false, 1101903)
end

function Quest11019:FuncFinish1101930()
    print("FuncFinish1101930")
    actorUtils.FinishQuestID(false, 1101930)
end

function Quest11019:OnSubStart1101901(arg1)
    print("OnSubStart1101901")
    this:CreateQuestNpc(arg1, npcs.Npc2013Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12533Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2065Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2067Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1101901Trigger", "Actor/Gadget/Q1101901Trigger", 70900002, 0, {x = -508.319, y = 211.3, z = 312.314}, {x = 0.0, y = 44.501, z = 0.0}, true, false, 3)
end

function Quest11019:OnSubFinish1101901(arg1)
    print("OnSubFinish1101901")
end

function Quest11019:OnSubStart1101902(arg1)
    print("OnSubStart1101902")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2065Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2067Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q1101902Trigger", 1101902, 2013, 1, 10)
end

function Quest11019:OnSubFinish1101902(arg1)
    print("OnSubFinish1101902")
    this:SafeDestroyQuestNpc(npcs.Npc2013Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12533Data.alias, 3)
end

function Quest11019:OnSubStart1101905(arg1)
    print("OnSubStart1101905")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2023Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12498Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2065Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2067Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2091Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2025Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc2023Data.alias)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    local questVar = self:GetQuestVar(1101905, 2)
    print("questvar2 = " .. questVar)
    if questVar == 0 then
        self:FuncCreate1101905Trigger()
    elseif questVar == 1 then
        self:FuncCreate1101905NPC1048()
    end

    self:ExitTailMode()
    self:UnCallFunc(self.CheckNpcDistance)
    self:UnCallFunc(self.CheckGap)
    self:EnablePlayerInput(true)
    this:ActorDestroy("Q1101903Trigger")
end

function Quest11019:OnSubFinish1101905(arg1)
    print("OnSubFinish1101905")
    this:SafeDestroyQuestNpc(npcs.Npc12498Data.alias, 3)
    this:SetQuestVar(1101905, 2, 1)
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11019:OnSubStart1101903(arg1)
    print("OnSubStart1101903")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2065Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc2072Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc2067Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2091Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2025Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc12507Data.id, 3)
    actorMgr:CreateActorWithPos("Q1101903Trigger", "Actor/Gadget/Q1101903Trigger", 70900002, 0, {x = -507.484, y = 218.382, z = 338.394}, {x = 0.0, y = 47.315, z = 0.0}, true, false, 3)
    this:StopNarrator()
    this:ClearNarratorTask()
    self:EnterTailMode(20)
    self:CheckNpcDistance()
end

function Quest11019:OnSubFinish1101903(arg1)
    print("OnSubFinish1101903")
    this:SafeDestroyQuestNpc(npcs.Npc2072Data.alias, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc2023Data.alias)
    questNpcActor:Standby()
    questNpcActor:DoFreeStateTrigger()
    local v = this:GetQuestNpcActor(npcs.Npc12507Data.alias)
    v:Standby()
    v:DoFreeStateTrigger()
    this:LightNotifyTo(npcs.Npc2091Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2067Data.alias, 0, true)
end

function Quest11019:OnSubFailed1101903(arg1)
    print("OnSubFailed1101903")
    this:UnCallFunc(self.CheckNpcDistance)
    this:UnCallFunc(self.CheckGap)
    this:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, datas.TextmapId.id1, false, true)
    this:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12507Data.alias, 3)
end

function Quest11019:OnSubStart1101904(arg1)
    print("OnSubStart1101904")
    this:CreateQuestNpc(arg1, npcs.Npc12498Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc2065Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2067Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2091Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc2025Data.alias, 0, true)
    this:CreateQuestNpcWithTriggerBlack("Q1101904Trigger", 1101904, 1048, 1, 15, 1)
    this:StopNarrator()
    this:ClearNarratorTask()
    self:ExitTailMode()
    self:UnCallFunc(self.CheckNpcDistance)
    self:UnCallFunc(self.CheckGap)
    self:EnablePlayerInput(true)
    this:CallDelay(0.5, function(arg1)
        this:SafeDestroyQuestNpc(npcs.Npc12507Data.alias, 3)
    end)

    this:ActorDestroy("Q1101903Trigger")
end

function Quest11019:OnSubFinish1101904(arg1)
    print("OnSubFinish1101904")
    this:SafeDestroyQuestNpc(npcs.Npc2023Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12498Data.alias, 3)
end

function Quest11019:OnSubStart1101906(arg1)
    print("OnSubStart1101906")
    this:CreateQuestNpc(arg1, npcs.Npc2035Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc2034Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2095Data.alias, 1, true)
    this:CreateQuestNpcWithTriggerBlack("Q1101906Trigger", 1101906, 1048, 3, 15, 1)
end

function Quest11019:OnSubFinish1101906(arg1)
    print("OnSubFinish1101906")
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11019:OnSubStart1101907(arg1)
    print("OnSubStart1101907")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2095Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1101907Trigger", "Actor/Gadget/Q1101907Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1101906_N2035").pos, sceneData:GetDummyPoint(3, "Q1101906_N2035").rot, true, false, 3)
end

function Quest11019:OnSubFinish1101907(arg1)
    print("OnSubFinish1101907")
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11019:OnSubStart1101908(arg1)
    print("OnSubStart1101908")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc2095Data.alias, 0, true)
    actorMgr:CreateActorWithPos("Q1101908Trigger", "Actor/Gadget/Q1101908Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1101906_N2034").pos, sceneData:GetDummyPoint(3, "Q1101906_N2034").rot, true, false, 3)
end

function Quest11019:OnSubFinish1101908(arg1)
    print("OnSubFinish1101908")
    this:SafeDestroyQuestNpc(npcs.Npc2035Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11019:OnSubStart1101909(arg1)
    print("OnSubStart1101909")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q1101909Trigger", 1101909, 2049, 1, 7)
    this:GetQuestNpcActor(npcs.Npc2049Data.alias):DoFreeStyle(5020, true, nil, true, true, false)
end

function Quest11019:OnSubFinish1101909(arg1)
    print("OnSubFinish1101909")
    this:SafeDestroyQuestNpc(npcs.Npc2034Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2049Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11019:OnSubStart1101910(arg1)
    print("OnSubStart1101910")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    this:CreateQuestNpcWithTriggerBlack("Q1101910Trigger", 1101910, 1048, 1, 4, 1)
end

function Quest11019:OnSubFinish1101910(arg1)
    print("OnSubFinish1101910")
end

function Quest11019:OnSubStart1101932(arg1)
    print("OnSubStart1101932")
    this:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101932(arg1)
    print("OnSubFinish1101932")
end

function Quest11019:OnSubStart1101911(arg1)
    print("OnSubStart1101911")
    this:CreateQuestNpc(arg1, npcs.Npc1048Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc12403Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc1048Data.alias):SitOnChair(8013)
end

function Quest11019:OnSubFinish1101911(arg1)
    print("OnSubFinish1101911")
    this:SafeDestroyQuestNpc(npcs.Npc12403Data.alias, 3)
end

function Quest11019:OnSubStart1101912(arg1)
    print("OnSubStart1101912")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q1101912Trigger", 1101912, 12501, 1, 15)
    this:GetQuestNpcActor(npcs.Npc1048Data.alias):SitOnChair(8013)
end

function Quest11019:OnSubFinish1101912(arg1)
    print("OnSubFinish1101912")
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12501Data.alias, 3)
    this:CallDelay(1, function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId1101905, nil, 11019)
    end)
end

function Quest11019:OnSubStart1101933(arg1)
    print("OnSubStart1101933")
    this:DailyNpcSafeHideSelf(npcs.Npc2036Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101933(arg1)
    print("OnSubFinish1101933")
end

function Quest11019:OnSubStart1101913(arg1)
    print("OnSubStart1101913")
    this:CreateQuestNpc(arg1, npcs.Npc2104Data.id, 2)
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2105Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc2036Data.alias, 0, true)
    actorMgr:CreateActorWithPos("Q1101913Trigger", "Actor/Gadget/Q1101913Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1101913_N1048").pos, sceneData:GetDummyPoint(3, "Q1101913_N1048").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1101912FinishTrigger", "Actor/Gadget/Q1101912FinishTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1101913").pos, sceneData:GetDummyPoint(3, "guide_Q1101913").rot, true, false, 3)
end

function Quest11019:OnSubFinish1101913(arg1)
    print("OnSubFinish1101913")
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
    this:ActorDestroy("Q1101912FinishTrigger")
    globalActor:LeaveAllWeather()
end

function Quest11019:OnSubStart1101914(arg1)
    print("OnSubStart1101914")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2105Data.alias, 1, true)
    this:UnSpawn(gadgets.Gadget70710681Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget70710681Data.id, 1, 0)
end

function Quest11019:OnSubFinish1101914(arg1)
    print("OnSubFinish1101914")
    this:UnSpawn(gadgets.Gadget70710681Data.alias)
end

function Quest11019:OnSubStart1101916(arg1)
    print("OnSubStart1101916")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2105Data.alias, 1, true)
    this:CreateQuestNpcWithTriggerBlack("Q1101916Trigger", 1101916, 1048, 1, 20, 1)
end

function Quest11019:OnSubFinish1101916(arg1)
    print("OnSubFinish1101916")
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11019:OnSubStart1101915(arg1)
    print("OnSubStart1101915")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2105Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101915(arg1)
    print("OnSubFinish1101915")
    this:SafeDestroyQuestNpc(npcs.Npc2104Data.alias, 3)
    globalActor:LeaveAllWeather()
end

function Quest11019:OnSubStart1101918(arg1)
    print("OnSubStart1101918")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2105Data.alias, 1, true)
    this:UnSpawn(gadgets.Gadget70710689Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget70710689Data.id, 1, 0)
    actorMgr:CreateActorWithPos("Q1101918Trigger", "Actor/Gadget/Q1101918Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1101918").pos, sceneData:GetDummyPoint(3, "guide_Q1101918").rot, true, false, 3)
end

function Quest11019:OnSubFinish1101918(arg1)
    print("OnSubFinish1101918")
    this:UnSpawn(gadgets.Gadget70710689Data.alias)
    this:NarratorOnlyTaskByData(datas.NarratorWithId1101907, nil, 11019)
end

function Quest11019:OnSubStart1101919(arg1)
    print("OnSubStart1101919")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc2105Data.alias, 0, true)
    this:UnSpawn(gadgets.Gadget70710689Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget70710689Data.id, 1, 0)
    actorMgr:CreateActorWithPos("Q1101919Trigger", "Actor/Gadget/Q1101919Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1101919").pos, sceneData:GetDummyPoint(3, "guide_Q1101919").rot, true, false, 3)
end

function Quest11019:OnSubFinish1101919(arg1)
    print("OnSubFinish1101919")
    this:UnSpawn(gadgets.Gadget70710689Data.alias)
    this:NarratorOnlyTaskByData(datas.NarratorWithId1101908, nil, 11019)
end

function Quest11019:OnSubStart1101920(arg1)
    print("OnSubStart1101920")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:UnSpawn(gadgets.Gadget70710689Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget70710689Data.id, 1, 0)
    actorMgr:CreateActorWithPos("Q1101920Trigger", "Actor/Gadget/Q1101920Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1101920").pos, sceneData:GetDummyPoint(3, "guide_Q1101920").rot, true, false, 3)
end

function Quest11019:OnSubFinish1101920(arg1)
    print("OnSubFinish1101920")
    this:UnSpawn(gadgets.Gadget70710689Data.alias)
    this:NarratorOnlyTaskByData(datas.NarratorWithId1101909, nil, 11019)
end

function Quest11019:OnSubStart1101921(arg1)
    print("OnSubStart1101921")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:UnSpawn(gadgets.Gadget70710689Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget70710689Data.id, 1, 0)
    actorMgr:CreateActorWithPos("Q1101921Trigger", "Actor/Gadget/Q1101921Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "guide_Q1101921").pos, sceneData:GetDummyPoint(3, "guide_Q1101921").rot, true, false, 3)
end

function Quest11019:OnSubFinish1101921(arg1)
    print("OnSubFinish1101921")
    this:UnSpawn(gadgets.Gadget70710689Data.alias)
end

function Quest11019:OnSubStart1101922(arg1)
    print("OnSubStart1101922")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:UnSpawn(gadgets.Gadget70710689Data.alias)
    this:DelaySpawnGadget(arg1, gadgets.Gadget70710689Data.id, 1, 0)
    this:CreateQuestNpcWithTriggerBlack("Q1101922Trigger", 1101922, 1048, 1, 10, 1)
end

function Quest11019:OnSubFinish1101922(arg1)
    print("OnSubFinish1101922")
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
    this:UnSpawn(gadgets.Gadget70710689Data.alias)
end

function Quest11019:OnSubStart1101925(arg1)
    print("OnSubStart1101925")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101925(arg1)
    print("OnSubFinish1101925")
end

function Quest11019:OnSubStart1101926(arg1)
    print("OnSubStart1101926")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101926(arg1)
    print("OnSubFinish1101926")
end

function Quest11019:OnSubStart1101927(arg1)
    print("OnSubStart1101927")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101927(arg1)
    print("OnSubFinish1101927")
end

function Quest11019:OnSubStart1101928(arg1)
    print("OnSubStart1101928")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101928(arg1)
    print("OnSubFinish1101928")
end

function Quest11019:OnSubStart1101929(arg1)
    print("OnSubStart1101929")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101929(arg1)
    print("OnSubFinish1101929")
end

function Quest11019:OnSubStart1101923(arg1)
    print("OnSubStart1101923")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101923(arg1)
    print("OnSubFinish1101923")
end

function Quest11019:OnSubStart1101924(arg1)
    print("OnSubStart1101924")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:CreateQuestNpcWithTriggerBlack("Q1101924Trigger", 1101924, 1048, 1, 15, 1)
end

function Quest11019:OnSubFinish1101924(arg1)
    print("OnSubFinish1101924")
    this:SafeDestroyQuestNpc(npcs.Npc1048Data.alias, 3)
end

function Quest11019:OnSubStart1101931(arg1)
    print("OnSubStart1101931")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2095Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101931(arg1)
    print("OnSubFinish1101931")
end

function Quest11019:OnSubStart1101930(arg1)
    print("OnSubStart1101930")
    this:DailyNpcSafeHideSelf(npcs.Npc2003Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2029Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc2095Data.alias, 1, true)
end

function Quest11019:OnSubFinish1101930(arg1)
    print("OnSubFinish1101930")
end

return Quest11019
