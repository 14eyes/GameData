require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13014 = class("Quest13014", QuestActorProxy)
Quest13014.defaultAlias = "Quest13014"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest13014:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest13014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1301401"] = self.OnSubStart1301401,
        ["1301427"] = self.OnSubStart1301427,
        ["1301402"] = self.OnSubStart1301402,
        ["1301403"] = self.OnSubStart1301403,
        ["1301404"] = self.OnSubStart1301404,
        ["1301423"] = self.OnSubStart1301423,
        ["1301424"] = self.OnSubStart1301424,
        ["1301405"] = self.OnSubStart1301405,
        ["1301406"] = self.OnSubStart1301406,
        ["1301407"] = self.OnSubStart1301407,
        ["1301408"] = self.OnSubStart1301408,
        ["1301409"] = self.OnSubStart1301409,
        ["1301430"] = self.OnSubStart1301430,
        ["1301425"] = self.OnSubStart1301425,
        ["1301428"] = self.OnSubStart1301428,
        ["1301420"] = self.OnSubStart1301420,
        ["1301410"] = self.OnSubStart1301410,
        ["1301411"] = self.OnSubStart1301411,
        ["1301412"] = self.OnSubStart1301412,
        ["1301429"] = self.OnSubStart1301429,
        ["1301421"] = self.OnSubStart1301421,
        ["1301413"] = self.OnSubStart1301413,
        ["1301422"] = self.OnSubStart1301422,
        ["1301414"] = self.OnSubStart1301414,
        ["1301426"] = self.OnSubStart1301426,
        ["1301415"] = self.OnSubStart1301415,
        ["1301416"] = self.OnSubStart1301416,
        ["1301417"] = self.OnSubStart1301417,
        ["1301418"] = self.OnSubStart1301418,
        ["1301419"] = self.OnSubStart1301419
    }
end

function Quest13014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1301401"] = self.OnSubFinish1301401,
        ["1301427"] = self.OnSubFinish1301427,
        ["1301402"] = self.OnSubFinish1301402,
        ["1301403"] = self.OnSubFinish1301403,
        ["1301404"] = self.OnSubFinish1301404,
        ["1301423"] = self.OnSubFinish1301423,
        ["1301424"] = self.OnSubFinish1301424,
        ["1301405"] = self.OnSubFinish1301405,
        ["1301406"] = self.OnSubFinish1301406,
        ["1301407"] = self.OnSubFinish1301407,
        ["1301408"] = self.OnSubFinish1301408,
        ["1301409"] = self.OnSubFinish1301409,
        ["1301430"] = self.OnSubFinish1301430,
        ["1301425"] = self.OnSubFinish1301425,
        ["1301428"] = self.OnSubFinish1301428,
        ["1301420"] = self.OnSubFinish1301420,
        ["1301410"] = self.OnSubFinish1301410,
        ["1301411"] = self.OnSubFinish1301411,
        ["1301412"] = self.OnSubFinish1301412,
        ["1301429"] = self.OnSubFinish1301429,
        ["1301421"] = self.OnSubFinish1301421,
        ["1301413"] = self.OnSubFinish1301413,
        ["1301422"] = self.OnSubFinish1301422,
        ["1301414"] = self.OnSubFinish1301414,
        ["1301426"] = self.OnSubFinish1301426,
        ["1301415"] = self.OnSubFinish1301415,
        ["1301416"] = self.OnSubFinish1301416,
        ["1301417"] = self.OnSubFinish1301417,
        ["1301418"] = self.OnSubFinish1301418,
        ["1301419"] = self.OnSubFinish1301419
    }
end

function Quest13014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13014:Start()
    print("Start")
end

function Quest13014:OnDestroy()
    print("OnDestroy")
end

function Quest13014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13014:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13014:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest13014:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest13014:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest13014:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13014:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest13014:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    print("Dialogue refresh groupfight")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        actor:FinishQuestID(false, 1301427)
    end
end

