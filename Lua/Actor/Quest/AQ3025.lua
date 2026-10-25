require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest3025 = class("Quest3025", QuestActorProxy)
Quest3025.defaultAlias = "Quest3025"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest3025:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest3025:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["302501"] = self.OnSubStart302501,
        ["302502"] = self.OnSubStart302502,
        ["302516"] = self.OnSubStart302516,
        ["302514"] = self.OnSubStart302514,
        ["302515"] = self.OnSubStart302515,
        ["302503"] = self.OnSubStart302503,
        ["302504"] = self.OnSubStart302504,
        ["302513"] = self.OnSubStart302513,
        ["302505"] = self.OnSubStart302505,
        ["302517"] = self.OnSubStart302517,
        ["302506"] = self.OnSubStart302506,
        ["302507"] = self.OnSubStart302507,
        ["302508"] = self.OnSubStart302508,
        ["302509"] = self.OnSubStart302509,
        ["302510"] = self.OnSubStart302510,
        ["302511"] = self.OnSubStart302511,
        ["302512"] = self.OnSubStart302512
    }
end

function Quest3025:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["302501"] = self.OnSubFinish302501,
        ["302502"] = self.OnSubFinish302502,
        ["302516"] = self.OnSubFinish302516,
        ["302514"] = self.OnSubFinish302514,
        ["302515"] = self.OnSubFinish302515,
        ["302503"] = self.OnSubFinish302503,
        ["302504"] = self.OnSubFinish302504,
        ["302513"] = self.OnSubFinish302513,
        ["302505"] = self.OnSubFinish302505,
        ["302517"] = self.OnSubFinish302517,
        ["302506"] = self.OnSubFinish302506,
        ["302507"] = self.OnSubFinish302507,
        ["302508"] = self.OnSubFinish302508,
        ["302509"] = self.OnSubFinish302509,
        ["302510"] = self.OnSubFinish302510,
        ["302511"] = self.OnSubFinish302511,
        ["302512"] = self.OnSubFinish302512
    }
end

function Quest3025:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["302514"] = self.OnSubFailed302514}
end

function Quest3025:Start()
    print("Start")
end

function Quest3025:OnDestroy()
    print("OnDestroy")
end

function Quest3025:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest3025:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest3025:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12554Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12870Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12871Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12695Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12872Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12873Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12833Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12834Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12832Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4358Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12806Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12807Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12836Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12838Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12960Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12961Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12962Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12965Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4151Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4150Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4148Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4149Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4143Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4144Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4142Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4338Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4116Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4153Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12971Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12972Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12973Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12974Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12975Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12976Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12977Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12978Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4339Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4340Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4342Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4346Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4341Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4344Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4343Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4337Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data01.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4383Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4391Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12088Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4358Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4151Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4150Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4148Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4149Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4143Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4144Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4142Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4338Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4116Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4153Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4339Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4340Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4342Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4346Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4341Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4344Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4343Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4337Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4383Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4391Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q302502_NarratorTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q302503_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q302513_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q302515_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q302502N1050Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q302505N1052Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q302506_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q302508_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q302509_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q302510_Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q302512N1053Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q302516_Trigger", 3, false)
end

function Quest3025:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest3025:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest3025:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest3025:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest3025:CheckNpcDistance()
    print("CheckNpcDistance")
    local pos = self:GetQuestNpcActor(npcs.Npc12872Data.alias):GetPos()
    local avatarPos = actorUtils.GetAvatarPos()
    local dist = M.Dist(pos, avatarPos)
    if actorMgr:GetActor("3025"):GetSubQuestState(302504) == 2 then
        if 30 < dist then
            if actorUtils.IsAvatarInVehicle() == false then
                if 35 < dist then
                    self:FinishQuestID(true, 302504)
                    print("Quest 302504 failed because of losing target")
                    self:SafeDestroyQuestNpc(npcs.Npc12872Data.alias, 3)
                    self:SafeDestroyQuestNpc(npcs.Npc12873Data.alias, 3)
                else
                    self:ShowTextMapWithParam("QUEST_Message_Q1903801")
                    self:CheckGap()
                end
            end
        else
            self:CheckGap()
        end
    end