function Quest13014:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    print("Accept messages from ability system")
    if arg1.valueString == "FollowNpcGadget_Moesis" then
        actorUtils.FinishQuestID(false, 1301414)
    else
        if arg1.valueString == "FollowNpcGadget_Deby" then
            actorUtils.FinishQuestID(false, 1301409)
        end
    end
end

function Quest13014:OnSubStart1301401(arg1)
    print("OnSubStart1301401")
    self:NpcCreate(arg1, npcs.Npc12841Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12842Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12843Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12840Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12967Data.id, 0)
    actorMgr:CreateActorWithPos("Q13014TriggerEventB", "Actor/Gadget/Q13014TriggerEventB", 70900002, 0, {x = -198.589, y = 200.737, z = 2966.31}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12841Data.alias)
    questNpcActor:DoFreeStyle(4100, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Angry01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB04", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12842Data.alias):DoFreeStyle(1180, true, nil, true, true, true, true)
    self:GetQuestNpcActor(npcs.Npc12840Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
    self:GetQuestNpcActor(npcs.Npc12967Data.alias):DoFreeStyle(1050, true, nil, true, true, true, true)
end

function Quest13014:OnSubFinish1301401(arg1)
    print("OnSubFinish1301401")
    self:NpcDestroy(npcs.Npc1056Data.alias, 3)
    self:ActorDestroy("Q13014TriggerEventB")
end

function Quest13014:OnSubStart1301427(arg1)
    print("OnSubStart1301427")
end

function Quest13014:OnSubFinish1301427(arg1)
    print("OnSubFinish1301427")
end

function Quest13014:OnSubStart1301402(arg1)
    print("OnSubStart1301402")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12841Data.alias)
    questNpcActor:DoFreeStyle(4100, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Angry01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB04", 0, false, true, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest13014:OnSubFinish1301402(arg1)
    print("OnSubFinish1301402")
end

function Quest13014:OnSubStart1301403(arg1)
    print("OnSubStart1301403")
    actorMgr:CreateActorWithPos("Q13014TriggerEventBEnd", "Actor/Gadget/Q13014TriggerEventBEnd", 70900002, 0, {x = -218.563, y = 200.737, z = 2970.392}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12841Data.alias)
    questNpcActor:DoFreeStyle(4100, true, nil, true, true, false, false)
    questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Angry01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB04", 0, false, true, true)
    self:GetQuestNpcActor(npcs.Npc12842Data.alias):DoFreeStyle(1180, true, nil, true, true, true, true)
    self:GetQuestNpcActor(npcs.Npc12840Data.alias):DoFreeStyle(1160, true, nil, true, true, true, true)
    self:GetQuestNpcActor(npcs.Npc12967Data.alias):DoFreeStyle(1050, true, nil, true, true, true, true)
end

function Quest13014:OnSubFinish1301403(arg1)
    print("OnSubFinish1301403")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12841Data.alias)
    self:NpcDestroy(npcs.Npc12840Data.alias, 3)
end

function Quest13014:OnSubStart1301404(arg1)
    print("OnSubStart1301404")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12843Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12897Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12895Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12897Data.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    local v = self:GetQuestNpcActor(npcs.Npc12895Data.alias)
    if v ~= nil then
        v:DoFreeStyle(4121, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
        v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    self:ActionSafeCall(function(arg1)
        arg1:CreateQuestNpcWithTriggerBlack("Q1301404", 1301404, npcs.Npc12841Data.id, 0, 10, 2)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12843Data.alias)
        if questNpcActor ~= nil then
            questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
            questNpcActor:DisableInteeHeadCtrl(true)
            questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        end
    end)

    self:NpcCreate(arg1, npcs.Npc12842Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12967Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc12839Data.id, 0)
end

function Quest13014:OnSubFinish1301404(arg1)
    print("OnSubFinish1301404")
end

function Quest13014:OnSubStart1301423(arg1)
    print("OnSubStart1301423")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12839Data.alias)
        questNpcActor:Standby()
        questNpcActor:SetWalkSpeedRatio(0.8)
        arg1:NpcForceAvatarWalkByDist(arg1:GetQuestNpcActor(npcs.Npc12839Data.alias, 13014), 2.5, 4.5)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:EnableInteraction(false)
        arg1:NpcBeFollowTaskByRoutePointsWithDiffLen(arg1:GetQuestNpcActor(npcs.Npc12839Data.alias, 13014), datas.RoutePointsData, 30, 3, -1, function(arg1)
            arg1:SyncPos(2)
            if arg1.BeFollowState == BeFollowState.FAILED then
                return
            end

            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q13014PeteRoute5").rot))
            arg1:ClearSteerToAutonomyTask()
            actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(false, 1301423)
        end, nil, nil, function(arg1)
            print("OnMovePause")
            arg1:TryPauseCurAutoNarrator()
            arg1:Standby()
            arg1:DisableInteeHeadCtrl(false)
            local avatarPos = actorUtils.GetAvatarPos()
            local pos = arg1:GetPos()
            local tbl = {x = avatarPos.x - pos.x, y = avatarPos.y - pos.y, z = avatarPos.z - pos.z}
            local actor = actorMgr:GetActor("13014")
            arg1:SteerToAutonomyTask(tbl, 1, true, true)
        end, function(arg1)
            print("OnMoveResume")
            arg1:ClearSteerToAutonomyTask()
            arg1:TryResumeCurAutoNarrator()
            arg1:DisableInteeHeadCtrl(true)
            arg1:ResumeMove()
        end, nil, true)

        arg1:NarratorOnlyTaskByData(datas.NarratorWithIdPreDream)
    end)

    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12843Data.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    local v = self:GetQuestNpcActor(npcs.Npc12897Data.alias)
    if v ~= nil then
        v:DoFreeStyle(4121, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
        v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12895Data.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:DoFreeStyle(4121, true, nil, true, true, false, true)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end
end

function Quest13014:OnSubFinish1301423(arg1)
    print("OnSubFinish1301423")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12839Data.alias)
    questNpcActor:Standby()
    self:NpcResetForceAvatarWalk(self:GetQuestNpcActor(npcs.Npc12839Data.alias, 13014))
    questNpcActor:DisableInteeHeadCtrl(false)
    questNpcActor:EnableInteraction(true)
end

function Quest13014:OnSubStart1301424(arg1)
    print("OnSubStart1301424")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12843Data.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    local v = self:GetQuestNpcActor(npcs.Npc12897Data.alias)
    if v ~= nil then
        v:DoFreeStyle(4121, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
        v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12895Data.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:DoFreeStyle(4121, true, nil, true, true, false, true)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end
end

function Quest13014:OnSubFinish1301424(arg1)
    print("OnSubFinish1301424")
    self:StopNarrator()
    self:ClearNarratorTask()
end

function Quest13014:OnSubStart1301405(arg1)
    print("OnSubStart1301405")
    self:ActionSafeCall(function(arg1)
        globalActor:PlayerEnterDungeon(733, 1166, true, nil, 0)
    end)

    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12843Data.alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(4121, true, nil, true, true, false, true)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    local v = self:GetQuestNpcActor(npcs.Npc12897Data.alias)
    if v ~= nil then
        v:DoFreeStyle(4121, true, nil, true, true, false, true)
        v:DisableInteeHeadCtrl(true)
        v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12895Data.alias)
    if questNpcActor2 ~= nil then
        questNpcActor2:DoFreeStyle(4121, true, nil, true, true, false, true)
        questNpcActor2:DisableInteeHeadCtrl(true)
        questNpcActor2:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end

    self:NpcDestroy(npcs.Npc12845Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12844Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12840Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12846Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12847Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12850Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12849Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12853Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12963Data.script, 20165)
    self:NpcDestroy(npcs.Npc12964Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12851Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12852Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12848Data.alias, 20165)
    self:ActorDestroy("Q1301406")
    self:ActorDestroy("Q1301408")
    self:ActorDestroy("Q13014TriggerDreamAPre")
    self:ActorDestroy("Q1301420")
    self:ActorDestroy("Q1301411")
    self:ActorDestroy("Q13014TriggerDreamB")
    self:ActorDestroy("Q1301421")
    self:ActorDestroy("Q1301422")
    self:ActorDestroy("Q13014TriggerDreamCEnd")