end

function Quest3025:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:GetQuestNpcActor(npcs.Npc1050Data.alias):UnSpawnAttachEx("Element_StickElectric")
    elseif arg1 == 1 then
        globalActor:ChangeWeather("BigWorld/Weather_Storm")
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 302517)
    end
end

function Quest3025:CheckGap()
    print("CheckGap")
    this:CallDelay(1, function(arg1)
        this:CheckNpcDistance()
    end)
end

function Quest3025:OnSubStart302501(arg1)
    print("OnSubStart302501")
    this:DailyNpcSafeHideSelf(npcs.Npc4358Data.alias, 1, true)
    this:CreateQuestNpcWithTrigger("Q302501_Trigger", 302501, npcs.Npc1052Data.id, 1, 10)
    this:GetQuestNpcActor(npcs.Npc1052Data.alias):SitOnChair(8010)
end

function Quest3025:OnSubFinish302501(arg1)
    print("OnSubFinish302501")
    this:LightNotifyTo(npcs.Npc4358Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest3025:OnSubStart302502(arg1)
    print("OnSubStart302502")
    this:DailyNpcSafeHideSelf(npcs.Npc4338Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4341Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4343Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4337Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4234Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q302502_NarratorTrigger", "Actor/Gadget/Q302502_NarratorTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q302502_T302502_N1050").pos, sceneData:GetDummyPoint(3, "Q302502_T302502_N1050").rot, true, false, 3)
    this:CreateQuestNpcWithTrigger("Q302502_Trigger", 302502, npcs.Npc1050Data.id, 2, 10)
end

function Quest3025:OnSubFinish302502(arg1)
    print("OnSubFinish302502")
    if actorMgr:GetActor("Q302502_NarratorTrigger") ~= nil then
        this:ActorDestroy("Q302502_NarratorTrigger")
    end

    this:LightNotifyTo(npcs.Npc4338Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4342Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4341Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4343Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4337Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4234Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest3025:OnSubStart302516(arg1)
    print("OnSubStart302516")
    this:TransmitPlayerWithTextById(arg1, 1, datas.TransmitText, 1)
    this:CreateQuestNpcWithTriggerBlack("Q302516_Trigger", 302516, npcs.Npc1052Data.id, 1, 5, 1)
end

function Quest3025:OnSubFinish302516(arg1)
    print("OnSubFinish302516")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest3025:OnSubStart302514(arg1)
    print("OnSubStart302514")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1052Data.id, 0)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1050Data.id, 0)
    this:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor("3025")
        local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1052Data.alias, 3025)
        actor:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.DehyaLeadRoute1, 10, 7, -1, function(arg1)
            local actor = actorMgr:GetActor("3025")
            local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1052Data.alias, 3025)
            actor:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.DehyaLeadRoute2, 10, 7, -1, function(arg1)
                local actor = actorMgr:GetActor("3025")
                local questNpcActor = actor:GetQuestNpcActor(npcs.Npc1052Data.alias, 3025)
                actor:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.DehyaLeadRoute3, 10, 7, -1, function(arg1)
                    local questNpcActor = actorMgr:GetActor("3025"):GetQuestNpcActor(npcs.Npc1052Data.alias, 3025)
                    if questNpcActor ~= nil then
                        questNpcActor:SyncPos(2)
                        if questNpcActor.BeFollowState == BeFollowState.FAILED then
                            return
                        end
                    end

                    actorUtils.FinishQuestID(false, 302514)
                end, nil, nil, nil, nil, nil, false)

                this:NarratorOnlyTaskByData(datas.Narrator_302507)
                print("\229\188\128\229\167\139\231\172\172\228\184\137\230\174\181\229\175\187\232\183\175")
            end, nil, nil, nil, nil, nil, false)

            this:NarratorOnlyTaskByData(datas.Narrator_302506)
            print("\229\188\128\229\167\139\231\172\172\228\186\140\230\174\181\229\175\187\232\183\175")
        end, nil, nil, nil, nil, nil, false)

        this:ActionSafeCall(function(arg1)
            this:NarratorOnlyTaskByData(datas.Narrator_302502, nil, 3025)
        end)
    end)