end

function Quest13014:OnSubFinish1301405(arg1)
    print("OnSubFinish1301405")
    self:NpcDestroy(npcs.Npc12841Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12843Data.alias)
    self:NpcDestroy(npcs.Npc12967Data.alias, 3)
    self:NpcDestroy(npcs.Npc12839Data.alias, 3)
    self:NpcDestroy(npcs.Npc12897Data.alias, 3)
    self:NpcDestroy(npcs.Npc12895Data.alias, 3)
end

function Quest13014:OnSubStart1301406(arg1)
    print("OnSubStart1301406")
    self:CreateQuestNpcWithTriggerBlack("Q1301406", 1301406, npcs.Npc1056Data.id, 0, 15, 2)
end

function Quest13014:OnSubFinish1301406(arg1)
    print("OnSubFinish1301406")
    self:NpcDestroyWithBlackscreen(20165, npcs.Npc1056Data.alias)
end

function Quest13014:OnSubStart1301407(arg1)
    print("OnSubStart1301407")
end

function Quest13014:OnSubFinish1301407(arg1)
    print("OnSubFinish1301407")
end

function Quest13014:OnSubStart1301408(arg1)
    print("OnSubStart1301408")
    self:NpcCreate(arg1, npcs.Npc12843Data.id, 0)
    self:CreateQuestNpcWithTriggerBlack("Q1301408", 1301408, npcs.Npc1056Data.id, 0, 30, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12845Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12844Data.id, 0)
    self:NpcCreate(arg1, npcs.Npc13054Data.id, 0)
end

function Quest13014:OnSubFinish1301408(arg1)
    print("OnSubFinish1301408")
    self:NpcDestroyWithBlackscreen(20165, npcs.Npc1056Data.alias)
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(1286, function(arg1)
            actorUtils.FinishQuestID(false, 1301430)
        end)
    end)
end

function Quest13014:OnSubStart1301409(arg1)
    print("OnSubStart1301409")
    actorMgr:CreateActorWithPos("Q13014TriggerDreamAPre", "Actor/Gadget/Q13014TriggerDreamAPre", 70900002, 0, {x = -562.834, y = 22.6, z = 190.889}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20165)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12843Data.alias)
    questNpcActor:SitOnChair(0)
    local v = self:GetQuestNpcActor(npcs.Npc12845Data.alias)
    v:SitOnChair(0)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12844Data.alias)
    questNpcActor2:SitOnChair(0)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
    questNpcActor2:DisableInteeHeadCtrl(true)
end

function Quest13014:OnSubFinish1301409(arg1)
    print("OnSubFinish1301409")
end

function Quest13014:OnSubStart1301430(arg1)
    print("OnSubStart1301430")
end

function Quest13014:OnSubFinish1301430(arg1)
    print("OnSubFinish1301430")
end

function Quest13014:OnSubStart1301425(arg1)
    print("OnSubStart1301425")
    self:ActorDestroy("Q13014TriggerDreamAPre")
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12844Data.alias)
    questNpcActor:SitOnChair(0)
    local v = self:GetQuestNpcActor(npcs.Npc12845Data.alias)
    v:SitOnChair(0)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc12843Data.alias)
    questNpcActor2:SitOnChair(0)
    self:CallDelay(0.2, function(arg1)
        arg1:RequestInteraction(npcs.Npc12843Data.alias)
    end)

    questNpcActor2:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest13014:OnSubFinish1301425(arg1)
    print("OnSubFinish1301425")
end