end

function Quest3025:OnSubFinish302514(arg1)
    print("OnSubFinish302514")
end

function Quest3025:OnSubFailed302514(arg1)
    print("OnSubFailed302514")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest3025:OnSubStart302515(arg1)
    print("OnSubStart302515")
    actorMgr:CreateActorWithPos("Q302515_Trigger", "Actor/Gadget/Q302515_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q302514_N1052_7").pos, sceneData:GetDummyPoint(3, "Q302514_N1052_7").rot, true, false, 3)
end

function Quest3025:OnSubFinish302515(arg1)
    print("OnSubFinish302515")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest3025:OnSubStart302503(arg1)
    print("OnSubStart302503")
    this:CreateQuestNpc(arg1, npcs.Npc12870Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12871Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12695Data.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4151Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4150Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4148Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4149Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4143Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4144Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4142Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4116Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4153Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc12971Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12972Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12973Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12974Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12975Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12976Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12977Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12978Data.id, 0, false, 0)
    self:ExitTailMode()
    self:EnablePlayerInput(true)
    actorMgr:CreateActorWithPos("Q302503_Trigger", "Actor/Gadget/Q302503_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q302504_Fail").pos, sceneData:GetDummyPoint(3, "Q302504_Fail").rot, true, false, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12872Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12873Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12806Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12807Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12836Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12838Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12960Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12961Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12962Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12965Data.alias, 3)
end

function Quest3025:OnSubFinish302503(arg1)
    print("OnSubFinish302503")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12870Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12871Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12971Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12972Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12973Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12974Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12975Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12976Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12977Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12978Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13068Data.alias, 3)
end

function Quest3025:OnSubStart302504(arg1)
    print("OnSubStart302504")
    this:CreateQuestNpc(arg1, npcs.Npc12872Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12873Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12806Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12807Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12836Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12838Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12960Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12961Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12962Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12965Data.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4151Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4150Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4148Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4149Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4143Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4144Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4142Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4116Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4153Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q302504_FailTrigger", "Actor/Gadget/Q302504_FailTrigger", 70900002, 0, {x = -1997.574, y = 201.39, z = 2456.885}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:ActionSafeCall(function(arg1)
        arg1:EnterTailMode(35)
        arg1:CheckNpcDistance()
    end)
end

function Quest3025:OnSubFinish302504(arg1)
    print("OnSubFinish302504")
    if actorMgr:GetActor("Q302504_FailTrigger") ~= nil then
        this:ActorDestroy("Q302504_FailTrigger")
    end

    this:NarratorOnlyTaskByData(datas.Narrator_302508, nil, 3025)
end

function Quest3025:OnSubStart302513(arg1)
    print("OnSubStart302513")
    this:CreateQuestNpc(arg1, npcs.Npc12872Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12873Data.id, 0, false, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4151Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4150Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4148Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4149Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4143Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4144Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4142Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4116Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4153Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q302513_Trigger", "Actor/Gadget/Q302513_Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q302504_guide").pos, sceneData:GetDummyPoint(3, "Q302504_guide").rot, true, false, 3)
    this:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q302505_T302505_N12695").pos, 0, 2, true, false)
end

function Quest3025:OnSubFinish302513(arg1)
    print("OnSubFinish302513")
    self:ExitTailMode()
    this:SafeDestroyQuestNpc(npcs.Npc12872Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12873Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12806Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12807Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12836Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12838Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12960Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12961Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12962Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12965Data.alias, 3)
end

function Quest3025:OnSubStart302505(arg1)
    print("OnSubStart302505")
    this:NpcCreateWithTrigger(npcs.Npc1052Data.id, 302505, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4151Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4150Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4148Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4149Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4143Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4144Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4142Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4116Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4153Data.alias, 1, true)
    this:ClearNarratorTask()
end

function Quest3025:OnSubFinish302505(arg1)
    print("OnSubFinish302505")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12695Data.alias, 3)