function Quest13014:OnSubStart1301428(arg1)
    print("OnSubStart1301428")
    self:GetQuestNpcActor(npcs.Npc12843Data.alias):SitOnChair(0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12845Data.alias)
    questNpcActor:SitOnChair(0)
    local v = self:GetQuestNpcActor(npcs.Npc12844Data.alias)
    v:SitOnChair(0)
    questNpcActor:DisableInteeHeadCtrl(true)
    v:DisableInteeHeadCtrl(true)
end

function Quest13014:OnSubFinish1301428(arg1)
    print("OnSubFinish1301428")
    self:NpcDestroy(npcs.Npc13054Data.alias, 20165)
end

function Quest13014:OnSubStart1301420(arg1)
    print("OnSubStart1301420")
    self:CreateQuestNpcWithTriggerBlack("Q1301420", 1301420, npcs.Npc1056Data.id, 0, 35, 2)
end

function Quest13014:OnSubFinish1301420(arg1)
    print("OnSubFinish1301420")
    self:NpcDestroyWithBlackscreen(20165, npcs.Npc1056Data.alias)
    self:NpcDestroy(npcs.Npc12845Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12844Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12843Data.alias, 20165)
end

function Quest13014:OnSubStart1301410(arg1)
    print("OnSubStart1301410")
end

function Quest13014:OnSubFinish1301410(arg1)
    print("OnSubFinish1301410")
end

function Quest13014:OnSubStart1301411(arg1)
    print("OnSubStart1301411")
    self:NpcCreate(arg1, npcs.Npc12840Data.id, 0)
    self:CreateQuestNpcWithTriggerBlack("Q1301411", 1301411, npcs.Npc1056Data.id, 0, 30, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12846Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12847Data.id, 0)
end

function Quest13014:OnSubFinish1301411(arg1)
    print("OnSubFinish1301411")
    self:NpcDestroyWithBlackscreen(20165, npcs.Npc1056Data.alias)
end

function Quest13014:OnSubStart1301412(arg1)
    print("OnSubStart1301412")
    actorMgr:CreateActorWithPos("Q13014TriggerDreamB", "Actor/Gadget/Q13014TriggerDreamB", 70900002, 0, {x = 554.628, y = 56.119, z = 778.49}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20165)
end

function Quest13014:OnSubFinish1301412(arg1)
    print("OnSubFinish1301412")
    self:CallDelay(2, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithIdDreamFamily)
    end)
end

function Quest13014:OnSubStart1301429(arg1)
    print("OnSubStart1301429")
end

function Quest13014:OnSubFinish1301429(arg1)
    print("OnSubFinish1301429")
end

function Quest13014:OnSubStart1301421(arg1)
    print("OnSubStart1301421")
    self:CreateQuestNpcWithTriggerBlack("Q1301421", 1301421, npcs.Npc1056Data.id, 0, 35, 2)
end

function Quest13014:OnSubFinish1301421(arg1)
    print("OnSubFinish1301421")
    self:NpcDestroyWithBlackscreen(20165, npcs.Npc1056Data.alias)
    self:NpcDestroy(npcs.Npc12846Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12847Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12840Data.alias, 20165)
end

function Quest13014:OnSubStart1301413(arg1)
    print("OnSubStart1301413")
end

function Quest13014:OnSubFinish1301413(arg1)
    print("OnSubFinish1301413")
end

function Quest13014:OnSubStart1301422(arg1)
    print("OnSubStart1301422")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12840Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12848Data.id, 0)
    self:CreateQuestNpcWithTriggerBlack("Q1301422", 1301422, npcs.Npc1056Data.id, 0, 40, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12846Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12847Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12850Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12849Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12853Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12963Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12964Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12851Data.id, 0)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12852Data.id, 0)
end

function Quest13014:OnSubFinish1301422(arg1)
    print("OnSubFinish1301422")
    self:NpcDestroyWithBlackscreen(20165, npcs.Npc1056Data.alias)
end

function Quest13014:OnSubStart1301414(arg1)
    print("OnSubStart1301414")
    self:GetQuestNpcActor(npcs.Npc12849Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12853Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12963Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12964Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12851Data.alias):DisableInteeHeadCtrl(true)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc12852Data.alias)
    questNpcActor:DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12850Data.alias):DisableInteeHeadCtrl(true)
    self:GetQuestNpcActor(npcs.Npc12848Data.alias):DisableInteeHeadCtrl(true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest13014:OnSubFinish1301414(arg1)
    print("OnSubFinish1301414")
end

function Quest13014:OnSubStart1301426(arg1)
    print("OnSubStart1301426")
    self:RequestInteraction(npcs.Npc12848Data.alias)
end

function Quest13014:OnSubFinish1301426(arg1)
    print("OnSubFinish1301426")
    self:NpcDestroy(npcs.Npc12848Data.alias, 20165)
end

function Quest13014:OnSubStart1301415(arg1)
    print("OnSubStart1301415")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc12963Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12850Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12846Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12853Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12849Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12840Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12847Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12851Data.id, 0)
        arg1_2:NpcCreate(arg1, npcs.Npc12964Data.id, 0)
        arg1_2:GetQuestNpcActor(npcs.Npc12847Data.alias):DoFreeStyle(5030, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12846Data.alias):DoFreeStyle(1060, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12840Data.alias):DoFreeStyle(1240, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12850Data.alias):DoFreeStyle(4190, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12849Data.alias):DoFreeStyle(1240, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12853Data.alias):DoFreeStyle(1070, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12963Data.alias):DoFreeStyle(1240, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12964Data.alias):DoFreeStyle(4180, true, nil, true, true, false, true)
        arg1_2:GetQuestNpcActor(npcs.Npc12851Data.alias):DoFreeStyle(1240, true, nil, true, true, false, true)
        arg1_2:CallDelay(1.5, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithIdDungeonFight)
        end)
    end)
end

function Quest13014:OnSubFinish1301415(arg1)
    print("OnSubFinish1301415")
    self:NpcDestroy(npcs.Npc12840Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12846Data.alias, 20165)
    self:NpcDestroyWithBlackscreen(20165, npcs.Npc12847Data.alias)
    self:NpcDestroy(npcs.Npc12850Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12849Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12853Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12963Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12964Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12851Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12852Data.alias, 20165)
    self:NpcDestroy(npcs.Npc12848Data.alias, 20165)
end

function Quest13014:OnSubStart1301416(arg1)
    print("OnSubStart1301416")
    self:ClearNarratorTask()
    self:StopNarrator()
    self:ShowBlackScreenWithDialogText(0.5, 3, 0.5, function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 2.5, function(arg1)
            arg1:PlayCutsceneIndex(1301416, function(arg1)
                actorUtils.FinishQuestID(false, 1301416)
            end, nil, nil, true)
        end)
    end, nil, nil, 0, false, true)
end

function Quest13014:OnSubFinish1301416(arg1)
    print("OnSubFinish1301416")
end

function Quest13014:OnSubStart1301417(arg1)
    print("OnSubStart1301417")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc12848Data.id, 0)
    self:GetQuestNpcActor(npcs.Npc12848Data.alias):DoFreeStyle(4120, true, nil, true, true, true, false)
end

function Quest13014:OnSubFinish1301417(arg1)
    print("OnSubFinish1301417")
end

function Quest13014:OnSubStart1301418(arg1)
    print("OnSubStart1301418")
    actorMgr:CreateActorWithPos("Q13014TriggerDreamCEnd", "Actor/Gadget/Q13014TriggerDreamCEnd", 70900002, 0, {x = -560.253, y = 49.483, z = 803.353}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 20165)
    self:GetQuestNpcActor(npcs.Npc12848Data.alias):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest13014:OnSubFinish1301418(arg1)
    print("OnSubFinish1301418")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3)
    end)
end

function Quest13014:OnSubStart1301419(arg1)
    print("OnSubStart1301419")
end

function Quest13014:OnSubFinish1301419(arg1)
    print("OnSubFinish1301419")
    self:NpcDestroy(npcs.Npc12842Data.alias, 3)
    self:NpcDestroy(npcs.Npc12848Data.alias, 20165)
end

return Quest13014