end

function Quest3025:OnSubStart302517(arg1)
    print("OnSubStart302517")
end

function Quest3025:OnSubFinish302517(arg1)
    print("OnSubFinish302517")
end

function Quest3025:OnSubStart302506(arg1)
    print("OnSubStart302506")
    this:CreateQuestNpc(arg1, npcs.Npc12833Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12834Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12832Data.id, 0, false, 0)
    this:LightNotifyTo(npcs.Npc4151Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4150Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4148Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4149Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4143Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4144Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4142Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4338Data.alias, 1, true)
    this:LightNotifyTo(npcs.Npc4116Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4153Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4339Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4340Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4346Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4341Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4344Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4343Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4337Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcWithTrigger("Q302506_Trigger", 302506, npcs.Npc1050Data.id, 2, 30)
    end)

    this:GetQuestNpcActor(npcs.Npc1050Data.alias):UnSpawnAttachEx("Element_StickElectric")
    if actorMgr:GetActor("Q302509_Trigger") ~= nil then
        this:ActorDestroy("Q302509_Trigger")
    end

    if actorMgr:GetActor("Q302508_Trigger") ~= nil then
        this:ActorDestroy("Q302508_Trigger")
    end

    if actorMgr:GetActor("Q302509_TighnariEffectTrigger") ~= nil then
        this:ActorDestroy("Q302509_TighnariEffectTrigger")
    end

    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
end

function Quest3025:OnSubFinish302506(arg1)
    print("OnSubFinish302506")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12833Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12834Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12832Data.alias, 3)
end

function Quest3025:OnSubStart302507(arg1)
    print("OnSubStart302507")
    this:DailyNpcSafeHideSelf(npcs.Npc4338Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4339Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4340Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4346Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4341Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4344Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4343Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4337Data.alias, 1, true)
end

function Quest3025:OnSubFinish302507(arg1)
    print("OnSubFinish302507")
end

function Quest3025:OnSubStart302508(arg1)
    print("OnSubStart302508")
    this:DailyNpcSafeHideSelf(npcs.Npc4338Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4339Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4340Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4346Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4341Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4344Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4343Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4337Data.alias, 1, true)
    this:CreateQuestNpcWithTriggerBlack("Q302508_Trigger", 302508, npcs.Npc1050Data.id, 1, 40, 1)
    actorMgr:CreateActorWithPos("Q3025TriggerWeatherProtection", "Actor/Gadget/Q3025TriggerWeatherProtection", 70900002, 0, {x = -1072.975, y = 286.839, z = 3182.443}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest3025:OnSubFinish302508(arg1)
    print("OnSubFinish302508")
    if actorMgr:GetActor("Q3025TriggerWeatherProtection") ~= nil then
        this:ActorDestroy("Q3025TriggerWeatherProtection")
    end
end

function Quest3025:OnSubStart302509(arg1)
    print("OnSubStart302509")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1052Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc4338Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4339Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4340Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4346Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4341Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4344Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4343Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4337Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcWithTrigger("Q302509_Trigger", 302509, npcs.Npc1050Data.id, 2, 10)
        this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
        actorMgr:CreateActorWithPos("Q302509_TighnariEffectTrigger", "Actor/Gadget/Q302509_TighnariEffectTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q302509_T302509_N1050").pos, sceneData:GetDummyPoint(3, "Q302509_T302509_N1050").rot, true, false, 3)
    end)

    actorMgr:CreateActorWithPos("Q3025TriggerWeatherChangeRange", "Actor/Gadget/Q3025TriggerWeatherChangeRange", 70900002, 0, {x = -1089.823, y = 286.839, z = 3191.927}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
    actorMgr:CreateActorWithPos("Q3025TriggerWeatherProtection", "Actor/Gadget/Q3025TriggerWeatherProtection", 70900002, 0, {x = -1072.975, y = 286.839, z = 3182.443}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest3025:OnSubFinish302509(arg1)
    print("OnSubFinish302509")
    if actorMgr:GetActor("Q3025TriggerWeatherProtection") ~= nil then
        this:ActorDestroy("Q3025TriggerWeatherProtection")
    end

    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest3025:OnSubStart302510(arg1)
    print("OnSubStart302510")
    this:DailyNpcSafeHideSelf(npcs.Npc4338Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4339Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4340Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4346Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4341Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4344Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4343Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4337Data.alias, 1, true)
    this:CreateQuestNpcWithTriggerBlack("Q302510_Trigger", 302510, npcs.Npc1050Data.id, 2, 8, 1)
    actorMgr:CreateActorWithPos("Q3025TriggerWeatherProtection", "Actor/Gadget/Q3025TriggerWeatherProtection", 70900002, 0, {x = -1072.975, y = 286.839, z = 3182.443}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest3025:OnSubFinish302510(arg1)
    print("OnSubFinish302510")
    globalActor:LeaveWeather()
    if actorMgr:GetActor("Q3025TriggerWeatherProtection") ~= nil then
        this:ActorDestroy("Q3025TriggerWeatherProtection")
    end

    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest3025:OnSubStart302511(arg1)
    print("OnSubStart302511")
    this:DailyNpcSafeHideSelf(npcs.Npc4338Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4339Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4340Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4346Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4341Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4344Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4343Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4337Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4234Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:ActionSafeCall(function(arg1_2)
        if this:GetQuestGlobalVar(13003) == 1 then
            this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 1)
            this:CreateLocalGadget(70710895, "0", sceneData:GetDummyPoint(3, "Q302511_Karkata").pos, sceneData:GetDummyPoint(3, "Q302511_Karkata").rot, 3, nil, nil, 0, false)
            this:GetQuestNpcActor(npcs.Npc1050Data.alias):SitOnChair(8010)
        else
            this:CreateQuestNpc(arg1, npcs.Npc1050Data01.id, 3)
            this:GetQuestNpcActor(npcs.Npc1050Data01.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
        end
    end)
end

function Quest3025:OnSubFinish302511(arg1)
    print("OnSubFinish302511")
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest3025:OnSubStart302512(arg1)
    print("OnSubStart302512")
    this:NpcCreateWithTrigger(npcs.Npc1053Data.id, 302512, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 0, false, 0)
    this:LightNotifyTo(npcs.Npc4338Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4339Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4340Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4342Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4346Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4341Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4344Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4343Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4337Data.alias, 0, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4383Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4391Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4234Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4315Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4065Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4048Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4059Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4028Data.alias, 1, true)
    self:ActionSafeCall(function(arg1_2)
        if arg1_2:GetQuestGlobalVar(13003) == 1 then
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 2)
            arg1_2:CreateLocalGadget(70710895, "0", sceneData:GetDummyPoint(3, "Q302511_Karkata").pos, sceneData:GetDummyPoint(3, "Q302511_Karkata").rot, 3, nil, nil, 0, false)
            arg1_2:GetQuestNpcActor(npcs.Npc1050Data.alias):SitOnChair(8010)
        else
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1050Data01.id, 7)
            arg1_2:GetQuestNpcActor(npcs.Npc1050Data01.alias):DoFreeStyle(4100, true, nil, true, true, false, false)
        end
    end)
end

function Quest3025:OnSubFinish302512(arg1)
    print("OnSubFinish302512")
    this:LightNotifyTo(npcs.Npc4383Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4391Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4234Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4295Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4315Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4065Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4048Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4059Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4028Data.alias, 0, true)
    this:RemoveLocalGadget(70710895, "0")
    this:SafeDestroyQuestNpc(npcs.Npc1052Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1054Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1058Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data01.alias, 3)
end

return Quest3025
